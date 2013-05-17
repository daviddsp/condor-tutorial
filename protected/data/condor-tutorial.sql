--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-05-16 23:37:30 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 181 (class 3079 OID 11644)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1984 (class 0 OID 0)
-- Dependencies: 181
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 166 (class 1259 OID 20602)
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
-- TOC entry 1985 (class 0 OID 0)
-- Dependencies: 166
-- Name: COLUMN contenidos.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 1986 (class 0 OID 0)
-- Dependencies: 166
-- Name: COLUMN contenidos.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 1987 (class 0 OID 0)
-- Dependencies: 166
-- Name: COLUMN contenidos.descrip_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN contenidos.descrip_contenidos IS 'Descripción de los contenidos';


--
-- TOC entry 165 (class 1259 OID 20600)
-- Dependencies: 5 166
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
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 165
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenidos_descrip_contenidos_seq OWNED BY contenidos.descrip_contenidos;


--
-- TOC entry 164 (class 1259 OID 20598)
-- Dependencies: 5 166
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
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 164
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenidos_id_contenidos_seq OWNED BY contenidos.id_contenidos;


--
-- TOC entry 168 (class 1259 OID 20613)
-- Dependencies: 5
-- Name: ejemplos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejemplos (
    id_ejemplos integer NOT NULL,
    nb_ejemplos character(100) NOT NULL,
    cont_ejercicios text NOT NULL,
    id_contenidos integer NOT NULL
);


ALTER TABLE public.ejemplos OWNER TO postgres;

--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.id_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_ejemplos IS 'ID de los ejemplos';


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.nb_ejemplos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.nb_ejemplos IS 'Nombre de los ejemplos';


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.cont_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 168
-- Name: COLUMN ejemplos.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejemplos.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 161 (class 1259 OID 20592)
-- Dependencies: 5
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
-- TOC entry 167 (class 1259 OID 20611)
-- Dependencies: 168 5
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
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 167
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejemplos_id_ejemplos_seq OWNED BY ejemplos.id_ejemplos;


--
-- TOC entry 170 (class 1259 OID 20626)
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
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.id_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_ejercicios IS 'ID de los ejercicios';


--
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.nb_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.nb_ejercicios IS 'Nombre de los ejercicios';


--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.des_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.des_ejercicios IS 'Descripción de los ejercicios';


--
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.cont_ejercicios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.cont_ejercicios IS 'Contenido de los ejercicios';


--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 170
-- Name: COLUMN ejercicios.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN ejercicios.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 169 (class 1259 OID 20624)
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
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 169
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejercicios_id_ejercicios_seq OWNED BY ejercicios.id_ejercicios;


--
-- TOC entry 172 (class 1259 OID 20639)
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
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fuentes.id_fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.id_fuente_referencias IS 'If fuente bibliografica';


--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fuentes.fuente_referencias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.fuente_referencias IS 'Fuente  referencias';


--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 172
-- Name: COLUMN fuentes.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fuentes.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 171 (class 1259 OID 20637)
-- Dependencies: 172 5
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
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 171
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fuentes_id_fuente_referencias_seq OWNED BY fuentes.id_fuente_referencias;


--
-- TOC entry 174 (class 1259 OID 20652)
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
-- TOC entry 2005 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN lecciones.id_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_lecciones IS 'ID de las lecciones';


--
-- TOC entry 2006 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN lecciones.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.id_temas IS 'ID de los temas';


--
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 174
-- Name: COLUMN lecciones.nb_lecciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN lecciones.nb_lecciones IS 'Nombre de las lecciones';


--
-- TOC entry 173 (class 1259 OID 20650)
-- Dependencies: 5 174
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
-- TOC entry 2008 (class 0 OID 0)
-- Dependencies: 173
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lecciones_id_lecciones_seq OWNED BY lecciones.id_lecciones;


--
-- TOC entry 176 (class 1259 OID 20662)
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
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN multimedia.id_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.id_multimedia IS 'id del archivo multimedia';


--
-- TOC entry 2010 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN multimedia.url_multimedia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.url_multimedia IS 'URL del archivo ';


--
-- TOC entry 2011 (class 0 OID 0)
-- Dependencies: 176
-- Name: COLUMN multimedia.id_contenidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN multimedia.id_contenidos IS 'ID de los contenidos';


--
-- TOC entry 175 (class 1259 OID 20660)
-- Dependencies: 5 176
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
-- TOC entry 2012 (class 0 OID 0)
-- Dependencies: 175
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE multimedia_id_multimedia_seq OWNED BY multimedia.id_multimedia;


--
-- TOC entry 178 (class 1259 OID 20675)
-- Dependencies: 5
-- Name: temas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temas (
    id_temas integer NOT NULL,
    nb_temas character(100) NOT NULL,
    descrip_temas text NOT NULL
);


ALTER TABLE public.temas OWNER TO postgres;

--
-- TOC entry 2013 (class 0 OID 0)
-- Dependencies: 178
-- Name: COLUMN temas.id_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.id_temas IS 'ID de los temas';


--
-- TOC entry 2014 (class 0 OID 0)
-- Dependencies: 178
-- Name: COLUMN temas.nb_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.nb_temas IS 'Nombre de los temas';


--
-- TOC entry 2015 (class 0 OID 0)
-- Dependencies: 178
-- Name: COLUMN temas.descrip_temas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN temas.descrip_temas IS 'Descripción de los temas';


--
-- TOC entry 177 (class 1259 OID 20673)
-- Dependencies: 5 178
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
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 177
-- Name: temas_id_temas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE temas_id_temas_seq OWNED BY temas.id_temas;


--
-- TOC entry 180 (class 1259 OID 20688)
-- Dependencies: 1916 5
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
-- TOC entry 179 (class 1259 OID 20686)
-- Dependencies: 5 180
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
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 162 (class 1259 OID 20594)
-- Dependencies: 5
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
-- TOC entry 163 (class 1259 OID 20596)
-- Dependencies: 5
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
-- TOC entry 1907 (class 2604 OID 20605)
-- Dependencies: 166 164 166
-- Name: id_contenidos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos ALTER COLUMN id_contenidos SET DEFAULT nextval('contenidos_id_contenidos_seq'::regclass);


--
-- TOC entry 1908 (class 2604 OID 20606)
-- Dependencies: 165 166 166
-- Name: descrip_contenidos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos ALTER COLUMN descrip_contenidos SET DEFAULT nextval('contenidos_descrip_contenidos_seq'::regclass);


--
-- TOC entry 1909 (class 2604 OID 20616)
-- Dependencies: 168 167 168
-- Name: id_ejemplos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos ALTER COLUMN id_ejemplos SET DEFAULT nextval('ejemplos_id_ejemplos_seq'::regclass);


--
-- TOC entry 1910 (class 2604 OID 20629)
-- Dependencies: 169 170 170
-- Name: id_ejercicios; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios ALTER COLUMN id_ejercicios SET DEFAULT nextval('ejercicios_id_ejercicios_seq'::regclass);


--
-- TOC entry 1911 (class 2604 OID 20642)
-- Dependencies: 172 171 172
-- Name: id_fuente_referencias; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes ALTER COLUMN id_fuente_referencias SET DEFAULT nextval('fuentes_id_fuente_referencias_seq'::regclass);


--
-- TOC entry 1912 (class 2604 OID 20655)
-- Dependencies: 174 173 174
-- Name: id_lecciones; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lecciones ALTER COLUMN id_lecciones SET DEFAULT nextval('lecciones_id_lecciones_seq'::regclass);


--
-- TOC entry 1913 (class 2604 OID 20665)
-- Dependencies: 175 176 176
-- Name: id_multimedia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY multimedia ALTER COLUMN id_multimedia SET DEFAULT nextval('multimedia_id_multimedia_seq'::regclass);


--
-- TOC entry 1914 (class 2604 OID 20678)
-- Dependencies: 177 178 178
-- Name: id_temas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temas ALTER COLUMN id_temas SET DEFAULT nextval('temas_id_temas_seq'::regclass);


--
-- TOC entry 1915 (class 2604 OID 20691)
-- Dependencies: 180 179 180
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 1962 (class 0 OID 20602)
-- Dependencies: 166 1977
-- Data for Name: contenidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenidos (id_contenidos, id_lecciones, descrip_contenidos) FROM stdin;
\.


--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 165
-- Name: contenidos_descrip_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenidos_descrip_contenidos_seq', 1, false);


--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 164
-- Name: contenidos_id_contenidos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenidos_id_contenidos_seq', 1, false);


--
-- TOC entry 1964 (class 0 OID 20613)
-- Dependencies: 168 1977
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejemplos (id_ejemplos, nb_ejemplos, cont_ejercicios, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 161
-- Name: ejemplos_cont_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_cont_ejercicios_seq', 1, false);


--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 167
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 1966 (class 0 OID 20626)
-- Dependencies: 170 1977
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejercicios (id_ejercicios, nb_ejercicios, des_ejercicios, cont_ejercicios, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 169
-- Name: ejercicios_id_ejercicios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_ejercicios_seq', 1, false);


--
-- TOC entry 1968 (class 0 OID 20639)
-- Dependencies: 172 1977
-- Data for Name: fuentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fuentes (id_fuente_referencias, fuente_referencias, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 171
-- Name: fuentes_id_fuente_referencias_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fuentes_id_fuente_referencias_seq', 1, false);


--
-- TOC entry 1970 (class 0 OID 20652)
-- Dependencies: 174 1977
-- Data for Name: lecciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lecciones (id_lecciones, id_temas, nb_lecciones) FROM stdin;
1	1	asjdhajsdhaksdhjkashdkjahsdkjahsdas                                                                 
\.


--
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 173
-- Name: lecciones_id_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lecciones_id_lecciones_seq', 1, true);


--
-- TOC entry 1972 (class 0 OID 20662)
-- Dependencies: 176 1977
-- Data for Name: multimedia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY multimedia (id_multimedia, url_multimedia, id_contenidos) FROM stdin;
\.


--
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 175
-- Name: multimedia_id_multimedia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('multimedia_id_multimedia_seq', 1, false);


--
-- TOC entry 1974 (class 0 OID 20675)
-- Dependencies: 178 1977
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temas (id_temas, nb_temas, descrip_temas) FROM stdin;
1	Historia de PostgreSQL y su Evolución                                                               	En este tema veremos lo relacionado a la historia de PostgreSQL y las diferentes\r\nevoluciones que a medida del tiempo ha sufrido. Mostraremos porqué es uno de los\r\nmejores manejadores de bases de datos.
2	haskjhskd                                                                                           	asdjkahsjdhaskjhasdhaskdhakjdhkjsdhkjsdhkajsdhkjashdkjashdjkahsdjkahsdkjahsd\r\nasjdksdhjkahsjdkahsdkahsdihjakdhajdhajsdhasdhjkhdk
\.


--
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 177
-- Name: temas_id_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_temas_seq', 2, true);


--
-- TOC entry 1976 (class 0 OID 20688)
-- Dependencies: 180 1977
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id_usuario, nombre, apellido, email, username, password, perfil, created_at, last_login) FROM stdin;
2	admin	admin	admin	admin	082697fb3f65588da2d4d5960bdf15df	admin	2013-05-08 21:43:15.488881	2013-05-16 01:00:45.479979
\.


--
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 179
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 2, true);


--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 162
-- Name: usuario_lecciones_id_usuarios_lecciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_lecciones_id_usuarios_lecciones_seq', 1, false);


--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 163
-- Name: usuario_temas_id_usuarios_temas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_temas_id_usuarios_temas_seq', 1, false);


--
-- TOC entry 1918 (class 2606 OID 20610)
-- Dependencies: 166 166 1978
-- Name: contenidos_descrip_contenidos_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_descrip_contenidos_key UNIQUE (descrip_contenidos);


--
-- TOC entry 1920 (class 2606 OID 20608)
-- Dependencies: 166 166 1978
-- Name: contenidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_pkey PRIMARY KEY (id_contenidos);


--
-- TOC entry 1922 (class 2606 OID 20623)
-- Dependencies: 168 168 1978
-- Name: ejemplos_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1924 (class 2606 OID 20621)
-- Dependencies: 168 168 1978
-- Name: ejemplos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_pkey PRIMARY KEY (id_ejemplos);


--
-- TOC entry 1926 (class 2606 OID 20636)
-- Dependencies: 170 170 1978
-- Name: ejercicios_cont_ejercicios_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_cont_ejercicios_key UNIQUE (cont_ejercicios);


--
-- TOC entry 1928 (class 2606 OID 20634)
-- Dependencies: 170 170 1978
-- Name: ejercicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicios);


--
-- TOC entry 1930 (class 2606 OID 20649)
-- Dependencies: 172 172 1978
-- Name: fuentes_fuente_referencias_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_fuente_referencias_key UNIQUE (fuente_referencias);


--
-- TOC entry 1932 (class 2606 OID 20647)
-- Dependencies: 172 172 1978
-- Name: fuentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_pkey PRIMARY KEY (id_fuente_referencias);


--
-- TOC entry 1934 (class 2606 OID 20659)
-- Dependencies: 174 174 1978
-- Name: lecciones_nb_lecciones_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_nb_lecciones_key UNIQUE (nb_lecciones);


--
-- TOC entry 1936 (class 2606 OID 20657)
-- Dependencies: 174 174 1978
-- Name: lecciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_pkey PRIMARY KEY (id_lecciones);


--
-- TOC entry 1938 (class 2606 OID 20670)
-- Dependencies: 176 176 1978
-- Name: multimedia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_pkey PRIMARY KEY (id_multimedia);


--
-- TOC entry 1940 (class 2606 OID 20672)
-- Dependencies: 176 176 1978
-- Name: multimedia_url_multimedia_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_url_multimedia_key UNIQUE (url_multimedia);


--
-- TOC entry 1942 (class 2606 OID 20685)
-- Dependencies: 178 178 1978
-- Name: temas_nb_temas_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_nb_temas_key UNIQUE (nb_temas);


--
-- TOC entry 1944 (class 2606 OID 20683)
-- Dependencies: 178 178 1978
-- Name: temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_temas);


--
-- TOC entry 1946 (class 2606 OID 20698)
-- Dependencies: 180 180 1978
-- Name: usuario_password_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_password_key UNIQUE (password);


--
-- TOC entry 1948 (class 2606 OID 20694)
-- Dependencies: 180 180 1978
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 1950 (class 2606 OID 20696)
-- Dependencies: 180 180 1978
-- Name: usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- TOC entry 1951 (class 2606 OID 20719)
-- Dependencies: 166 174 1935 1978
-- Name: contenidos_id_lecciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenidos
    ADD CONSTRAINT contenidos_id_lecciones_fkey FOREIGN KEY (id_lecciones) REFERENCES lecciones(id_lecciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1952 (class 2606 OID 20699)
-- Dependencies: 168 166 1919 1978
-- Name: ejemplos_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1953 (class 2606 OID 20704)
-- Dependencies: 170 166 1919 1978
-- Name: ejercicios_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1954 (class 2606 OID 20709)
-- Dependencies: 172 166 1919 1978
-- Name: fuentes_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes
    ADD CONSTRAINT fuentes_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1955 (class 2606 OID 20724)
-- Dependencies: 1943 178 174 1978
-- Name: lecciones_id_temas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lecciones
    ADD CONSTRAINT lecciones_id_temas_fkey FOREIGN KEY (id_temas) REFERENCES temas(id_temas) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1956 (class 2606 OID 20714)
-- Dependencies: 176 166 1919 1978
-- Name: multimedia_id_contenidos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY multimedia
    ADD CONSTRAINT multimedia_id_contenidos_fkey FOREIGN KEY (id_contenidos) REFERENCES contenidos(id_contenidos) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1983 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-05-16 23:37:31 VET

--
-- PostgreSQL database dump complete
--

