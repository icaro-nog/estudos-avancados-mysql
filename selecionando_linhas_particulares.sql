use menagerie;

show tables;

select * from pet limit 200;

SELECT * FROM pet WHERE species = 'hamster' OR species = 'bird';

SELECT * FROM pet WHERE (species = 'cat' AND sex = 'm')
       OR (species = 'dog' AND sex = 'm');

-- Consulta para selecionar apenas um owner, caso haja repetição de owner       
SELECT DISTINCT owner FROM pet;

desc pet;

SELECT 
    name, species, birth
FROM
    pet
WHERE
    species = 'Leão' OR species = 'cat';