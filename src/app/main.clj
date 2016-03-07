(ns app.main
  (:gen-class)
  (:require [cljts.io :refer [write-wkt-str]]
            [clojure.java.io :as io]
            [app.etl :as etl]
            [app.schema :as schema]))

(def gml-base-dir "W:\\maastotietokanta\\kaikki\\etrs89\\gml")
(def gml-file-pattern #"[KLMNPQRSTUVWX][2-6][1-4][1-4][1-4][LR]_mtk.zip$")

(defn find-gml
  [base-dir]
  (filter #(and (.isFile %) (re-matches gml-file-pattern (.getName %)))
          (file-seq (io/file base-dir))))

(def sample-gml-file "resources/M4211L_mtk.zip")
;(def sample-gml-file "resources/M4211L-head.xml")

(defn file-to-filename [^java.io.File f]
  (.toString (.toAbsolutePath (.toPath f))))

(defn parse-all []
  (etl/store-gml-files
    (map file-to-filename (find-gml gml-base-dir))))

(defn parse-sample-features []
  (etl/store-gml-files (vector sample-gml-file)))

(defn print-sample-schema []
  (schema/print-gml-schema sample-gml-file))

(defn print-sample-features []
  (schema/print-gml-features sample-gml-file))

(defn -main [& args]
  (print-sample-schema))
