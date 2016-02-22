(ns app.xml
  (:require [clojure.zip :as zip]
            [clojure.data.xml :as c-d-xml]
            [clojure.data.zip.xml :refer [xml-> xml1-> attr attr= tag= text]]
            [clojure.java.io :as io]
            [clj-time.coerce :as c]
            [app.gml :as gml])
  (:import (org.apache.commons.io.input BOMInputStream)
           (java.util.zip ZipInputStream)))

(defn- zip-stream
  [stream file-name]
  (if (re-matches #".+\.zip" file-name)
    (let [zstream (ZipInputStream. stream)]
      (do (.getNextEntry zstream) zstream))
    stream))

(defn- file-reader
  [file-name]
  (-> file-name
      io/file
      io/input-stream
      (zip-stream file-name)
      BOMInputStream.
      io/reader))

(defn process-prop
  [element]
  (let [k (name (:tag element))
        v (first (:content element))]
    [k (cond
         (= k "alkupvm") (c/to-sql-date v)
         (= k "teksti") v
         (= k "nimi_suomi") v
         (some? v) (read-string v)
         :else nil)]))

(defn- process-props
  [z]
  (->> (zip/children z)
       ; skip sijainti
       (remove #(= :sijainti (:tag %)))
       ; skip viittaus
       (remove #(.endsWith (clojure.string/lower-case (:tag %)) "viittaus"))
       (map process-prop)
       (remove (comp nil? second))))

(defn- parse-feature
  [element]
  (let [z (zip/xml-zip element)]
    {:gid   (read-string (xml1-> z (attr :gid)))
     :type  (:tag element)
     :props (into (hash-map) (process-props z))
     :geoma (gml/parse-area z)
     :geomp (gml/parse-point z)
     :geoml (gml/parse-line z)}))

(defn- parse-properties
  [element]
  (let [z (zip/xml-zip element)]
    {:gid   (read-string (xml1-> z (attr :gid)))
     :type  (:tag element)
     :geoma (some? (xml1-> z :sijainti :Alue))
     :geomp (some? (xml1-> z :sijainti :Piste))
     :geoml (some? (xml1-> z :sijainti :Murtoviiva))
     :props (into (hash-map) (process-props z))}))

(defn- invoke-xml-parser
  "Read sequence of XML items using parser delegate stream to handler"
  [file-name handler parser]
  (with-open [rdr (file-reader file-name)]
    (dorun (->> (c-d-xml/parse rdr)
                :content
                (mapcat :content)
                (map parser)
                handler))))

(defn parse-xml-features
  [file-name handler]
  (invoke-xml-parser file-name handler parse-feature))

(defn parse-xml-properties
  [file-name handler]
  (invoke-xml-parser file-name handler parse-properties))