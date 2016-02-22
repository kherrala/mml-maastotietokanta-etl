(ns app.gml
  (:require [cljts.geom :refer [c point line-string linear-ring polygon]]
            [clojure.data.zip.xml :refer [xml-> xml1-> attr text]]))

(defn- create-coord [tuple]
  (apply c tuple))

(defn- parse-tuples
  [dims text]
  (let [coords (re-seq #"\d+\.\d+" text)]
    (partition
      dims
      ; parse float
      (map read-string coords))))

(defn- parse-coord
  [dims text]
  (create-coord
    (first
      (parse-tuples dims text))))

(defn- parse-coords
  [dims text]
  (map create-coord
       (parse-tuples dims text)))

(defn- create-point
  [dims pos]
  (point
    (parse-coord dims pos)))

(defn- create-linear-ring
  [dims posList]
  (linear-ring
    (parse-coords dims posList)))

(defn- create-area
  [dims exterior holes]
  (polygon
    (create-linear-ring dims exterior)
    (map #(create-linear-ring dims %) holes)))

(defn- create-line
  [dims posList]
  (line-string
    (parse-coords dims posList)))

(defn parse-area
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
      (create-area dims exterior holes))))

(defn parse-point
  [z]
  (let [srsDimension (xml1-> z :sijainti :Piste :pos (attr :srsDimension))
        pos (xml1-> z :sijainti :Piste :pos text)
        dims (if-not (nil? srsDimension) (read-string srsDimension))]
    (if-not
      (or (nil? dims) (nil? pos))
      (create-point dims pos))))

(defn parse-line
  [z]
  (let [srsDimension (xml1-> z :sijainti :Murtoviiva :posList (attr :srsDimension))
        posList (xml1-> z :sijainti :Murtoviiva :posList text)
        dims (if-not (nil? srsDimension) (read-string srsDimension))]
    (if-not
      (or (nil? dims) (nil? posList))
      (create-line dims posList))))