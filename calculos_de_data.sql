-- Com a data de nascimento, verificar quantos anos tem em relação a data atual
SELECT 
    name,
    birth,
    CURDATE() as data_atual,
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    pet
LIMIT 200;

-- Ordenar consulta anterior por nomes em ordem alfabética 
SELECT 
    name,
    birth,
    CURDATE(),
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    pet
ORDER BY name
LIMIT 200;

-- Ordenar consulta por idade
SELECT 
    name,
    birth,
    CURDATE(),
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    pet
ORDER BY age
LIMIT 200;

SELECT 
    *
FROM
    pet
LIMIT 200;

SELECT 
    name,
    birth,
    CURDATE(),
    TIMESTAMPDIFF(YEAR, birth, CURDATE()) AS age
FROM
    pet
WHERE
    death IS NOT NULL;
    
SELECT 
    name, birth, MONTH(birth)
FROM
    pet;

-- Adição de data, adição normal (CURDATE() + 1) não pode ser feita por conta da inconsitência de dias/ meses/ anos - * mês 12 + 1 = 13 *
SELECT 
    name, birth
FROM
    pet
WHERE
    MONTH(birth) = MONTH(DATE_ADD(CURDATE(), INTERVAL 1 MONTH));