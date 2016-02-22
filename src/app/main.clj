(ns app.main
  (:gen-class)
  (:require [cljts.io :refer [write-wkt-str]]
            [app.etl :as etl]
            [app.schema :as schema]))

(def gml-files
  (map #(str "resources/" %)
       ["M4211L_mtk.zip" "M4211R_mtk.zip" "M4212L_mtk.zip" "M4212R_mtk.zip" "M4213L_mtk.zip" "M4213R_mtk.zip"
        "M4214L_mtk.zip" "M4214R_mtk.zip" "M4221L_mtk.zip" "M4221R_mtk.zip" "M4222L_mtk.zip" "M4222R_mtk.zip"
        "M4223L_mtk.zip" "M4223R_mtk.zip" "M4224L_mtk.zip" "M4224R_mtk.zip" "M4231L_mtk.zip" "M4231R_mtk.zip"
        "M4232L_mtk.zip" "M4232R_mtk.zip" "M4233L_mtk.zip" "M4233R_mtk.zip" "M4234L_mtk.zip" "M4234R_mtk.zip"
        "M4241L_mtk.zip" "M4241R_mtk.zip" "M4242L_mtk.zip" "M4242R_mtk.zip" "M4243L_mtk.zip" "M4243R_mtk.zip"
        "M4244L_mtk.zip" "M4244R_mtk.zip"]))

(def sample-gml-file "resources/M4211R_mtk.zip")
;(def sample-gml-file "resources/M4211L-head.xml")

(defn parse-all []
  (doseq [f gml-files] (etl/store-gml-features f)))

(defn parse-sample-features []
  (etl/store-gml-features sample-gml-file))

(defn print-sample-schema []
  (schema/print-gml-schema sample-gml-file))

(defn print-sample-features []
  (schema/print-gml-features sample-gml-file))

(defn -main [& args]
  (print-sample-schema))
