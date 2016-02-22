CREATE TABLE Nakotorni(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Ilmarata(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Portti(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Vesiasteikko(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  teksti character varying,
  kohderyhma integer,
  kohdeluokka integer,
  suunta integer,
  dx integer,
  nollapisteenKorkeusarvo integer,
  sijaintitarkkuus integer,
  aineistolahde integer,
  dy integer,
  ladontatunnus integer
);

CREATE TABLE Aita(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Osoitepiste(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  kohderyhma integer,
  alkupvm date,
  kohdeluokka integer,
  suunta integer,
  kuntatunnus integer,
  nimi_suomi character varying,
  sijaintitarkkuus integer,
  aineistolahde integer,
  korkeustarkkuus integer,
  numero integer
);

CREATE TABLE Puurivi(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer,
  aluejakoonosallistuminen integer
);

CREATE TABLE Lentokenttaalue(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer,
  paallyste integer
);

CREATE TABLE Lahestymisvalo(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE VesikulkuvaylanTeksti(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  arvo integer,
  teksti character varying,
  kohderyhma integer,
  alkupvm date,
  kohdeluokka integer,
  suunta integer,
  dx integer,
  sijaintitarkkuus integer,
  aineistolahde integer,
  dy integer,
  ladontatunnus integer
);

CREATE TABLE TaajaanRakennetunAlueenReuna(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE TaajaanRakennettuAlue(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE KunnanHallintokeskus(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  teksti character varying,
  kohderyhma integer,
  alkupvm date,
  kohdeluokka integer,
  suunta integer,
  dx integer,
  kuntatunnus integer,
  sijaintitarkkuus integer,
  aineistolahde integer,
  dy integer,
  ladontatunnus integer
);

CREATE TABLE Vesitorni(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Louhos(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Putkijohto(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer,
  tasosijainti integer
);

CREATE TABLE Turvalaite(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Puisto(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Savupiippu(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE PistolaituriViiva(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer,
  aluejakoonOsallistuminen integer
);

CREATE TABLE Muistomerkki(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Taytemaa(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE PutkijohdonSymboli(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Muuntoasema(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kulkutapa integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE SavupiipunKorkeus(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  korkeusarvo integer,
  teksti character varying,
  kohderyhma integer,
  alkupvm date,
  kohdeluokka integer,
  suunta integer,
  dx integer,
  sijaintitarkkuus integer,
  aineistolahde integer,
  dy integer,
  ladontatunnus integer
);

CREATE TABLE Rautatie(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(LineString,3067),
  kohderyhma integer,
  alkupvm date,
  kohdeluokka integer,
  kulkutapa integer,
  sahkoisyys integer,
  sijaintitarkkuus integer,
  aineistolahde integer,
  korkeustarkkuus integer,
  valmiusaste integer,
  tasosijainti integer
);

CREATE TABLE TunnelinAukko(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE AidanSymboli(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Kaatopaikka(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE RautatienSymboli(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Varastoalue(
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Rautatieliikennepaikka (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Puu (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE TulvaAlue (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE MerkittavaLuontokohde (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Tervahauta (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Hietikko (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Vedenottamo (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Ankkuripaikka (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Tuulivoimala (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Point,3067),
  sijaintitarkkuus integer,
  korkeustarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  suunta integer,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE Luonnonpuisto (
  ogc_fid SERIAL primary key,
  gid integer,
  wkb_geometry geometry(Polygon,3067),
  sijaintitarkkuus integer,
  aineistolahde integer,
  alkupvm date,
  kohderyhma integer,
  kohdeluokka integer
);

CREATE TABLE allas (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE autoliikennealue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE harvalouhikko (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE hautausmaa (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE jarvi (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    keskikorkeus integer,
    saannostelynalaraja integer,
    saannostelynylaraja integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE jyrkanne (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE kaislikko (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE kallioalue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE kalliosymboli (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE kansallispuisto (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE karttasymboli (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE kellotapuli (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE kivi (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE kivikko (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE kolmiopiste (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    teksti character varying,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE korkeuskayra (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    korkeusarvo integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE korkeuskayrankorkeusarvo (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    teksti character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE korkeuskiintopiste (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    suunta integer,
    teksti character varying,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    alkupvm date,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE koski (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE kunnanhallintoraja (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE kunta (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    kohderyhma integer,
    kohdeluokka integer,
    kuntatunnus integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE lahde (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE luiska (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE luonnonsuojelualue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE maaaineksenottoalue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE maasto2kuvionreuna (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    kartografinenluokka integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE maastokuvionreuna (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    kartografinenluokka integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE maatalousmaa (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE maatuvavesialue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE masto (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE mastonkorkeus (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    teksti character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    korkeusarvo integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE matalikko (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE metsamaankasvillisuus (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE muuavoinalue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE muuntaja (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE niitty (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE paikannimi (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
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

CREATE TABLE pato (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE rakennelma (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE rakennus (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    korkeustarkkuus integer,
    kayttotarkoitus integer,
    kerrosluku integer,
    korkeusarvo integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE rakennusreunaviiva (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    kartografinenluokka integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE rauhoitettukohde (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE sahkolinja (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    tasosijainti integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE sahkolinjansymboli (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE selite (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
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

CREATE TABLE soistuma (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE suo (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    kulkukelpoisuus integer,
    metsaisyys integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE suojelualueenreunaviiva (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE suurjannitelinjanpylvas (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE syvyyskayra (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    syvyysarvo integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE syvyyskayransyvyysarvo (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    teksti character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    syvyysarvo integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE syvyyspiste (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    teksti character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    syvyysarvo integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE tienroteksti (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
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

CREATE TABLE tiesymboli (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE tieviiva (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
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
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE tulentekopaikka (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE urheilujavirkistysalue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE vedenpinnankorkeusluku (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    teksti character varying,
    suunta integer,
    dx integer,
    dy integer,
    kohderyhma integer,
    kohdeluokka integer,
    ladontatunnus integer,
    keskikorkeus integer,
    saannostelynalaraja integer,
    saannostelynylaraja integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE vesikivi (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE vesikivikko (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE vesikulkuvayla (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(LineString,3067)
);

CREATE TABLE vesikuoppa (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE viettoviiva (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE virtausnuoli (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    suunta integer,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Point,3067)
);

CREATE TABLE virtavesialue (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kohderyhma integer,
    kohdeluokka integer,
    wkb_geometry geometry(Polygon,3067)
);

CREATE TABLE virtavesikapea (
    ogc_fid SERIAL PRIMARY KEY,
    gid integer not null,
    sijaintitarkkuus integer,
    korkeustarkkuus integer,
    aineistolahde integer,
    alkupvm date,
    kulkutapa integer,
    kohderyhma integer,
    kohdeluokka integer,
    aluejakoonosallistuminen integer,
    tasosijainti integer,
    wkb_geometry geometry(LineString,3067)
);
