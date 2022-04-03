--21 vistas
--volatiles (informacion reciente)
--materializada (almacenada y para cambiar la info se tiene que actualizar)
select * from pasajero where pasajero.fecha_nacimiento > '2000-02-02'
;

select * from pasajeros_2020
;

select * from pasajero_2020_mview
;

REFRESH MATERIALIZED VIEW pasajero_2020_mview
;