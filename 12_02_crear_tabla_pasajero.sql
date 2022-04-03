CREATE TABLE public.pasajero
(
    id serial,
    nombre character varying(100),
    direccion character varying,
    fecha_nacimiento date,
    CONSTRAINT pasajero_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.pasajero
    OWNER to postgres;