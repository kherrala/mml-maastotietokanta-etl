(ns app.debug
  (:require [clojure.zip :as zip]
            [clojure.xml :as c-xml]))

(defn dbg-xml [node]
  (if (associative? node)
    (c-xml/emit-element (dissoc node :content))
    (c-xml/emit-element node))
  node)

(defn as-short-xml [node]
  (clojure.string/trim
    (with-out-str
      (if (associative? node)
        (c-xml/emit-element (dissoc node :content))
        (c-xml/emit-element node)))))

; return the zipper for more processing
(defn dz [zipper] (do (dbg-xml (zip/node zipper)) zipper))
(defn az [zipper] (as-short-xml (zip/node zipper)))
