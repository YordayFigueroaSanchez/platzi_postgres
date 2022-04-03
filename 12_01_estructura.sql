tren
	id					SERIAL
	modelo				VARCHAR
	capacidad			INT
estacion
	id					SERIAL
	nombre				VARCHAR
	direccion			VARCHAR
trayecto
	id					SERIAL
	id_estacion			INT
	id_tren				INT
	nombre				VARCHAR
viaje
	id
	id_pasajero			INT
	id_trayecto			INT
	inicio				time
	fin					time
pasajero
	id					SERIAL
	nombre				VARCHAR
	direccion			VARCHAR
	fecha_nacimiento	DATE

-- Table: public.estacion

-- DROP TABLE IF EXISTS public.estacion;

CREATE TABLE IF NOT EXISTS public.estacion
(
    id integer NOT NULL DEFAULT nextval('estacion_id_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    direccion character varying COLLATE pg_catalog."default",
    CONSTRAINT estacion_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.estacion
    OWNER to postgres;
-- Table: public.pasajero

-- DROP TABLE IF EXISTS public.pasajero;

CREATE TABLE IF NOT EXISTS public.pasajero
(
    id integer NOT NULL DEFAULT nextval('pasajero_id_seq'::regclass),
    nombre character varying(100) COLLATE pg_catalog."default",
    direccion character varying COLLATE pg_catalog."default",
    fecha_nacimiento date,
    CONSTRAINT pasajero_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pasajero
    OWNER to postgres;
-- Table: public.trayecto

-- DROP TABLE IF EXISTS public.trayecto;

CREATE TABLE IF NOT EXISTS public.trayecto
(
    id integer NOT NULL DEFAULT nextval('trayecto_id_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    id_estacion integer,
    id_tren integer,
    CONSTRAINT trayecto_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.trayecto
    OWNER to postgres;
-- Table: public.tren

-- DROP TABLE IF EXISTS public.tren;

CREATE TABLE IF NOT EXISTS public.tren
(
    id integer NOT NULL DEFAULT nextval('tren_id_seq'::regclass),
    modelo character varying COLLATE pg_catalog."default",
    capacidad integer,
    CONSTRAINT tren_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tren
    OWNER to postgres;
-- Table: public.viaje

-- DROP TABLE IF EXISTS public.viaje;

CREATE TABLE IF NOT EXISTS public.viaje
(
    id integer NOT NULL DEFAULT nextval('viaje_id_seq'::regclass),
    id_pasajero integer,
    id_trayecto integer,
    inicio date,
    fin date,
    CONSTRAINT viaje_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.viaje
    OWNER to postgres;