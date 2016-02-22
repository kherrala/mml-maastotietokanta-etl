(ns app.etl
  (:require [clojure.java.jdbc :as j]
            [cljts.io :refer [write-wkt-str]]
            [app.xml :as xml]
            [app.db :as db])
  (:import (java.sql SQLException)))

(def batch-size 200)

(defn- feature-to-row
  [feature]
  (merge {"gid"          (:gid feature)
          "wkb_geometry" (or (:geoma feature) (:geoml feature) (:geomp feature))}
         (:props feature)))

(defn- store-features
  [db group]
  (let [table (db/table-name (key group))
        rows (map feature-to-row (val group))]
    (try
      (do
        (apply (partial j/insert! db table) rows))
      (catch SQLException e
        (println (str "Could not store " table " " (.getMessage e) " " (vector rows)))))))

(defn- store-xml-handler
  [db xs]
  (dorun (->>
           xs
           ;(filter #(= (:type %) :Tieviiva))
           ;(filter db/table-exists?)
           ; in groups
           (partition-all batch-size)
           ; group by feature type
           (mapcat #(group-by :type %))
           (map (partial store-features db)))))

(defn store-gml-features
  [gml-filename]
  (let [ds (db/create-datasource)
        db {:datasource ds}]
    (try
      (xml/parse-xml-features gml-filename (partial store-xml-handler db))
      (finally (db/close-datasource ds)))))
