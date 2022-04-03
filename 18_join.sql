--join (inner)
--left (outer)
--right (outer)
--full outer

--A completo e intercepcion con B (LEFT JOIN)
--select * from TableA AA left join TableB BB on AA.key = BB.key;
--A menos intercepcion de B (LEFT JOIN B.key NULL)
--select * from TableA AA left join TableB BB on AA.key = BB.key where BB.key IS NULL;
--intercepcion  de A y B (INNER JOIN)
--select * from TableA AA inner join TableB BB on AA.key = BB.key;
--B completo e intercepcion con A (RIGHT JOIN)
--select * from TableA AA right join TableB BB on AA.key = BB.key;
--B menos intercepcion de A (RIGHT JOIN A.key NULL)
--select * from TableA AA right join TableB BB on AA.key = BB.key where AA.key IS NULL;
--todo A y B (FULL OUTER)
--select * from TableA AA full outer join TableB BB on AA.key = BB.key;
--toda A y B menos la intercepcion (FULL OUTER A.key NULL y B.key NULL)
--select * from TableA AA full outer join TableB BB on AA.key = BB.key where AA.key IS NULL OR BB.key IS NULL;

select * from pasajero
join viaje on (viaje.id_pasajero = pasajero.id)
;

--que pasajeros no tiene viaje
select pasajero.* from pasajero
left join viaje on (viaje.id_pasajero = pasajero.id)
where viaje.id IS NULL
;
