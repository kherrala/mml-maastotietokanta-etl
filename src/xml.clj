(ns app.xml
  (:require [clojure.zip :as zip]
            [clojure.data.xml :as c-d-xml]
            [clojure.data.zip.xml :refer [xml-> xml1-> attr attr= tag= text]]
            [clojure.java.io :as io]
            [app.gml :as gml])
  (:import (org.apache.commons.io.input BOMInputStream)
           (java.util.zip ZipInputStream)))

;(c-xml/declare-ns "mtk" "http://xml.nls.fi/XML/Namespace/Maastotietojarjestelma/SiirtotiedostonMalli/2011-02")

(defn- parse-area
  [z]
  (let [srsDimension (xml1-> z :sijainti :Alue :exterior
                             :LinearRing :posList (attr :srsDimension))
        dims (if-not (nil? srsDimension) (read-string srsDimension))
        exterior (xml1-> z :sijainti :Alue :exterior
                         :LinearRing :posList text)
        holes (xml-> z :sijainti :Alue :interior
                     :LinearRing :posList text)]
    (if-not
      (or (nil? dims) (nil? exterior))
      (gml/create-area dims exterior holes))))

(defn- parse-point
  [z]
  (let [srsDimension (xml1-> z :sijainti :Piste :pos (attr :srsDimension))
        pos (xml1-> z :sijainti :Piste :pos text)
        dims (if-not (nil? srsDimension) (read-string srsDimension))]
    (if-not
      (or (nil? dims) (nil? pos))
      (gml/create-point dims pos))))

; (reduce conj {} [[:a 1] [:b 2]])
(defn- parse-props
  [z]
  (into (hash-map) (->>
     (zip/children z)
     ; skip sijainti
     (filter #(not (= :sijainti (:tag %))))
     ; grab element name and content
     (map #(vector
            (name (:tag %))
            (first (:content %)))))))

(defn- element-handler
  [element]
  (let [z (zip/xml-zip element)]
    {:gid   (xml1-> z (attr :gid))
     ; Aluemainen sijainti
     :geoma (parse-area z)
     ; Pistemäinen sijainti
     :geomp (parse-point z)
     :props (parse-props z)}))

(defn- stream-handler
  [xs]
  (->>
    xs
    ; categories
    :content
    ; features
    (mapcat :content)
    ; process feature
    (take 100)
    ;(filter #(= "1278287035" (:gid (:attrs %))))
    (map element-handler)))

(defn- zip-stream
  [stream file-name]
  (if (re-matches #".+\.zip" file-name)
    (let [zstream (ZipInputStream. stream)]
      (do (.getNextEntry zstream)
          zstream))
    stream))

(defn- file-reader
  [file-name]
  (-> file-name
      io/file
      io/input-stream
      (zip-stream file-name)
      BOMInputStream.
      io/reader
      ))

(defn- invoke-handler
  [file-name handler]
  (with-open [rdr (file-reader file-name)]
    (let [root (c-d-xml/parse rdr)]
      (doall (handler root)))))

(defn parse-xml
  [file-name]
  (invoke-handler file-name stream-handler))