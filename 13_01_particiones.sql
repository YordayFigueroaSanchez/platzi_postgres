--13 particiones
--crear bitacora_viaje
-- Table: public.bitacora_viaje
-- DROP TABLE IF EXISTS public.bitacora_viaje;
--CREATE TABLE IF NOT EXISTS public.bitacora_viaje(    id integer NOT NULL DEFAULT nextval('bitacora_viaje_id_seq'::regclass),    fecha date) PARTITION BY RANGE (fecha);
--ALTER TABLE IF EXISTS public.bitacora_viaje    OWNER to postgres;

--crear particiones
--sin particiones no permite agregar info
