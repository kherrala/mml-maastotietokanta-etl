(defproject mml-maastotietokanta-etl "0.1.0-SNAPSHOT"
  :description "MML Maastotietokanta GML ETL tool"
  :url "https://github.com/kherrala/mml-maastotietokanta-etl"
  :license {:name "MIT License"
            :url ""}
  :main etl.core
  :dependencies [[org.clojure/clojure "1.7.0"]
                 [org.clojure/data.xml "0.0.8"]
                 [org.clojure/data.zip "0.1.1"]
                 [commons-io/commons-io "2.4"]
                 [com.fasterxml/aalto-xml "0.9.6"]
                 [org.codehaus.woodstox/stax2-api "4.0.0"]
                 [cljts "0.2.0"]
                 [org.postgresql/postgresql "9.4-1203-jdbc4"]
                 [com.layerware/hugsql "0.4.0"]
                 [org.clojure/tools.nrepl "0.2.10"]]
  :source-paths ["src"]
  :target-path "target/"
  :resource-paths ["resources"]
  :profiles {:dev           [:project/dev :profiles/dev]
             :repl          {:resource-paths ^:replace ["resources"]
                             :prep-tasks     ^:replace [["compile"]]}
             :profiles/dev  {}
             :project/dev   {:source-paths ["dev"]
                             :repl-options {:init-ns user}
                             :dependencies [[reloaded.repl "0.2.0"]
                                            [org.clojure/tools.namespace "0.2.11"]]
                             :env          {:port 3000}}
             })