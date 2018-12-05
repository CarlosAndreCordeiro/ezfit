﻿-- Function: verificadata_gatilho()

-- DROP FUNCTION verificadata_gatilho();

CREATE OR REPLACE FUNCTION verificadata_gatilho()
  RETURNS trigger AS
$BODY$
    BEGIN
        -- Verificar se foi o professor tem mais de 18 anos
        IF NEW.datanascimento IS NULL THEN
            RAISE EXCEPTION 'O data de nascimento nao pode ser nulo';
        END IF;
        IF NEW.cref IS NULL THEN
            RAISE EXCEPTION '% não pode ter um salário nulo', NEW.cref;
        END IF;
    
        
        IF NEW.datanascimento < 2000 THEN
            RAISE EXCEPTION '% não pode ter menos de 18 anos', NEW.datanascimento;
        END IF;
         
       
        RETURN NEW;
    END;
  
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION verificadata_gatilho()
  OWNER TO postgres;
