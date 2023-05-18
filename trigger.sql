DELIMITER $$

CREATE TRIGGER prevent_employees_day BEFORE INSERT ON employees

	FOR EACH ROW
    BEGIN
	DECLARE current_day VARCHAR(3);
    SET current_day = date_format(CURRENT_DATE, '%a'); -- pega o dia atual
    IF current_day IN ('Sat','Sun','Mon') THEN

    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Você não pode realizar alterações na tabela employees durante este dia!';
    END IF;
    END $$  

DELIMITER ;