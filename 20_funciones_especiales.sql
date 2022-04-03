--20
select greatest (23,5,6,7,89,12,89)
;

select least (23,5,6,7,89,12,89)
;

--bloque anonimo
select pasajero.nombre,pasajero.fecha_nacimiento,
case
	when pasajero.fecha_nacimiento > '1995-01-01'
	then 'mayor'	else 'menor'
end
from pasajero
where pasajero.id < 12
;