INSERT INTO public.bitacora_viaje(
	fecha)
	VALUES ('2022-03-02');
	
CREATE TABLE bitacora_viaje202202 PARTITION OF bitacora_viaje
FOR VALUES FROM ('2022-02-1') TO ('2022-02-28')
;

CREATE TABLE bitacora_viaje202203 PARTITION OF bitacora_viaje
FOR VALUES FROM ('2022-03-1') TO ('2022-03-31')
;

SELECT * from bitacora_viaje
;