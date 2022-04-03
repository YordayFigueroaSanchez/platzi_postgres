--origen
--destino
--acciones
ALTER TABLE trayecto ADD CONSTRAINT trayecto_tren_fkey FOREIGN KEY (id_tren)
        REFERENCES public.tren (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
;

ALTER TABLE IF EXISTS public.viaje
    ADD CONSTRAINT viaje_pasajero_fkey FOREIGN KEY (id_pasajero)
    REFERENCES public.pasajero (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;