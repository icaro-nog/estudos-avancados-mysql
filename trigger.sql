DELIMITER $$

CREATE OR REPLACE TRIGGER prevent_employees_day BEFORE
    INSERT or UPDATE or DELETE 
    ON employees
    FOR EACH ROW

    DECLARE
    current_day DATE := TRUNC(SYSDATE); -- pega o dia atual

    BEGIN

    IF date_format(current_day, '%a') IN ('Wed','Sun','Mon') THEN -- aplicar correções de dia??

    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Você não pode realizar alterações na tabela employees durante este dia!';
    END IF;
    END $$  

DELIMITER ;