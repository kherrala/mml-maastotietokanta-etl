CREATE TABLE allas (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE allas_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE allas_ogc_fid_seq OWNED BY allas.ogc_fid;
CREATE TABLE autoliikennealue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE autoliikennealue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE autoliikennealue_ogc_fid_seq OWNED BY autoliikennealue.ogc_fid;
CREATE TABLE harvalouhikko (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE harvalouhikko_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE harvalouhikko_ogc_fid_seq OWNED BY harvalouhikko.ogc_fid;
CREATE TABLE hautausmaa (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE hautausmaa_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE hautausmaa_ogc_fid_seq OWNED BY hautausmaa.ogc_fid;
CREATE TABLE jarvi (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    keskikorkeus integer,
    vedenpinnankorkeusluvutviittaus_href character varying[],
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE jarvi_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE jarvi_ogc_fid_seq OWNED BY jarvi.ogc_fid;
CREATE TABLE jyrkanne (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE jyrkanne_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE jyrkanne_ogc_fid_seq OWNED BY jyrkanne.ogc_fid;
CREATE TABLE kaislikko (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE kaislikko_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kaislikko_ogc_fid_seq OWNED BY kaislikko.ogc_fid;
CREATE TABLE kallioalue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE kallioalue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kallioalue_ogc_fid_seq OWNED BY kallioalue.ogc_fid;
CREATE TABLE kalliosymboli (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE kalliosymboli_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kalliosymboli_ogc_fid_seq OWNED BY kalliosymboli.ogc_fid;
CREATE TABLE kansallispuisto (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE kansallispuisto_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kansallispuisto_ogc_fid_seq OWNED BY kansallispuisto.ogc_fid;
CREATE TABLE karttasymboli (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE karttasymboli_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE karttasymboli_ogc_fid_seq OWNED BY karttasymboli.ogc_fid;
CREATE TABLE kellotapuli (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE kellotapuli_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kellotapuli_ogc_fid_seq OWNED BY kellotapuli.ogc_fid;
CREATE TABLE kivi (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE kivi_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kivi_ogc_fid_seq OWNED BY kivi.ogc_fid;
CREATE TABLE kivikko (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE kivikko_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kivikko_ogc_fid_seq OWNED BY kivikko.ogc_fid;
CREATE TABLE kolmiopiste (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    teksti double precision,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE kolmiopiste_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kolmiopiste_ogc_fid_seq OWNED BY kolmiopiste.ogc_fid;
CREATE TABLE korkeuskayra (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    korkeusarvo integer,
    korkeuskayrankorkeusarvotviittaus_href character varying[],
    viettoviivatviittaus_href character varying[],
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE korkeuskayra_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE korkeuskayra_ogc_fid_seq OWNED BY korkeuskayra.ogc_fid;
CREATE TABLE korkeuskayrankorkeusarvo (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti integer,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    korkeuskayraviittaus_href character varying,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE korkeuskayrankorkeusarvo_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE korkeuskayrankorkeusarvo_ogc_fid_seq OWNED BY korkeuskayrankorkeusarvo.ogc_fid;
CREATE TABLE korkeuskiintopiste (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    suunta integer,
    teksti double precision,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    alkupvm character varying,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE korkeuskiintopiste_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE korkeuskiintopiste_ogc_fid_seq OWNED BY korkeuskiintopiste.ogc_fid;
CREATE TABLE koski (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE koski_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE koski_ogc_fid_seq OWNED BY koski.ogc_fid;
CREATE TABLE kunnanhallintoraja (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE kunnanhallintoraja_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kunnanhallintoraja_ogc_fid_seq OWNED BY kunnanhallintoraja.ogc_fid;
CREATE TABLE kunta (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    kohderyhma integer,
    kohdeluokka integer,
    kuntatunnus integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE kunta_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE kunta_ogc_fid_seq OWNED BY kunta.ogc_fid;
CREATE TABLE lahde (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE lahde_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE lahde_ogc_fid_seq OWNED BY lahde.ogc_fid;
CREATE TABLE luiska (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE luiska_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE luiska_ogc_fid_seq OWNED BY luiska.ogc_fid;
CREATE TABLE luonnonsuojelualue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE luonnonsuojelualue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE luonnonsuojelualue_ogc_fid_seq OWNED BY luonnonsuojelualue.ogc_fid;
CREATE TABLE maaaineksenottoalue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE maaaineksenottoalue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE maaaineksenottoalue_ogc_fid_seq OWNED BY maaaineksenottoalue.ogc_fid;
CREATE TABLE maasto2kuvionreuna (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    kartografinenluokka integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE maasto2kuvionreuna_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE maasto2kuvionreuna_ogc_fid_seq OWNED BY maasto2kuvionreuna.ogc_fid;
CREATE TABLE maastokuvionreuna (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    kartografinenluokka integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE maastokuvionreuna_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE maastokuvionreuna_ogc_fid_seq OWNED BY maastokuvionreuna.ogc_fid;
CREATE TABLE maatalousmaa (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE maatalousmaa_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE maatalousmaa_ogc_fid_seq OWNED BY maatalousmaa.ogc_fid;
CREATE TABLE maatuvavesialue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE maatuvavesialue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE maatuvavesialue_ogc_fid_seq OWNED BY maatuvavesialue.ogc_fid;
CREATE TABLE masto (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    mastonkorkeusviittaus_href character varying,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE masto_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE masto_ogc_fid_seq OWNED BY masto.ogc_fid;
CREATE TABLE mastonkorkeus (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti double precision,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    mastoviittaus_href character varying,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE mastonkorkeus_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE mastonkorkeus_ogc_fid_seq OWNED BY mastonkorkeus.ogc_fid;
CREATE TABLE matalikko (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE matalikko_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE matalikko_ogc_fid_seq OWNED BY matalikko.ogc_fid;
CREATE TABLE metsamaankasvillisuus (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE metsamaankasvillisuus_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE metsamaankasvillisuus_ogc_fid_seq OWNED BY metsamaankasvillisuus.ogc_fid;
CREATE TABLE muuavoinalue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE muuavoinalue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE muuavoinalue_ogc_fid_seq OWNED BY muuavoinalue.ogc_fid;
CREATE TABLE muuntaja (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE muuntaja_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE muuntaja_ogc_fid_seq OWNED BY muuntaja.ogc_fid;
CREATE TABLE niitty (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE niitty_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE niitty_ogc_fid_seq OWNED BY niitty.ogc_fid;
CREATE TABLE paikannimi (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti character varying,
    teksti_kieli character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    versaalitieto integer,
    nrkarttanimiid integer,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE paikannimi_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE paikannimi_ogc_fid_seq OWNED BY paikannimi.ogc_fid;
CREATE TABLE pato (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE pato_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE pato_ogc_fid_seq OWNED BY pato.ogc_fid;
CREATE TABLE rakennelma (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE rakennelma_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE rakennelma_ogc_fid_seq OWNED BY rakennelma.ogc_fid;
CREATE TABLE rakennus (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    korkeustarkkuus integer,
    kayttotarkoitus integer,
    kerrosluku integer,
    korkeusarvo integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE rakennus_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE rakennus_ogc_fid_seq OWNED BY rakennus.ogc_fid;
CREATE TABLE rakennusreunaviiva (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    kartografinenluokka integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE rakennusreunaviiva_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE rakennusreunaviiva_ogc_fid_seq OWNED BY rakennusreunaviiva.ogc_fid;
CREATE TABLE rauhoitettukohde (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE rauhoitettukohde_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE rauhoitettukohde_ogc_fid_seq OWNED BY rauhoitettukohde.ogc_fid;
CREATE TABLE sahkolinja (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    tasosijainti integer,
    sahkolinjansymbolitviittaus_href character varying[],
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE sahkolinja_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE sahkolinja_ogc_fid_seq OWNED BY sahkolinja.ogc_fid;
CREATE TABLE sahkolinjansymboli (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    sahkolinjaviittaus_href character varying,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE sahkolinjansymboli_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE sahkolinjansymboli_ogc_fid_seq OWNED BY sahkolinjansymboli.ogc_fid;
CREATE TABLE selite (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti character varying,
    teksti_kieli character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE selite_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE selite_ogc_fid_seq OWNED BY selite.ogc_fid;
CREATE TABLE soistuma (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE soistuma_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE soistuma_ogc_fid_seq OWNED BY soistuma.ogc_fid;
CREATE TABLE suo (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    kulkukelpoisuus integer,
    metsaisyys integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE suo_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE suo_ogc_fid_seq OWNED BY suo.ogc_fid;
CREATE TABLE suojelualueenreunaviiva (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE suojelualueenreunaviiva_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE suojelualueenreunaviiva_ogc_fid_seq OWNED BY suojelualueenreunaviiva.ogc_fid;
CREATE TABLE suurjannitelinjanpylvas (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE suurjannitelinjanpylvas_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE suurjannitelinjanpylvas_ogc_fid_seq OWNED BY suurjannitelinjanpylvas.ogc_fid;
CREATE TABLE syvyyskayra (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    syvyysarvo integer,
    syvyyskayransyvyysarvotviittaus_href character varying[],
    viettoviivatviittaus_href character varying[],
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE syvyyskayra_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE syvyyskayra_ogc_fid_seq OWNED BY syvyyskayra.ogc_fid;
CREATE TABLE syvyyskayransyvyysarvo (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti double precision,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    syvyysarvo integer,
    syvyyskayraviittaus_href character varying,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE syvyyskayransyvyysarvo_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE syvyyskayransyvyysarvo_ogc_fid_seq OWNED BY syvyyskayransyvyysarvo.ogc_fid;
CREATE TABLE syvyyspiste (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti double precision,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    syvyysarvo integer,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE syvyyspiste_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE syvyyspiste_ogc_fid_seq OWNED BY syvyyspiste.ogc_fid;
CREATE TABLE tienroteksti (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti integer,
    teksti_kieli character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    tieviivaviittaus_href character varying,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE tienroteksti_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE tienroteksti_ogc_fid_seq OWNED BY tienroteksti.ogc_fid;
CREATE TABLE tiesymboli (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE tiesymboli_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE tiesymboli_ogc_fid_seq OWNED BY tiesymboli.ogc_fid;
CREATE TABLE tieviiva (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    tasosijainti integer,
    valmiusaste integer,
    paallyste integer,
    yksisuuntaisuus integer,
    minosoitenumerovasen integer,
    maxosoitenumerovasen integer,
    minosoitenumerooikea integer,
    maxosoitenumerooikea integer,
    nimi_suomi character varying,
    kuntatunnus integer,
    tienumero integer,
    tieosanumero integer,
    tiesymbolitviittaus_href character varying,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE tieviiva_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE tieviiva_ogc_fid_seq OWNED BY tieviiva.ogc_fid;
CREATE TABLE tulentekopaikka (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE tulentekopaikka_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE tulentekopaikka_ogc_fid_seq OWNED BY tulentekopaikka.ogc_fid;
CREATE TABLE urheilujavirkistysalue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE urheilujavirkistysalue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE urheilujavirkistysalue_ogc_fid_seq OWNED BY urheilujavirkistysalue.ogc_fid;
CREATE TABLE vedenpinnankorkeusluku (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    teksti double precision,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    keskikorkeus integer,
    wkb_geometry geometry(Point,3067)
);
CREATE SEQUENCE vedenpinnankorkeusluku_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE vedenpinnankorkeusluku_ogc_fid_seq OWNED BY vedenpinnankorkeusluku.ogc_fid;
CREATE TABLE vesikivi (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE vesikivi_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE vesikivi_ogc_fid_seq OWNED BY vesikivi.ogc_fid;
CREATE TABLE vesikivikko (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE vesikivikko_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE vesikivikko_ogc_fid_seq OWNED BY vesikivikko.ogc_fid;
CREATE TABLE vesikulkuvayla (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    vesikulkuvaylantekstiviittaus_href character varying,
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE vesikulkuvayla_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE vesikulkuvayla_ogc_fid_seq OWNED BY vesikulkuvayla.ogc_fid;
CREATE TABLE vesikuoppa (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE vesikuoppa_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE vesikuoppa_ogc_fid_seq OWNED BY vesikuoppa.ogc_fid;
CREATE TABLE viettoviiva (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    syvyyskayraviittaus_href character varying,
    korkeuskayraviittaus_href character varying,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE viettoviiva_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE viettoviiva_ogc_fid_seq OWNED BY viettoviiva.ogc_fid;
CREATE TABLE virtausnuoli (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    virtavesikapeaviittaus_href character varying,
    virtavesileveaviittaus_href character varying,
    wkb_geometry geometry(PointZ,3067)
);
CREATE SEQUENCE virtausnuoli_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE virtausnuoli_ogc_fid_seq OWNED BY virtausnuoli.ogc_fid;
CREATE TABLE virtavesialue (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kohderyhma integer,
    kohdeluokka integer,
    virtausnuoletviittaus_href character varying[],
    wkb_geometry geometry(PolygonZ,3067)
);
CREATE SEQUENCE virtavesialue_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE virtavesialue_ogc_fid_seq OWNED BY virtavesialue.ogc_fid;
CREATE TABLE virtavesikapea (
    ogc_fid integer NOT NULL,
    gid character varying,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm character varying,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    tasosijainti integer,
    virtausnuoletviittaus_href character varying[],
    wkb_geometry geometry(LineStringZ,3067)
);
CREATE SEQUENCE virtavesikapea_ogc_fid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE virtavesikapea_ogc_fid_seq OWNED BY virtavesikapea.ogc_fid;
ALTER TABLE ONLY allas ALTER COLUMN ogc_fid SET DEFAULT nextval('allas_ogc_fid_seq'::regclass);
ALTER TABLE ONLY autoliikennealue ALTER COLUMN ogc_fid SET DEFAULT nextval('autoliikennealue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY harvalouhikko ALTER COLUMN ogc_fid SET DEFAULT nextval('harvalouhikko_ogc_fid_seq'::regclass);
ALTER TABLE ONLY hautausmaa ALTER COLUMN ogc_fid SET DEFAULT nextval('hautausmaa_ogc_fid_seq'::regclass);
ALTER TABLE ONLY jarvi ALTER COLUMN ogc_fid SET DEFAULT nextval('jarvi_ogc_fid_seq'::regclass);
ALTER TABLE ONLY jyrkanne ALTER COLUMN ogc_fid SET DEFAULT nextval('jyrkanne_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kaislikko ALTER COLUMN ogc_fid SET DEFAULT nextval('kaislikko_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kallioalue ALTER COLUMN ogc_fid SET DEFAULT nextval('kallioalue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kalliosymboli ALTER COLUMN ogc_fid SET DEFAULT nextval('kalliosymboli_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kansallispuisto ALTER COLUMN ogc_fid SET DEFAULT nextval('kansallispuisto_ogc_fid_seq'::regclass);
ALTER TABLE ONLY karttasymboli ALTER COLUMN ogc_fid SET DEFAULT nextval('karttasymboli_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kellotapuli ALTER COLUMN ogc_fid SET DEFAULT nextval('kellotapuli_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kivi ALTER COLUMN ogc_fid SET DEFAULT nextval('kivi_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kivikko ALTER COLUMN ogc_fid SET DEFAULT nextval('kivikko_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kolmiopiste ALTER COLUMN ogc_fid SET DEFAULT nextval('kolmiopiste_ogc_fid_seq'::regclass);
ALTER TABLE ONLY korkeuskayra ALTER COLUMN ogc_fid SET DEFAULT nextval('korkeuskayra_ogc_fid_seq'::regclass);
ALTER TABLE ONLY korkeuskayrankorkeusarvo ALTER COLUMN ogc_fid SET DEFAULT nextval('korkeuskayrankorkeusarvo_ogc_fid_seq'::regclass);
ALTER TABLE ONLY korkeuskiintopiste ALTER COLUMN ogc_fid SET DEFAULT nextval('korkeuskiintopiste_ogc_fid_seq'::regclass);
ALTER TABLE ONLY koski ALTER COLUMN ogc_fid SET DEFAULT nextval('koski_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kunnanhallintoraja ALTER COLUMN ogc_fid SET DEFAULT nextval('kunnanhallintoraja_ogc_fid_seq'::regclass);
ALTER TABLE ONLY kunta ALTER COLUMN ogc_fid SET DEFAULT nextval('kunta_ogc_fid_seq'::regclass);
ALTER TABLE ONLY lahde ALTER COLUMN ogc_fid SET DEFAULT nextval('lahde_ogc_fid_seq'::regclass);
ALTER TABLE ONLY luiska ALTER COLUMN ogc_fid SET DEFAULT nextval('luiska_ogc_fid_seq'::regclass);
ALTER TABLE ONLY luonnonsuojelualue ALTER COLUMN ogc_fid SET DEFAULT nextval('luonnonsuojelualue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY maaaineksenottoalue ALTER COLUMN ogc_fid SET DEFAULT nextval('maaaineksenottoalue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY maasto2kuvionreuna ALTER COLUMN ogc_fid SET DEFAULT nextval('maasto2kuvionreuna_ogc_fid_seq'::regclass);
ALTER TABLE ONLY maastokuvionreuna ALTER COLUMN ogc_fid SET DEFAULT nextval('maastokuvionreuna_ogc_fid_seq'::regclass);
ALTER TABLE ONLY maatalousmaa ALTER COLUMN ogc_fid SET DEFAULT nextval('maatalousmaa_ogc_fid_seq'::regclass);
ALTER TABLE ONLY maatuvavesialue ALTER COLUMN ogc_fid SET DEFAULT nextval('maatuvavesialue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY masto ALTER COLUMN ogc_fid SET DEFAULT nextval('masto_ogc_fid_seq'::regclass);
ALTER TABLE ONLY mastonkorkeus ALTER COLUMN ogc_fid SET DEFAULT nextval('mastonkorkeus_ogc_fid_seq'::regclass);
ALTER TABLE ONLY matalikko ALTER COLUMN ogc_fid SET DEFAULT nextval('matalikko_ogc_fid_seq'::regclass);
ALTER TABLE ONLY metsamaankasvillisuus ALTER COLUMN ogc_fid SET DEFAULT nextval('metsamaankasvillisuus_ogc_fid_seq'::regclass);
ALTER TABLE ONLY muuavoinalue ALTER COLUMN ogc_fid SET DEFAULT nextval('muuavoinalue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY muuntaja ALTER COLUMN ogc_fid SET DEFAULT nextval('muuntaja_ogc_fid_seq'::regclass);
ALTER TABLE ONLY niitty ALTER COLUMN ogc_fid SET DEFAULT nextval('niitty_ogc_fid_seq'::regclass);
ALTER TABLE ONLY paikannimi ALTER COLUMN ogc_fid SET DEFAULT nextval('paikannimi_ogc_fid_seq'::regclass);
ALTER TABLE ONLY pato ALTER COLUMN ogc_fid SET DEFAULT nextval('pato_ogc_fid_seq'::regclass);
ALTER TABLE ONLY rakennelma ALTER COLUMN ogc_fid SET DEFAULT nextval('rakennelma_ogc_fid_seq'::regclass);
ALTER TABLE ONLY rakennus ALTER COLUMN ogc_fid SET DEFAULT nextval('rakennus_ogc_fid_seq'::regclass);
ALTER TABLE ONLY rakennusreunaviiva ALTER COLUMN ogc_fid SET DEFAULT nextval('rakennusreunaviiva_ogc_fid_seq'::regclass);
ALTER TABLE ONLY rauhoitettukohde ALTER COLUMN ogc_fid SET DEFAULT nextval('rauhoitettukohde_ogc_fid_seq'::regclass);
ALTER TABLE ONLY sahkolinja ALTER COLUMN ogc_fid SET DEFAULT nextval('sahkolinja_ogc_fid_seq'::regclass);
ALTER TABLE ONLY sahkolinjansymboli ALTER COLUMN ogc_fid SET DEFAULT nextval('sahkolinjansymboli_ogc_fid_seq'::regclass);
ALTER TABLE ONLY selite ALTER COLUMN ogc_fid SET DEFAULT nextval('selite_ogc_fid_seq'::regclass);
ALTER TABLE ONLY soistuma ALTER COLUMN ogc_fid SET DEFAULT nextval('soistuma_ogc_fid_seq'::regclass);
ALTER TABLE ONLY suo ALTER COLUMN ogc_fid SET DEFAULT nextval('suo_ogc_fid_seq'::regclass);
ALTER TABLE ONLY suojelualueenreunaviiva ALTER COLUMN ogc_fid SET DEFAULT nextval('suojelualueenreunaviiva_ogc_fid_seq'::regclass);
ALTER TABLE ONLY suurjannitelinjanpylvas ALTER COLUMN ogc_fid SET DEFAULT nextval('suurjannitelinjanpylvas_ogc_fid_seq'::regclass);
ALTER TABLE ONLY syvyyskayra ALTER COLUMN ogc_fid SET DEFAULT nextval('syvyyskayra_ogc_fid_seq'::regclass);
ALTER TABLE ONLY syvyyskayransyvyysarvo ALTER COLUMN ogc_fid SET DEFAULT nextval('syvyyskayransyvyysarvo_ogc_fid_seq'::regclass);
ALTER TABLE ONLY syvyyspiste ALTER COLUMN ogc_fid SET DEFAULT nextval('syvyyspiste_ogc_fid_seq'::regclass);
ALTER TABLE ONLY tienroteksti ALTER COLUMN ogc_fid SET DEFAULT nextval('tienroteksti_ogc_fid_seq'::regclass);
ALTER TABLE ONLY tiesymboli ALTER COLUMN ogc_fid SET DEFAULT nextval('tiesymboli_ogc_fid_seq'::regclass);
ALTER TABLE ONLY tieviiva ALTER COLUMN ogc_fid SET DEFAULT nextval('tieviiva_ogc_fid_seq'::regclass);
ALTER TABLE ONLY tulentekopaikka ALTER COLUMN ogc_fid SET DEFAULT nextval('tulentekopaikka_ogc_fid_seq'::regclass);
ALTER TABLE ONLY urheilujavirkistysalue ALTER COLUMN ogc_fid SET DEFAULT nextval('urheilujavirkistysalue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY vedenpinnankorkeusluku ALTER COLUMN ogc_fid SET DEFAULT nextval('vedenpinnankorkeusluku_ogc_fid_seq'::regclass);
ALTER TABLE ONLY vesikivi ALTER COLUMN ogc_fid SET DEFAULT nextval('vesikivi_ogc_fid_seq'::regclass);
ALTER TABLE ONLY vesikivikko ALTER COLUMN ogc_fid SET DEFAULT nextval('vesikivikko_ogc_fid_seq'::regclass);
ALTER TABLE ONLY vesikulkuvayla ALTER COLUMN ogc_fid SET DEFAULT nextval('vesikulkuvayla_ogc_fid_seq'::regclass);
ALTER TABLE ONLY vesikuoppa ALTER COLUMN ogc_fid SET DEFAULT nextval('vesikuoppa_ogc_fid_seq'::regclass);
ALTER TABLE ONLY viettoviiva ALTER COLUMN ogc_fid SET DEFAULT nextval('viettoviiva_ogc_fid_seq'::regclass);
ALTER TABLE ONLY virtausnuoli ALTER COLUMN ogc_fid SET DEFAULT nextval('virtausnuoli_ogc_fid_seq'::regclass);
ALTER TABLE ONLY virtavesialue ALTER COLUMN ogc_fid SET DEFAULT nextval('virtavesialue_ogc_fid_seq'::regclass);
ALTER TABLE ONLY virtavesikapea ALTER COLUMN ogc_fid SET DEFAULT nextval('virtavesikapea_ogc_fid_seq'::regclass);
ALTER TABLE ONLY allas
    ADD CONSTRAINT allas_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY autoliikennealue
    ADD CONSTRAINT autoliikennealue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY harvalouhikko
    ADD CONSTRAINT harvalouhikko_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY hautausmaa
    ADD CONSTRAINT hautausmaa_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY jarvi
    ADD CONSTRAINT jarvi_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY jyrkanne
    ADD CONSTRAINT jyrkanne_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kaislikko
    ADD CONSTRAINT kaislikko_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kallioalue
    ADD CONSTRAINT kallioalue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kalliosymboli
    ADD CONSTRAINT kalliosymboli_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kansallispuisto
    ADD CONSTRAINT kansallispuisto_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY karttasymboli
    ADD CONSTRAINT karttasymboli_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kellotapuli
    ADD CONSTRAINT kellotapuli_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kivi
    ADD CONSTRAINT kivi_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kivikko
    ADD CONSTRAINT kivikko_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kolmiopiste
    ADD CONSTRAINT kolmiopiste_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY korkeuskayra
    ADD CONSTRAINT korkeuskayra_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY korkeuskayrankorkeusarvo
    ADD CONSTRAINT korkeuskayrankorkeusarvo_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY korkeuskiintopiste
    ADD CONSTRAINT korkeuskiintopiste_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY koski
    ADD CONSTRAINT koski_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kunnanhallintoraja
    ADD CONSTRAINT kunnanhallintoraja_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY kunta
    ADD CONSTRAINT kunta_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY lahde
    ADD CONSTRAINT lahde_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY luiska
    ADD CONSTRAINT luiska_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY luonnonsuojelualue
    ADD CONSTRAINT luonnonsuojelualue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY maaaineksenottoalue
    ADD CONSTRAINT maaaineksenottoalue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY maasto2kuvionreuna
    ADD CONSTRAINT maasto2kuvionreuna_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY maastokuvionreuna
    ADD CONSTRAINT maastokuvionreuna_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY maatalousmaa
    ADD CONSTRAINT maatalousmaa_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY maatuvavesialue
    ADD CONSTRAINT maatuvavesialue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY masto
    ADD CONSTRAINT masto_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY mastonkorkeus
    ADD CONSTRAINT mastonkorkeus_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY matalikko
    ADD CONSTRAINT matalikko_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY metsamaankasvillisuus
    ADD CONSTRAINT metsamaankasvillisuus_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY muuavoinalue
    ADD CONSTRAINT muuavoinalue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY muuntaja
    ADD CONSTRAINT muuntaja_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY niitty
    ADD CONSTRAINT niitty_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY paikannimi
    ADD CONSTRAINT paikannimi_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY pato
    ADD CONSTRAINT pato_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY rakennelma
    ADD CONSTRAINT rakennelma_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY rakennus
    ADD CONSTRAINT rakennus_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY rakennusreunaviiva
    ADD CONSTRAINT rakennusreunaviiva_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY rauhoitettukohde
    ADD CONSTRAINT rauhoitettukohde_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY sahkolinja
    ADD CONSTRAINT sahkolinja_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY sahkolinjansymboli
    ADD CONSTRAINT sahkolinjansymboli_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY selite
    ADD CONSTRAINT selite_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY soistuma
    ADD CONSTRAINT soistuma_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY suo
    ADD CONSTRAINT suo_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY suojelualueenreunaviiva
    ADD CONSTRAINT suojelualueenreunaviiva_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY suurjannitelinjanpylvas
    ADD CONSTRAINT suurjannitelinjanpylvas_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY syvyyskayra
    ADD CONSTRAINT syvyyskayra_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY syvyyskayransyvyysarvo
    ADD CONSTRAINT syvyyskayransyvyysarvo_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY syvyyspiste
    ADD CONSTRAINT syvyyspiste_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY tienroteksti
    ADD CONSTRAINT tienroteksti_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY tiesymboli
    ADD CONSTRAINT tiesymboli_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY tieviiva
    ADD CONSTRAINT tieviiva_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY tulentekopaikka
    ADD CONSTRAINT tulentekopaikka_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY urheilujavirkistysalue
    ADD CONSTRAINT urheilujavirkistysalue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY vedenpinnankorkeusluku
    ADD CONSTRAINT vedenpinnankorkeusluku_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY vesikivi
    ADD CONSTRAINT vesikivi_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY vesikivikko
    ADD CONSTRAINT vesikivikko_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY vesikulkuvayla
    ADD CONSTRAINT vesikulkuvayla_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY vesikuoppa
    ADD CONSTRAINT vesikuoppa_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY viettoviiva
    ADD CONSTRAINT viettoviiva_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY virtausnuoli
    ADD CONSTRAINT virtausnuoli_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY virtavesialue
    ADD CONSTRAINT virtavesialue_pkey PRIMARY KEY (ogc_fid);
ALTER TABLE ONLY virtavesikapea
    ADD CONSTRAINT virtavesikapea_pkey PRIMARY KEY (ogc_fid);
CREATE INDEX allas_wkb_geometry_geom_idx ON allas USING gist (wkb_geometry);
CREATE INDEX autoliikennealue_wkb_geometry_geom_idx ON autoliikennealue USING gist (wkb_geometry);
CREATE INDEX harvalouhikko_wkb_geometry_geom_idx ON harvalouhikko USING gist (wkb_geometry);
CREATE INDEX hautausmaa_wkb_geometry_geom_idx ON hautausmaa USING gist (wkb_geometry);
CREATE INDEX jarvi_wkb_geometry_geom_idx ON jarvi USING gist (wkb_geometry);
CREATE INDEX jyrkanne_wkb_geometry_geom_idx ON jyrkanne USING gist (wkb_geometry);
CREATE INDEX kaislikko_wkb_geometry_geom_idx ON kaislikko USING gist (wkb_geometry);
CREATE INDEX kallioalue_wkb_geometry_geom_idx ON kallioalue USING gist (wkb_geometry);
CREATE INDEX kalliosymboli_wkb_geometry_geom_idx ON kalliosymboli USING gist (wkb_geometry);
CREATE INDEX kansallispuisto_wkb_geometry_geom_idx ON kansallispuisto USING gist (wkb_geometry);
CREATE INDEX karttasymboli_wkb_geometry_geom_idx ON karttasymboli USING gist (wkb_geometry);
CREATE INDEX kellotapuli_wkb_geometry_geom_idx ON kellotapuli USING gist (wkb_geometry);
CREATE INDEX kivi_wkb_geometry_geom_idx ON kivi USING gist (wkb_geometry);
CREATE INDEX kivikko_wkb_geometry_geom_idx ON kivikko USING gist (wkb_geometry);
CREATE INDEX kolmiopiste_wkb_geometry_geom_idx ON kolmiopiste USING gist (wkb_geometry);
CREATE INDEX korkeuskayra_wkb_geometry_geom_idx ON korkeuskayra USING gist (wkb_geometry);
CREATE INDEX korkeuskayrankorkeusarvo_wkb_geometry_geom_idx ON korkeuskayrankorkeusarvo USING gist (wkb_geometry);
CREATE INDEX korkeuskiintopiste_wkb_geometry_geom_idx ON korkeuskiintopiste USING gist (wkb_geometry);
CREATE INDEX koski_wkb_geometry_geom_idx ON koski USING gist (wkb_geometry);
CREATE INDEX kunnanhallintoraja_wkb_geometry_geom_idx ON kunnanhallintoraja USING gist (wkb_geometry);
CREATE INDEX kunta_wkb_geometry_geom_idx ON kunta USING gist (wkb_geometry);
CREATE INDEX lahde_wkb_geometry_geom_idx ON lahde USING gist (wkb_geometry);
CREATE INDEX luiska_wkb_geometry_geom_idx ON luiska USING gist (wkb_geometry);
CREATE INDEX luonnonsuojelualue_wkb_geometry_geom_idx ON luonnonsuojelualue USING gist (wkb_geometry);
CREATE INDEX maaaineksenottoalue_wkb_geometry_geom_idx ON maaaineksenottoalue USING gist (wkb_geometry);
CREATE INDEX maasto2kuvionreuna_wkb_geometry_geom_idx ON maasto2kuvionreuna USING gist (wkb_geometry);
CREATE INDEX maastokuvionreuna_wkb_geometry_geom_idx ON maastokuvionreuna USING gist (wkb_geometry);
CREATE INDEX maatalousmaa_wkb_geometry_geom_idx ON maatalousmaa USING gist (wkb_geometry);
CREATE INDEX maatuvavesialue_wkb_geometry_geom_idx ON maatuvavesialue USING gist (wkb_geometry);
CREATE INDEX masto_wkb_geometry_geom_idx ON masto USING gist (wkb_geometry);
CREATE INDEX mastonkorkeus_wkb_geometry_geom_idx ON mastonkorkeus USING gist (wkb_geometry);
CREATE INDEX matalikko_wkb_geometry_geom_idx ON matalikko USING gist (wkb_geometry);
CREATE INDEX metsamaankasvillisuus_wkb_geometry_geom_idx ON metsamaankasvillisuus USING gist (wkb_geometry);
CREATE INDEX muuavoinalue_wkb_geometry_geom_idx ON muuavoinalue USING gist (wkb_geometry);
CREATE INDEX muuntaja_wkb_geometry_geom_idx ON muuntaja USING gist (wkb_geometry);
CREATE INDEX niitty_wkb_geometry_geom_idx ON niitty USING gist (wkb_geometry);
CREATE INDEX paikannimi_wkb_geometry_geom_idx ON paikannimi USING gist (wkb_geometry);
CREATE INDEX pato_wkb_geometry_geom_idx ON pato USING gist (wkb_geometry);
CREATE INDEX rakennelma_wkb_geometry_geom_idx ON rakennelma USING gist (wkb_geometry);
CREATE INDEX rakennus_wkb_geometry_geom_idx ON rakennus USING gist (wkb_geometry);
CREATE INDEX rakennusreunaviiva_wkb_geometry_geom_idx ON rakennusreunaviiva USING gist (wkb_geometry);
CREATE INDEX rauhoitettukohde_wkb_geometry_geom_idx ON rauhoitettukohde USING gist (wkb_geometry);
CREATE INDEX sahkolinja_wkb_geometry_geom_idx ON sahkolinja USING gist (wkb_geometry);
CREATE INDEX sahkolinjansymboli_wkb_geometry_geom_idx ON sahkolinjansymboli USING gist (wkb_geometry);
CREATE INDEX selite_wkb_geometry_geom_idx ON selite USING gist (wkb_geometry);
CREATE INDEX soistuma_wkb_geometry_geom_idx ON soistuma USING gist (wkb_geometry);
CREATE INDEX suo_wkb_geometry_geom_idx ON suo USING gist (wkb_geometry);
CREATE INDEX suojelualueenreunaviiva_wkb_geometry_geom_idx ON suojelualueenreunaviiva USING gist (wkb_geometry);
CREATE INDEX suurjannitelinjanpylvas_wkb_geometry_geom_idx ON suurjannitelinjanpylvas USING gist (wkb_geometry);
CREATE INDEX syvyyskayra_wkb_geometry_geom_idx ON syvyyskayra USING gist (wkb_geometry);
CREATE INDEX syvyyskayransyvyysarvo_wkb_geometry_geom_idx ON syvyyskayransyvyysarvo USING gist (wkb_geometry);
CREATE INDEX syvyyspiste_wkb_geometry_geom_idx ON syvyyspiste USING gist (wkb_geometry);
CREATE INDEX tienroteksti_wkb_geometry_geom_idx ON tienroteksti USING gist (wkb_geometry);
CREATE INDEX tiesymboli_wkb_geometry_geom_idx ON tiesymboli USING gist (wkb_geometry);
CREATE INDEX tieviiva_wkb_geometry_geom_idx ON tieviiva USING gist (wkb_geometry);
CREATE INDEX tulentekopaikka_wkb_geometry_geom_idx ON tulentekopaikka USING gist (wkb_geometry);
CREATE INDEX urheilujavirkistysalue_wkb_geometry_geom_idx ON urheilujavirkistysalue USING gist (wkb_geometry);
CREATE INDEX vedenpinnankorkeusluku_wkb_geometry_geom_idx ON vedenpinnankorkeusluku USING gist (wkb_geometry);
CREATE INDEX vesikivi_wkb_geometry_geom_idx ON vesikivi USING gist (wkb_geometry);
CREATE INDEX vesikivikko_wkb_geometry_geom_idx ON vesikivikko USING gist (wkb_geometry);
CREATE INDEX vesikulkuvayla_wkb_geometry_geom_idx ON vesikulkuvayla USING gist (wkb_geometry);
CREATE INDEX vesikuoppa_wkb_geometry_geom_idx ON vesikuoppa USING gist (wkb_geometry);
CREATE INDEX viettoviiva_wkb_geometry_geom_idx ON viettoviiva USING gist (wkb_geometry);
CREATE INDEX virtausnuoli_wkb_geometry_geom_idx ON virtausnuoli USING gist (wkb_geometry);
CREATE INDEX virtavesialue_wkb_geometry_geom_idx ON virtavesialue USING gist (wkb_geometry);
CREATE INDEX virtavesikapea_wkb_geometry_geom_idx ON virtavesikapea USING gist (wkb_geometry);
