(ns user
  (:require [clojure.repl :refer :all]
            [cljts.io :refer [write-wkt-str]]
            [app.xml :as xml]))

;(map write-wkt-str (filter some? (map :geoma (parse-sample-xml))))

;(xml/parse-xml "resources/M4211L.xml")

(xml/parse-xml "resources/M4211L_mtk.zip")