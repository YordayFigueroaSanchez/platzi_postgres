--19
select * from estacion where estacion.id = 200
;

insert into estacion(id, nombre, direccion) values (200, 'Effertz Group', '54 Ohio Circle')
on conflict(id) do update set nombre='Effertz Group', direccion='55 Ohio Circle'
;

insert into estacion(nombre, direccion) values ('test', 'test')
returning *
;

select * from pasajero where nombre ilike 'o%'
;

