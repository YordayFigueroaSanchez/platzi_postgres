--23 trigger
CREATE OR REPLACE FUNCTION public.importantepl(
	)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare
	rec record;
	contador integer := 0;
begin
	for rec in select * from pasajero loop
		raise notice 'nombre del pasajero %', rec.nombre;
		contador := contador + 1;
	end loop;
	INSERT into conteo_pasajero (total, tiempo)
	VALUES (contador, now());
	return contador;
end
$BODY$;

ALTER FUNCTION public.importantepl()
    OWNER TO postgres;