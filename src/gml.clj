(ns app.gml
  (:require [cljts.geom :refer [c point linear-ring polygon]]))

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

(defn create-point
  [dims pos]
  (point
    (parse-coord dims pos)))

(defn create-linear-ring
  [dims posList]
  (linear-ring
    (parse-coords dims posList)))

(defn create-area
  [dims exterior holes]
  (polygon
    (create-linear-ring dims exterior)
    (map #(create-linear-ring dims %) holes)))
