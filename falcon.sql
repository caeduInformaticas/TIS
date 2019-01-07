--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.16
-- Dumped by pg_dump version 9.3.16
-- Started on 2017-06-18 16:19:49 BOT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11829)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 186 (class 1259 OID 26801)
-- Name: id_ambiente; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_ambiente
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_ambiente OWNER TO falcon;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 18321)
-- Name: ambiente; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE ambiente (
    ambiente integer DEFAULT nextval('id_ambiente'::regclass) NOT NULL,
    ubicacion character(40),
    nombre character(20),
    capacidad integer,
    descripcion character(40)
);


ALTER TABLE public.ambiente OWNER TO falcon;

--
-- TOC entry 182 (class 1259 OID 26522)
-- Name: equipamiento; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE equipamiento (
    equipamiento integer NOT NULL,
    nombre character(25),
    codigo character(30)
);


ALTER TABLE public.equipamiento OWNER TO falcon;

--
-- TOC entry 184 (class 1259 OID 26542)
-- Name: fecha; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE fecha (
    fecha integer,
    dia integer,
    mes character(15)
);


ALTER TABLE public.fecha OWNER TO falcon;

--
-- TOC entry 189 (class 1259 OID 26816)
-- Name: id_feriado; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_feriado
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_feriado OWNER TO falcon;

--
-- TOC entry 180 (class 1259 OID 18339)
-- Name: feriado; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE feriado (
    feriado integer DEFAULT nextval('id_feriado'::regclass) NOT NULL,
    fecha date,
    descripcion character(30)
);


ALTER TABLE public.feriado OWNER TO falcon;

--
-- TOC entry 183 (class 1259 OID 26539)
-- Name: gestion; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE gestion (
    gestion integer,
    semestre integer,
    inicio_gestion date,
    fin_gestion date
);


ALTER TABLE public.gestion OWNER TO falcon;

--
-- TOC entry 178 (class 1259 OID 18333)
-- Name: grupo; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE grupo (
    grupo integer,
    numero_grupo integer
);


ALTER TABLE public.grupo OWNER TO falcon;

--
-- TOC entry 185 (class 1259 OID 26774)
-- Name: id_historial; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_historial
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_historial OWNER TO falcon;

--
-- TOC entry 181 (class 1259 OID 26519)
-- Name: historial; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE historial (
    historial integer DEFAULT nextval('id_historial'::regclass) NOT NULL,
    usuario character(30),
    fecha date,
    accion character(30),
    asunto character(30),
    descripcion character(50)
);


ALTER TABLE public.historial OWNER TO falcon;

--
-- TOC entry 176 (class 1259 OID 18327)
-- Name: horario; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE horario (
    hora character(11),
    tiempo_minutos integer,
    horario character(12)
);


ALTER TABLE public.horario OWNER TO falcon;

--
-- TOC entry 188 (class 1259 OID 26813)
-- Name: id_materia; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_materia
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_materia OWNER TO falcon;

--
-- TOC entry 187 (class 1259 OID 26806)
-- Name: id_reserva; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_reserva
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_reserva OWNER TO falcon;

--
-- TOC entry 191 (class 1259 OID 27027)
-- Name: id_solicitud; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_solicitud
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_solicitud OWNER TO falcon;

--
-- TOC entry 195 (class 1259 OID 27259)
-- Name: id_solicituddocente; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_solicituddocente
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_solicituddocente OWNER TO falcon;

--
-- TOC entry 193 (class 1259 OID 27134)
-- Name: id_tolerancia; Type: SEQUENCE; Schema: public; Owner: falcon
--

CREATE SEQUENCE id_tolerancia
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.id_tolerancia OWNER TO falcon;

--
-- TOC entry 177 (class 1259 OID 18330)
-- Name: materia; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE materia (
    materia integer DEFAULT nextval('id_materia'::regclass) NOT NULL,
    nombre character(25)
);


ALTER TABLE public.materia OWNER TO falcon;

--
-- TOC entry 173 (class 1259 OID 18311)
-- Name: menu; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE menu (
    menu integer NOT NULL,
    nombre character(25),
    ruta character(50),
    opcion integer
);


ALTER TABLE public.menu OWNER TO falcon;

--
-- TOC entry 175 (class 1259 OID 18324)
-- Name: periodo; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE periodo (
    materia integer,
    horario character(5)
);


ALTER TABLE public.periodo OWNER TO falcon;

--
-- TOC entry 179 (class 1259 OID 18336)
-- Name: reserva; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE reserva (
    reserva integer DEFAULT nextval('id_reserva'::regclass) NOT NULL,
    fecha date,
    periodo character(11),
    materia integer,
    ambiente integer
);


ALTER TABLE public.reserva OWNER TO falcon;

--
-- TOC entry 172 (class 1259 OID 18175)
-- Name: rol; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE rol (
    rol integer NOT NULL,
    tipo character(20),
    menu integer
);


ALTER TABLE public.rol OWNER TO falcon;

--
-- TOC entry 190 (class 1259 OID 27024)
-- Name: solicitud; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE solicitud (
    solicitud integer DEFAULT nextval('id_solicitud'::regclass) NOT NULL,
    periodo character(11),
    descripcion character(50),
    ambiente character(25),
    fecha date,
    nombre character(20),
    paterno character(20),
    materno character(20),
    ci bigint,
    correo character(30)
);


ALTER TABLE public.solicitud OWNER TO falcon;

--
-- TOC entry 194 (class 1259 OID 27254)
-- Name: solicituddocente; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE solicituddocente (
    solicituddocente integer DEFAULT nextval('id_solicituddocente'::regclass) NOT NULL,
    sis integer,
    ci integer,
    nombre character(20),
    apaterno character(20),
    amaterno character(20),
    correo character(20),
    telefono integer,
    fecha date
);


ALTER TABLE public.solicituddocente OWNER TO falcon;

--
-- TOC entry 192 (class 1259 OID 27129)
-- Name: tolerancia; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE tolerancia (
    tolerancia integer DEFAULT nextval('id_tolerancia'::regclass) NOT NULL,
    descripcion character(30),
    hora_inicio character(20),
    hora_fin character(20),
    fecha date
);


ALTER TABLE public.tolerancia OWNER TO falcon;

--
-- TOC entry 171 (class 1259 OID 18172)
-- Name: usuario; Type: TABLE; Schema: public; Owner: falcon; Tablespace: 
--

CREATE TABLE usuario (
    ci bigint NOT NULL,
    apellido_paterno character(20),
    apellido_materno character(20),
    nombre character(20),
    codigo_sis bigint,
    rol integer,
    usuario character(25)
);


ALTER TABLE public.usuario OWNER TO falcon;

--
-- TOC entry 2122 (class 0 OID 18321)
-- Dependencies: 174
-- Data for Name: ambiente; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2130 (class 0 OID 26522)
-- Dependencies: 182
-- Data for Name: equipamiento; Type: TABLE DATA; Schema: public; Owner: falcon
--




--
-- TOC entry 2132 (class 0 OID 26542)
-- Dependencies: 184
-- Data for Name: fecha; Type: TABLE DATA; Schema: public; Owner: falcon
--




--
-- TOC entry 2128 (class 0 OID 18339)
-- Dependencies: 180
-- Data for Name: feriado; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2131 (class 0 OID 26539)
-- Dependencies: 183
-- Data for Name: gestion; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2126 (class 0 OID 18333)
-- Dependencies: 178
-- Data for Name: grupo; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2129 (class 0 OID 26519)
-- Dependencies: 181
-- Data for Name: historial; Type: TABLE DATA; Schema: public; Owner: falcon
--


--
-- TOC entry 2124 (class 0 OID 18327)
-- Dependencies: 176
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 186
-- Name: id_ambiente; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_ambiente', 9, true);


--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 189
-- Name: id_feriado; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_feriado', 13, true);


--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 185
-- Name: id_historial; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_historial', 2, true);


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 188
-- Name: id_materia; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_materia', 11, true);


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 187
-- Name: id_reserva; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_reserva', 59, true);


--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 191
-- Name: id_solicitud; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_solicitud', 18, true);


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 195
-- Name: id_solicituddocente; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_solicituddocente', 9, true);


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 193
-- Name: id_tolerancia; Type: SEQUENCE SET; Schema: public; Owner: falcon
--

SELECT pg_catalog.setval('id_tolerancia', 3, true);


--
-- TOC entry 2125 (class 0 OID 18330)
-- Dependencies: 177
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: falcon
--


--
-- TOC entry 2121 (class 0 OID 18311)
-- Dependencies: 173
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2123 (class 0 OID 18324)
-- Dependencies: 175
-- Data for Name: periodo; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2127 (class 0 OID 18336)
-- Dependencies: 179
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2120 (class 0 OID 18175)
-- Dependencies: 172
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2138 (class 0 OID 27024)
-- Dependencies: 190
-- Data for Name: solicitud; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2142 (class 0 OID 27254)
-- Dependencies: 194
-- Data for Name: solicituddocente; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 2140 (class 0 OID 27129)
-- Dependencies: 192
-- Data for Name: tolerancia; Type: TABLE DATA; Schema: public; Owner: falcon
--




--
-- TOC entry 2119 (class 0 OID 18172)
-- Dependencies: 171
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: falcon
--



--
-- TOC entry 1990 (class 2606 OID 18223)
-- Name: Rol_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY rol
    ADD CONSTRAINT "Rol_pkey" PRIMARY KEY (rol);


--
-- TOC entry 1994 (class 2606 OID 26533)
-- Name: ambiente_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY ambiente
    ADD CONSTRAINT ambiente_pkey PRIMARY KEY (ambiente);


--
-- TOC entry 2004 (class 2606 OID 26526)
-- Name: equipamiento_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY equipamiento
    ADD CONSTRAINT equipamiento_pkey PRIMARY KEY (equipamiento);


--
-- TOC entry 2000 (class 2606 OID 26819)
-- Name: feriado_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY feriado
    ADD CONSTRAINT feriado_pkey PRIMARY KEY (feriado);


--
-- TOC entry 2002 (class 2606 OID 26777)
-- Name: historial_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY historial
    ADD CONSTRAINT historial_pkey PRIMARY KEY (historial);


--
-- TOC entry 1996 (class 2606 OID 26506)
-- Name: materia_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (materia);


--
-- TOC entry 1992 (class 2606 OID 26824)
-- Name: menu_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (menu);


--
-- TOC entry 1998 (class 2606 OID 26805)
-- Name: reserva_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (reserva);


--
-- TOC entry 2008 (class 2606 OID 27258)
-- Name: solicituddocente_pk; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY solicituddocente
    ADD CONSTRAINT solicituddocente_pk PRIMARY KEY (solicituddocente);


--
-- TOC entry 2006 (class 2606 OID 27133)
-- Name: tolerancia_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY tolerancia
    ADD CONSTRAINT tolerancia_pkey PRIMARY KEY (tolerancia);


--
-- TOC entry 1988 (class 2606 OID 18305)
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: falcon; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (ci);


--
-- TOC entry 2011 (class 2606 OID 26527)
-- Name: equipamiento_equipamiento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: falcon
--

ALTER TABLE ONLY equipamiento
    ADD CONSTRAINT equipamiento_equipamiento_fkey FOREIGN KEY (equipamiento) REFERENCES equipamiento(equipamiento);


--
-- TOC entry 2010 (class 2606 OID 26514)
-- Name: periodo_materia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: falcon
--

ALTER TABLE ONLY periodo
    ADD CONSTRAINT periodo_materia_fkey FOREIGN KEY (materia) REFERENCES materia(materia);


--
-- TOC entry 2009 (class 2606 OID 18273)
-- Name: usuario_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: falcon
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_rol_fkey FOREIGN KEY (rol) REFERENCES rol(rol);


--
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-18 16:19:50 BOT

--
-- PostgreSQL database dump complete
--


INSERT INTO ambiente(ambiente, ubicacion, nombre, capacidad, descripcion) VALUES (1, 'EDIFICIO NUEVO', 'AUDITORIO', 200, 'SALA PARA EXAMENES');


INSERT INTO materia (materia, nombre) VALUES (1 ,'FISICA I');
INSERT INTO materia (materia, nombre) VALUES (2 ,'FISICAI I'); 
INSERT INTO materia (materia, nombre) VALUES (3 ,'CALCULO I'); 
INSERT INTO materia (materia, nombre) VALUES (4 ,'ALGEBRA I');                  
INSERT INTO materia (materia, nombre) VALUES (5 ,'CALCULO II'); 
INSERT INTO materia (materia, nombre) VALUES (6 ,'ALGEBRA II');
INSERT INTO materia (materia, nombre) VALUES (0 ,'OTRO');               

     

INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (1 ,'Consultar Ambiente' ,'consultar',1);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (2 ,'Registrar Gestion' ,'registrarGestion',3);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (3 ,'Registrar Usuario' ,'registrarUsuario',3);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (4 ,'Solicitud Reserva' ,'solicitudReserva',4);

INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (5 ,'Registrar Feriado' ,'registrarEvento',2);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (6 ,'Registrar Reserva' ,'registrarReserva',2);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (7 ,'Mostrar Reservas','mostrarReservas',1);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (8,'Configurar Planilla' ,'planilla',3);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (9,'Reportes' ,'reporte',2);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (10,'Calendario' ,'calendario',2);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (11,'Mostrar Solicitud' ,'mostrarSolicitud',2);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (12,'Solicitud Registro' ,'solicitudRegistro',4);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (13,'Lista solicitud' ,'listarSolicitudRegistro',2);


INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (14,'Calendario Academico' ,'calendarioAcademico',1);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (15,'Calendario Academico' ,'calendarioAcademico',2);
INSERT INTO menu (menu, nombre, ruta, opcion) VALUES (16,'Calendario Academico' ,'calendarioAcademico',4);


INSERT INTO rol (rol, tipo, menu) VALUES (1 ,'DOCENTE', 1);
INSERT INTO rol (rol, tipo, menu) VALUES (2 ,'SECRETARIA', 2);
INSERT INTO rol (rol, tipo, menu) VALUES (3 ,'ADMIN', 3);
INSERT INTO rol (rol, tipo, menu) VALUES (4 ,'OTROS', 4);



INSERT INTO gestion(gestion, semestre, inicio_gestion, fin_gestion) VALUES (1, 1, '11-06-2017', '15-09-2017');


INSERT INTO usuario (ci, apellido_paterno, apellido_materno, nombre, codigo_sis, rol, usuario) VALUES
(111111111 ,'TORREZ' , 'PEREZ' ,'ARIEL' , 221222222 ,1 ,'ARTOPE');

INSERT INTO usuario (ci, apellido_paterno, apellido_materno, nombre, codigo_sis, rol, usuario) VALUES
(222222222 ,'LOPEZ' , 'MENDEZ' ,'NORITA' , 323233333 ,2 , 'NOLOME');                   

INSERT INTO usuario (ci, apellido_paterno, apellido_materno, nombre, codigo_sis, rol, usuario) VALUES
(333333333 ,'ADMIN' , 'ADMIN' ,'ADMIN' , 32323257 s,3 , 'ADMIN');

INSERT INTO reserva(reserva, fecha, periodo, materia, ambiente) VALUES (1, '18-06-2017', '12:00-13:00', 1, 1);

INSERT INTO feriado(feriado, fecha, descripcion) VALUES (1, '21-06-2017', 'dia del padre');

INSERT INTO tolerancia(tolerancia, descripcion, hora_inicio, hora_fin, fecha) VALUES (1, 'dia de la madre', '12:00', '16:30', '15-06-2017');


INSERT INTO actividad(
            actividad, descripcion, fecha, color)
    VALUES (1, 'examen de mesa', '02-07-2017', '#fcf82a');
