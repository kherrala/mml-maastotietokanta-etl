(ns app.schema
  (:require [clojure.java.jdbc :as j]
            [clojure.pprint :as pp]
            [app.xml :as xml]
            [app.db :as db]))

(defn sql-column-type
  [k v]
  (cond
    (= (type v) Long) "integer"
    (= (type v) Integer) "integer"
    (= k "alkupvm") "date"
    (= k "teksti") "character varying"
    (= k "nimi_suomi") "character varying"
    :else "integer"))

(defn sql-geom-type
  [row]
  (cond
    (:geoma row) "geometry(Polygon,3067)"
    (:geoml row) "geometry(LineString,3067)"
    (:geomp row) "geometry(Point,3067)"
    :else "geometry(3067)"))

(defn property-to-colum
  [prop]
  (vector (key prop) (apply sql-column-type prop)))

(defn- row-to-schema
  [row]
  (let [prop-columns (map property-to-colum (:props row))
        common-columns [[:ogc_fid "SERIAL" :primary :key]
                        [:gid :integer]
                        [:wkb_geometry (sql-geom-type row)]]]
    (apply j/create-table-ddl
           (conj
             (concat common-columns prop-columns)
             (:type row)))))

(defn- prettify-schema
  [schema-sql] (-> schema-sql
                   (clojure.string/replace ");" "\n);")
                   (clojure.string/replace ", " ",\n")
                   (clojure.string/replace " (" "(\n")
                   (str ";\n")))

(defn- row-to-string
  [row]
  {:table  (:type row)
   :fields (map (juxt key (comp type val) val) (:props row))})

(defn- print-xml-handler
  [xs]
  (dorun (->>
           xs
           (filter #(not (db/table-exists? %)))
           (group-by :type)
           (map (comp row-to-string first second))
           (map pp/pprint))))

(defn- print-schema-handler
  [xs]
  (dorun (->>
           xs
           (filter #(not (db/table-exists? %)))
           (group-by :type)
           (pmap (comp prettify-schema row-to-schema first second))
           (map println))))

(defn print-gml-features
  [gml-filename]
  (xml/parse-xml-properties gml-filename print-xml-handler))

(defn print-gml-schema
  [gml-filename]
  (xml/parse-xml-properties gml-filename print-schema-handler))