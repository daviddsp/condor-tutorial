--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-05-03 00:54:13 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 183 (class 3079 OID 11644)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 183
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 165 (class 1259 OID 19653)
-- Dependencies: 5
-- Name: contenidos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenidos (
    id_contenidos integer NOT NULL,
    id_lecciones integer NOT NULL,
    descrip_contenidos integer NOT NULL
);


ALTER TABLE public.contenidos OWNER TO postgres;

--
-- TOC entry 2008 (class 0 OID 0)
-- Dependencies: 165
-- Name: COLUMN contenidos.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 165
-- Name: COLUMN contenidos.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 2010 (class 0 OID 0)
-- Dependencies: 165
-- Name: COLUMN contenidos.descrip_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.descrip_contenidos IS 'Descripción de los contenidos';


--
-- TOC entry 164 (class 1259 OID 19651)
-- Dependencies: 165 5
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenidos_descrip_contenidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contenidos_descrip_contenidos_seq OWNER TO postgres;

--
-- TOC entry 2011 (class 0 OID 0)
-- Dependencies: 164
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenidos_descrip_contenidos_seq OWNED BY contenidos.descrip_contenidos;


--
-- TOC entry 163 (class 1259 OID 19649)
-- Dependencies: 165 5
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenidos_id_contenidos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contenidos_id_contenidos_seq OWNER TO postgres;

--
-- TOC entry 2012 (class 0 OID 0)
-- Dependencies: 163
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenidos_id_contenidos_seq OWNED BY contenidos.id_contenidos;


--
-- TOC entry 168 (class 1259 OID 19666)
-- Dependencies: 5
-- Name: ejemplos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejemplos (
    id_ejemplos integer NOT NULL,
    nb_ejemplos character(100) NOT NULL,
    cont_ejercicios integer NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.ejemplos OWNER TO postgres;

--
-- TOC entry 2013 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.id_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_ejemplos IS 'ID de los ejemplos';


--
-- TOC entry 2014 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.nb_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.nb_ejemplos IS 'Nombre de los ejemplos';


--
-- TOC entry 2015 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.cont_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 167 (class 1259 OID 19664)
-- Dependencies: 168 5
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_cont_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_cont_ejercicios_seq OWNER TO postgres;

--
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 167
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejemplos_cont_ejercicios_seq OWNED BY ejemplos.cont_ejercicios;


--
-- TOC entry 166 (class 1259 OID 19662)
-- Dependencies: 5 168
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_id_ejemplos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_id_ejemplos_seq OWNER TO postgres;

--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 166
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejemplos_id_ejemplos_seq OWNED BY ejemplos.id_ejemplos;


--
-- TOC entry 170 (class 1259 OID 19677)
-- Dependencies: 5
-- Name: ejercicios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejercicios (
    id_ejercicios integer NOT NULL,
    nb_ejercicios character(100) NOT NULL,
    des_ejercicios text,
    cont_ejercicios text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.ejercicios OWNER TO postgres;

--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.id_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_ejercicios IS 'ID de los ejercicios';


--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.nb_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.nb_ejercicios IS 'Nombre de los ejercicios';


--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.des_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.des_ejercicios IS 'Descripción de los ejercicios';


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.cont_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 169 (class 1259 OID 19675)
-- Dependencies: 170 5
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejercicios_id_ejercicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejercicios_id_ejercicios_seq OWNER TO postgres;

--
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 169
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejercicios_id_ejercicios_seq OWNED BY ejercicios.id_ejercicios;


--
-- TOC entry 172 (class 1259 OID 19690)
-- Dependencies: 5
-- Name: fuentes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fuentes (
    id_fuente_referencias integer NOT NULL,
    fuente_referencias text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.fuentes OWNER TO postgres;

--
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fuentes.id_fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.id_fuente_referencias IS 'If fuente bibliografica';


--
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fuentes.fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.fuente_referencias IS 'Fuente  referencias';


--
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fuentes.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 171 (class 1259 OID 19688)
-- Dependencies: 5 172
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fuentes_id_fuente_referencias_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuentes_id_fuente_referencias_seq OWNER TO postgres;

--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 171
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fuentes_id_fuente_referencias_seq OWNED BY fuentes.id_fuente_referencias;


--
-- TOC entry 174 (class 1259 OID 19703)
-- Dependencies: 5
-- Name: lecciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lecciones (
    id_lecciones integer NOT NULL,
    id_temas integer NOT NULL,
    nb_lecciones character(100) NOT NULL
);


ALTER TABLE public.lecciones OWNER TO postgres;

--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN lecciones.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 2030 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN lecciones.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_temas IS 'ID de los temas';


--
-- TOC entry 2031 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN lecciones.nb_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.nb_lecciones IS 'Nombre de las lecciones';


--
-- TOC entry 173 (class 1259 OID 19701)
-- Dependencies: 174 5
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lecciones_id_lecciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lecciones_id_lecciones_seq OWNER TO postgres;

--
-- TOC entry 2032 (class 0 OID 0)
-- Dependencies: 173
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lecciones_id_lecciones_seq OWNED BY lecciones.id_lecciones;


--
-- TOC entry 162 (class 1259 OID 19638)
-- Dependencies: 5
-- Name: multimedia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE multimedia (
    id_multimedia integer NOT NULL,
    url_multimedia text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.multimedia OWNER TO postgres;

--
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 162
-- Name: COLUMN multimedia.id_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.id_multimedia IS 'id del archivo multimedia';


--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 162
-- Name: COLUMN multimedia.url_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.url_multimedia IS 'URL del archivo ';


--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 162
-- Name: COLUMN multimedia.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 161 (class 1259 OID 19636)
-- Dependencies: 5 162
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE multimedia_id_multimedia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multimedia_id_multimedia_seq OWNER TO postgres;

--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 161
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE multimedia_id_multimedia_seq OWNED BY multimedia.id_multimedia;


--
-- TOC entry 176 (class 1259 OID 19713)
-- Dependencies: 5
-- Name: temas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temas (
    id_temas integer NOT NULL,
    nb_temas character(100) NOT NULL,
    descrip_temas text NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.temas OWNER TO postgres;

--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN temas.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.id_temas IS 'ID de los temas';


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN temas.nb_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.nb_temas IS 'Nombre de los temas';


--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN temas.descrip_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.descrip_temas IS 'Descripción de los temas';


--
-- TOC entry 175 (class 1259 OID 19711)
-- Dependencies: 5 176
-- Name: temas_id_temas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE temas_id_temas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temas_id_temas_seq OWNER TO postgres;

--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 175
-- Name: temas_id_temas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE temas_id_temas_seq OWNED BY temas.id_temas;


--
-- TOC entry 178 (class 1259 OID 19726)
-- Dependencies: 1926 5
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    username character varying(128) NOT NULL,
    password character varying(128) NOT NULL,
    perfil character varying(10) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    last_login timestamp without time zone
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 19724)
-- Dependencies: 178 5
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 177
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 180 (class 1259 OID 19739)
-- Dependencies: 5
-- Name: usuario_lecciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_lecciones (
    id_usuarios_lecciones integer NOT NULL,
    id_lecciones integer NOT NULL,
    cant_logueo_lecciones numeric NOT NULL,
    total_logueo_lecciones numeric NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.usuario_lecciones OWNER TO postgres;

--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 180
-- Name: COLUMN usuario_lecciones.id_usuarios_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_lecciones.id_usuarios_lecciones IS 'ID usuarios lecciones';


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 180
-- Name: COLUMN usuario_lecciones.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_lecciones.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 180
-- Name: COLUMN usuario_lecciones.cant_logueo_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_lecciones.cant_logueo_lecciones IS 'Cantidad de logueos';


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 180
-- Name: COLUMN usuario_lecciones.total_logueo_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_lecciones.total_logueo_lecciones IS 'Total de logueos realizados';


--
-- TOC entry 179 (class 1259 OID 19737)
-- Dependencies: 5 180
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_lecciones_id_usuarios_lecciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_lecciones_id_usuarios_lecciones_seq OWNER TO postgres;

--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_lecciones_id_usuarios_lecciones_seq OWNED BY usuario_lecciones.id_usuarios_lecciones;


--
-- TOC entry 182 (class 1259 OID 19750)
-- Dependencies: 5
-- Name: usuario_temas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_temas (
    id_usuarios_temas integer NOT NULL,
    id_temas integer NOT NULL,
    cant_logueo_temas numeric NOT NULL,
    total_logueo_temas numeric NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.usuario_temas OWNER TO postgres;

--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN usuario_temas.id_usuarios_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_temas.id_usuarios_temas IS 'ID usuarios temas';


--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN usuario_temas.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_temas.id_temas IS 'ID de los temas';


--
-- TOC entry 2049 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN usuario_temas.cant_logueo_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_temas.cant_logueo_temas IS 'Cantidad de logueos realizados';


--
-- TOC entry 2050 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN usuario_temas.total_logueo_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_temas.total_logueo_temas IS 'total de logueos realizados';


--
-- TOC entry 181 (class 1259 OID 19748)
-- Dependencies: 5 182
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_temas_id_usuarios_temas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_temas_id_usuarios_temas_seq OWNER TO postgres;

--
-- TOC entry 2051 (class 0 OID 0)
-- Dependencies: 181
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_temas_id_usuarios_temas_seq OWNED BY usuario_temas.id_usuarios_temas;


--
-- TOC entry 1917 (class 2604 OID 19656)
-- Dependencies: 165 163 165
-- Name: id_contenidos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos ALTER COLUMN id_contenidos SET DEFAULT nextval('contenidos_id_contenidos_seq'::regclass);


--
-- TOC entry 1918 (class 2604 OID 19657)
-- Dependencies: 165 164 165
-- Name: descrip_contenidos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos ALTER COLUMN descrip_contenidos SET DEFAULT nextval('contenidos_descrip_contenidos_seq'::regclass);


--
-- TOC entry 1919 (class 2604 OID 19669)
-- Dependencies: 168 166 168
-- Name: id_ejemplos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos ALTER COLUMN id_ejemplos SET DEFAULT nextval('ejemplos_id_ejemplos_seq'::regclass);


--
-- TOC entry 1920 (class 2604 OID 19670)
-- Dependencies: 167 168 168
-- Name: cont_ejercicios; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos ALTER COLUMN cont_ejercicios SET DEFAULT nextval('ejemplos_cont_ejercicios_seq'::regclass);


--
-- TOC entry 1921 (class 2604 OID 19680)
-- Dependencies: 170 169 170
-- Name: id_ejercicios; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios ALTER COLUMN id_ejercicios SET DEFAULT nextval('ejercicios_id_ejercicios_seq'::regclass);


--
-- TOC entry 1922 (class 2604 OID 19693)
-- Dependencies: 172 171 172
-- Name: id_fuente_referencias; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes ALTER COLUMN id_fuente_referencias SET DEFAULT nextval('fuentes_id_fuente_referencias_seq'::regclass);


--
-- TOC entry 1923 (class 2604 OID 19706)
-- Dependencies: 173 174 174
-- Name: id_lecciones; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lecciones ALTER COLUMN id_lecciones SET DEFAULT nextval('lecciones_id_lecciones_seq'::regclass);


--
-- TOC entry 1916 (class 2604 OID 19641)
-- Dependencies: 162 161 162
-- Name: id_multimedia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY multimedia ALTER COLUMN id_multimedia SET DEFAULT nextval('multimedia_id_multimedia_seq'::regclass);


--
-- TOC entry 1924 (class 2604 OID 19716)
-- Dependencies: 175 176 176
-- Name: id_temas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temas ALTER COLUMN id_temas SET DEFAULT nextval('temas_id_temas_seq'::regclass);


--
-- TOC entry 1925 (class 2604 OID 19729)
-- Dependencies: 178 177 178
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 1927 (class 2604 OID 19742)
-- Dependencies: 179 180 180
-- Name: id_usuarios_lecciones; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_lecciones ALTER COLUMN id_usuarios_lecciones SET DEFAULT nextval('usuario_lecciones_id_usuarios_lecciones_seq'::regclass);


--
-- TOC entry 1928 (class 2604 OID 19753)
-- Dependencies: 182 181 182
-- Name: id_usuarios_temas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_temas ALTER COLUMN id_usuarios_temas SET DEFAULT nextval('usuario_temas_id_usuarios_temas_seq'::regclass);


--
-- TOC entry 1982 (class 0 OID 19653)
-- Dependencies: 165 2000
-- Data for Name: contenidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenidos (id_contenidos, id_lecciones, descrip_contenidos) FROM stdin;
\.


--
-- TOC entry 2052 (class 0 OID 0)
-- Dependencies: 164
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenidos_descrip_contenidos_seq', 1, false);


--
-- TOC entry 2053 (class 0 OID 0)
-- Dependencies: 163
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenidos_id_contenidos_seq', 1, false);


--
-- TOC entry 1985 (class 0 OID 19666)
-- Dependencies: 168 2000
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejemplos (id_ejemplos, nb_ejemplos, cont_ejercicios, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2054 (class 0 OID 0)
-- Dependencies: 167
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_cont_ejercicios_seq', 1, false);


--
-- TOC entry 2055 (class 0 OID 0)
-- Dependencies: 166
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 1987 (class 0 OID 19677)
-- Dependencies: 170 2000
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejercicios (id_ejercicios, nb_ejercicios, des_ejercicios, cont_ejercicios, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2056 (class 0 OID 0)
-- Dependencies: 169
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_ejercicios_seq', 1, false);


--
-- TOC entry 1989 (class 0 OID 19690)
-- Dependencies: 172 2000
-- Data for Name: fuentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fuentes (id_fuente_referencias, fuente_referencias, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2057 (class 0 OID 0)
-- Dependencies: 171
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fuentes_id_fuente_referencias_seq', 1, false);


--
-- TOC entry 1991 (class 0 OID 19703)
-- Dependencies: 174 2000
-- Data for Name: lecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lecciones (id_lecciones, id_temas, nb_lecciones) FROM stdin;
\.


--
-- TOC entry 2058 (class 0 OID 0)
-- Dependencies: 173
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lecciones_id_lecciones_seq', 1, false);


--
-- TOC entry 1979 (class 0 OID 19638)
-- Dependencies: 162 2000
-- Data for Name: multimedia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY multimedia (id_multimedia, url_multimedia, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 161
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('multimedia_id_multimedia_seq', 1, false);


--
-- TOC entry 1993 (class 0 OID 19713)
-- Dependencies: 176 2000
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temas (id_temas, nb_temas, descrip_temas, id_usuario) FROM stdin;
\.


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 175
-- Name: temas_id_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_temas_seq', 1, false);


--
-- TOC entry 1995 (class 0 OID 19726)
-- Dependencies: 178 2000
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id_usuario, nombre, apellido, email, username, password, perfil, created_at, last_login) FROM stdin;
1	David 	Solórzano	abdsp22@gmail.com	admin	4796d91bc9051935da82ea4ae9fb9478	admin	2013-05-02 22:46:03.369612	\N
2	Condorcuc	proyecto	pcondor@gmail.com	admincondor	c313053951da1f1aba6e0b0c21a984d9	admin	2013-05-02 22:49:13.589423	2013-05-02 22:49:31.253551
\.


--
-- TOC entry 2061 (class 0 OID 0)
-- Dependencies: 177
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 2, true);


--
-- TOC entry 1997 (class 0 OID 19739)
-- Dependencies: 180 2000
-- Data for Name: usuario_lecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario_lecciones (id_usuarios_lecciones, id_lecciones, cant_logueo_lecciones, total_logueo_lecciones, id_usuario) FROM stdin;
\.


--
-- TOC entry 2062 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_lecciones_id_usuarios_lecciones_seq', 1, false);


--
-- TOC entry 1999 (class 0 OID 19750)
-- Dependencies: 182 2000
-- Data for Name: usuario_temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario_temas (id_usuarios_temas, id_temas, cant_logueo_temas, total_logueo_temas, id_usuario) FROM stdin;
\.


--
-- TOC entry 2063 (class 0 OID 0)
-- Dependencies: 181
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_temas_id_usuarios_temas_seq', 1, false);


--
-- TOC entry 1934 (class 2606 OID 19661)
-- Dependencies: 165 165 2001
-- Name: contenidos_descrip_contenidos_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_descrip_contenidos_key UNIQUE (descrip_contenidos);


--
-- TOC entry 1936 (class 2606 OID 19659)
-- Dependencies: 165 165 2001
-- Name: contenidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_pkey PRIMARY KEY (id_contenidos);


--
-- TOC entry 1938 (class 2606 OID 19674)
-- Dependencies: 168 168 2001
-- Name: ejemplos_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1940 (class 2606 OID 19672)
-- Dependencies: 168 168 2001
-- Name: ejemplos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_pkey PRIMARY KEY (id_ejemplos);


--
-- TOC entry 1942 (class 2606 OID 19687)
-- Dependencies: 170 170 2001
-- Name: ejercicios_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1944 (class 2606 OID 19685)
-- Dependencies: 170 170 2001
-- Name: ejercicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicios);


--
-- TOC entry 1946 (class 2606 OID 19700)
-- Dependencies: 172 172 2001
-- Name: fuentes_fuente_referencias_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_fuente_referencias_key UNIQUE (fuente_referencias);


--
-- TOC entry 1948 (class 2606 OID 19698)
-- Dependencies: 172 172 2001
-- Name: fuentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_pkey PRIMARY KEY (id_fuente_referencias);


--
-- TOC entry 1950 (class 2606 OID 19710)
-- Dependencies: 174 174 2001
-- Name: lecciones_nb_lecciones_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_nb_lecciones_key UNIQUE (nb_lecciones);


--
-- TOC entry 1952 (class 2606 OID 19708)
-- Dependencies: 174 174 2001
-- Name: lecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_pkey PRIMARY KEY (id_lecciones);


--
-- TOC entry 1930 (class 2606 OID 19646)
-- Dependencies: 162 162 2001
-- Name: multimedia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_pkey PRIMARY KEY (id_multimedia);


--
-- TOC entry 1932 (class 2606 OID 19648)
-- Dependencies: 162 162 2001
-- Name: multimedia_url_multimedia_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_url_multimedia_key UNIQUE (url_multimedia);


--
-- TOC entry 1954 (class 2606 OID 19723)
-- Dependencies: 176 176 2001
-- Name: temas_nb_temas_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_nb_temas_key UNIQUE (nb_temas);


--
-- TOC entry 1956 (class 2606 OID 19721)
-- Dependencies: 176 176 2001
-- Name: temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_temas);


--
-- TOC entry 1964 (class 2606 OID 19747)
-- Dependencies: 180 180 2001
-- Name: usuario_lecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_lecciones
    ADD CONSTRAINT usuario_lecciones_pkey PRIMARY KEY (id_usuarios_lecciones);


--
-- TOC entry 1958 (class 2606 OID 19736)
-- Dependencies: 178 178 2001
-- Name: usuario_password_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_password_key UNIQUE (password);


--
-- TOC entry 1960 (class 2606 OID 19732)
-- Dependencies: 178 178 2001
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 1966 (class 2606 OID 19758)
-- Dependencies: 182 182 2001
-- Name: usuario_temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_temas
    ADD CONSTRAINT usuario_temas_pkey PRIMARY KEY (id_usuarios_temas);


--
-- TOC entry 1962 (class 2606 OID 19734)
-- Dependencies: 178 178 2001
-- Name: usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- TOC entry 1968 (class 2606 OID 19779)
-- Dependencies: 1951 174 165 2001
-- Name: contenidos_id_lecciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_lecciones_fkey FOREIGN KEY (id_lecciones) REFERENCES lecciones(id_lecciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1969 (class 2606 OID 19764)
-- Dependencies: 168 165 1935 2001
-- Name: ejemplos_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1970 (class 2606 OID 19769)
-- Dependencies: 165 1935 170 2001
-- Name: ejercicios_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1971 (class 2606 OID 19774)
-- Dependencies: 165 172 1935 2001
-- Name: fuentes_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1972 (class 2606 OID 19789)
-- Dependencies: 176 1955 174 2001
-- Name: lecciones_id_temas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_id_temas_fkey FOREIGN KEY (id_temas) REFERENCES temas(id_temas) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1967 (class 2606 OID 19759)
-- Dependencies: 162 165 1935 2001
-- Name: multimedia_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1973 (class 2606 OID 19799)
-- Dependencies: 1959 176 178 2001
-- Name: temas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1974 (class 2606 OID 19784)
-- Dependencies: 174 1951 180 2001
-- Name: usuario_lecciones_id_lecciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_lecciones
    ADD CONSTRAINT usuario_lecciones_id_lecciones_fkey FOREIGN KEY (id_lecciones) REFERENCES lecciones(id_lecciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1975 (class 2606 OID 19804)
-- Dependencies: 178 1959 180 2001
-- Name: usuario_lecciones_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_lecciones
    ADD CONSTRAINT usuario_lecciones_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1976 (class 2606 OID 19794)
-- Dependencies: 182 176 1955 2001
-- Name: usuario_temas_id_temas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_temas
    ADD CONSTRAINT usuario_temas_id_temas_fkey FOREIGN KEY (id_temas) REFERENCES temas(id_temas) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1977 (class 2606 OID 19809)
-- Dependencies: 1959 178 182 2001
-- Name: usuario_temas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_temas
    ADD CONSTRAINT usuario_temas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2006 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-05-03 00:54:14 VET

--
-- PostgreSQL database dump complete
--

