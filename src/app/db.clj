(ns app.db
  (:require [hikari-cp.core :as hikari]
            [clojure.java.jdbc :as j]
            [cljts.io :refer [write-wkt-str]])
  (:import (org.postgis PGgeometryLW)
           (com.vividsolutions.jts.geom Geometry)))

(def datasource-options
  {:connection-timeout 30000
   :idle-timeout 600000
   :max-lifetime 1800000
   :minimum-idle 10
   :maximum-pool-size  10
   :adapter "postgresql"
   :username "kherrala"
   :password "kherrala"
   :database-name "kherrala"
   :server-name "192.168.1.2"
   :port-number 5432})

(def maastotietokanta-tables
  #{"aidansymboli" "aita" "allas" "ankkuripaikka" "autoliikennealue" "harvalouhikko" "hautausmaa" "hietikko" "ilmarata"
    "jarvi" "jyrkanne" "kaatopaikka" "kaislikko" "kallioalue" "kalliosymboli" "kansallispuisto" "karttasymboli"
    "kellotapuli" "kivi" "kivikko" "kolmiopiste" "korkeuskayra" "korkeuskayrankorkeusarvo" "korkeuskiintopiste" "koski"
    "kunnanhallintokeskus" "kunnanhallintoraja" "kunta" "lahde" "lahestymisvalo" "lentokenttaalue" "louhos" "luiska"
    "luonnonpuisto" "luonnonsuojelualue" "maaaineksenottoalue" "maasto2kuvionreuna" "maastokuvionreuna" "maatalousmaa"
    "maatuvavesialue" "masto" "mastonkorkeus" "matalikko" "merkittavaluontokohde" "metsamaankasvillisuus" "muistomerkki"
    "muuavoinalue" "muuntaja" "muuntoasema" "nakotorni" "niitty" "osoitepiste" "paikannimi" "pato" "pistolaituriviiva"
    "portti" "puisto" "putkijohdonsymboli" "putkijohto" "puu" "puurivi" "rakennelma" "rakennus" "rakennusreunaviiva"
    "rauhoitettukohde" "rautatie" "rautatieliikennepaikka" "rautatiensymboli" "sahkolinja" "sahkolinjansymboli"
    "savupiippu" "savupiipunkorkeus" "selite" "soistuma" "suo" "suojelualueenreunaviiva" "suurjannitelinjanpylvas"
    "syvyyskayra" "syvyyskayransyvyysarvo" "syvyyspiste" "taajaanrakennettualue" "taajaanrakennetunalueenreuna"
    "taytemaa" "tervahauta" "tienroteksti" "tiesymboli" "tieviiva" "tulentekopaikka" "tulvaalue" "tunnelinaukko"
    "turvalaite" "tuulivoimala" "urheilujavirkistysalue" "varastoalue" "vedenottamo" "vedenpinnankorkeusluku"
    "vesiasteikko" "vesikivi" "vesikivikko" "vesikulkuvayla" "vesikulkuvaylanteksti" "vesikuoppa" "vesitorni"
    "viettoviiva" "virtausnuoli" "virtavesialue" "virtavesikapea"})

(defn table-name
  [type]
  (clojure.string/lower-case (name type)))

(defn table-exists?
  [feature]
  (contains? maastotietokanta-tables (table-name (:type feature))))

(defn create-datasource
  []
  (hikari/make-datasource datasource-options))

(defn close-datasource
  [ds]
  (hikari/close-datasource ds))

(extend-protocol j/ISQLValue
  Geometry
  (sql-value [g]
    (PGgeometryLW. ^String (str "SRID=3067;" (write-wkt-str g)))))
