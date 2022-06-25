-- ************ DISTINCT ************
SELECT DISTINCT <COLUMN> FROM <TABLE>;


-- ************ ORDER BY ************
-- La columna por la cual se va a ordenar debe estar en el SELECT
-- Se puede o no indicar si el ordenamiento es ascedente:
SELECT <COLUMN> FROM <TABLE> 
ORDER BY <COLUMN>;

SELECT <COLUMN> FROM <TABLE> 
ORDER BY <COLUMN> ASC;

-- Pero si se debe indicar si el ordenamiento es descendente:
SELECT <COLUMN> FROM <TABLE>
ORDER BY <COLUMN> DESC;

-- En vez de colocar el nombre de la columna en el ORDER BY, se puede usar el numero de la columna (el número se asigna de acuerdo a como se coloque en el SELECT):
SELECT <COLUMN> FROM <TABLE>
ORDER BY <NUMBER>;


-- ************ BETWEEN ************
SELECT <COLUMN> FROM <TABLE>
WHERE <COLUMN> BETWEEN <VALUE1> AND <VALUE2>;


-- ************ LIKE ************
SELECT <COLUMN> FROM <TABLE>
WHERE <COLUMN> LIKE <VALUE>;

-- Esta instrucción es muy diversa, pero se puede usar para muchas cosas:
-- VALUE puede ser de la siguiente forma:
-- %VALUE: indica que el valor debe terminar con el valor indicado
-- VALUE%: indica que el valor debe comenzar con el valor indicado
-- %VALUE%: indica que el valor debe contener el valor indicado (Puede incluso estar al inicio o final)
-- _VALUE: indica que el valor debe contener el valor indicado en la posición indicada. La posición se detemerina por el número de guiones bajo + 1. El guión puede ir antes o despues del carácter
    -- En el ejemplo se explica más de esta versión ya que es un tanto compleja.


-- ************ IN ************
SELECT <COLUMN> FROM <TABLE>
WHERE <COLUMN> IN (<VALUE1>, <VALUE2>, ...);


-- ************ AND ************
SELECT <COLUMN> FROM <TABLE>
WHERE <CONDITION> AND <CONDITION>;
-- Las condiciones pueden ser tantas como querramos. Para la condición se puede utilizar los simbolos =, <, >, <=, >=, !=, LIKE, BETWEEN, IN, AND, OR, NOT


-- ************ OR ************
SELECT <COLUMN> FROM <TABLE>
WHERE <CONDITION> OR <CONDITION>;
-- Las condiciones pueden ser tantas como querramos. Para la condición se puede utilizar los simbolos =, <, >, <=, >=, !=, LIKE, BETWEEN, IN, AND, OR, NOT


-- ************ NOT ************
SELECT <COLUMN> FROM <TABLE>
WHERE NOT <CONDITION>;
-- La condicion se aplica a una columna y el valor que indiquemos.


-- ************ GROUP BY ************
SELECT <COLUMN> FROM <TABLE> 
GROUP BY <COLUMN>;
-- La columna por la cual se va a agrupar debe estar en el SELECT

-- ************ FUNCIONES DE AGREGACIÓN ************
-- ************ SUM ************
SELECT SUM(<COLUMN>) FROM <TABLE>;

-- ************ COUNT ************
SELECT COUNT(<COLUMN>) FROM <TABLE>;

-- ************ MIN ************
SELECT MIN(<COLUMN>) FROM <TABLE>;

-- ************ MAX ************
SELECT MAX(<COLUMN>) FROM <TABLE>;

-- ************ AVG ************
SELECT AVG(<COLUMN>) FROM <TABLE>;

-- ************ HAVING ************
-- La condición debe estar compuesta por SUM, COUNT, MIN, MAX o AVG. Puedeacompayarse de =, <, >, <=, >=, !=, LIKE, BETWEEN, IN, AND, OR, NOT
SELECT <COLUMN> FROM <TABLE>
HAVING <CONDITION>;
