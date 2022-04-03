--22 pl pgsql
do $$
declare
	rec record;
	contador integer := 0;
begin
	for rec in select * from pasajero loop
		raise notice 'nombre del pasajero %', rec.nombre;
		contador := contador + 1;
	end loop;
	raise notice 'cantidad de pasajero %', contador;
end
$$;

--crear funcion
create function importantePL()
returns void
as $$
declare
	rec record;
	contador integer := 0;
begin
	for rec in select * from pasajero loop
		raise notice 'nombre del pasajero %', rec.nombre;
		contador := contador + 1;
	end loop;
	raise notice 'cantidad de pasajero %', contador;
end
$$
language PLPGSQL;

--usar la funcion
select importantepl()
;

--eliminar function
DROP FUNCTION importantepl()
;
--actualizar funcion y retorna integer
create or replace function importantePL()
returns integer
as $$
declare
	rec record;
	contador integer := 0;
begin
	for rec in select * from pasajero loop
		raise notice 'nombre del pasajero %', rec.nombre;
		contador := contador + 1;
	end loop;
	raise notice 'cantidad de pasajero %', contador;
	return contador;
end
$$
language PLPGSQL;

--usar la funcion
select importantepl()
;
