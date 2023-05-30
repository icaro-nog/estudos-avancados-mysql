SELECT 1 IS NULL, 1 IS NOT NULL;

-- Essas comparações não podem ser feitas utilizando operadores 
SELECT 1 = NULL, 1 <> NULL, 1 < NULL, 1 > NULL;

-- falso, verdadeiro, falso, verdadeiro
SELECT 0 IS NULL, 0 IS NOT NULL, '' IS NULL, '' IS NOT NULL;