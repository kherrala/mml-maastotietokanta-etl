(defproject mml-maastotietokanta-etl "0.1.0-SNAPSHOT"
  :description "MML Maastotietokanta GML ETL tool"
  :url "https://github.com/kherrala/mml-maastotietokanta-etl"
  :license {:name "MIT License"
            :url  ""}
  :main app.main
  :dependencies [[org.clojure/clojure "1.7.0"]
                 [org.clojure/java.jdbc "0.4.2"]
                 [org.clojure/data.xml "0.0.8"]
                 [org.clojure/data.zip "0.1.1"]
                 [org.clojure/tools.logging "0.3.1"]
                 [org.apache.logging.log4j/log4j-core "2.5"]
                 [org.slf4j/slf4j-log4j12 "1.7.18"]
                 [commons-io/commons-io "2.4"]
                 [com.fasterxml/aalto-xml "0.9.6"]
                 [org.codehaus.woodstox/stax2-api "4.0.0"]
                 [clj-time "0.11.0"]
                 [cljts "0.2.0" :exclusions [midje]]
                 [hikari-cp "1.5.0" :exclusions [org.slf4j/slf4j-nop]]
                 [org.postgresql/postgresql "9.4-1203-jdbc4"]
                 [org.postgis/postgis-jdbc "1.3.3" :exclusions [postgresql]]
                 [org.clojure/tools.nrepl "0.2.10"]]
  :source-paths ["src"]
  :target-path "target/"
  :resource-paths ["resources"]
  :profiles {:dev {:source-paths ["dev"]
                   :repl-options {:init-ns user}}}
  :repl {:resource-paths ^:replace ["resources"]
         :prep-tasks     ^:replace [["compile"]]})
