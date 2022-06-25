SQL> -- Tenemos la tabla EMPLEADO
SQL> DESCRIBE EMPLEADO;
 Nombre                                                            �Nulo?   Tipo
 ----------------------------------------------------------------- -------- --------------------------------------------
 NIF                                                               NOT NULL VARCHAR2(9)
 FALTA                                                                      VARCHAR2(8)
 NOMBRE                                                                     VARCHAR2(10)
 COMISION                                                                   NUMBER(6,2)
 SALARIO                                                                    NUMBER(6,2)
 OFICIO                                                                     VARCHAR2(20)
 APELLIDOS                                                                  VARCHAR2(20)
 NIF_DEPENDIENTE                                                            VARCHAR2(9)

SQL> -- con los siguientes registros:
SQL> SELECT * FROM EMPLEADO;

NIF       FALTA    NOMBRE       COMISION    SALARIO OFICIO               APELLIDOS            NIF_DEPEN                 
--------- -------- ---------- ---------- ---------- -------------------- -------------------- ---------                 
10000000A 10/01/02 Jorge         1000.22    3000.11 DIRECTOR             Perez Sala                                     
20000000B 11/01/02 Javier         500.22    2000.22 GERENTE              Sala Rodriguez       10000000A                 
30000000C 11/01/02 Soledad        500.33    2000.33 ADMISTRADOR          Lopez J.             10000000A                 
40000000D 12/01/02 Sonia                    1800.44 JEFE FARMACIA        Moldes R.            20000000B                 
50000000E 12/01/02 Antonio        300.44    1800.44 JEFE LABORATORIO     Lopez A.             20000000B                 
60000000F 12/01/02 Carlos         500.55    1800.55 CONTABLE             Roa D.               30000000C                 
70000000G 13/01/02 Lola                        1000 ADMINISTRATIVO       Sanchez D.           60000000F                 
80000000L 13/01/02 Angel                       1000 ADMINISTRATIVO       Perez                60000000F                 
90000000M 12/01/02 Ramon                       1500 JEFE LIMPIEZA        Maria Casas          20000000B                 
11000000P 14/01/02 Luis                         700 HIGIENE              Sanchez D.           90000000M                 
12000000Q 14/01/02 Rosa                         700 HIGIENE              Torres A.            90000000M                 
10000000N 14/01/02 Sara              200       1000 INVESTIGADOR         Gomez A.             50000000E                 

12 filas seleccionadas.

SQL> 
SQL> -- ************ DISTINCT ************
SQL> -- Vamos a obtener todos los oficios que existen en la tabla
SQL> SELECT DISTINCT OFICIO FROM EMPLEADO;

OFICIO                                                                                                                  
--------------------                                                                                                    
ADMISTRADOR                                                                                                             
INVESTIGADOR                                                                                                            
DIRECTOR                                                                                                                
JEFE LIMPIEZA                                                                                                           
JEFE FARMACIA                                                                                                           
CONTABLE                                                                                                                
HIGIENE                                                                                                                 
GERENTE                                                                                                                 
JEFE LABORATORIO                                                                                                        
ADMINISTRATIVO                                                                                                          

10 filas seleccionadas.

SQL> 
SQL> -- ************ ORDER BY ************
SQL> -- Podemos ordenar por una columna en especifico, en este caso ser� de forma ascendente
SQL> SELECT NOMBRE, SALARIO, OFICIO FROM EMPLEADO
  2  ORDER BY NOMBRE;

NOMBRE        SALARIO OFICIO                                                                                            
---------- ---------- --------------------                                                                              
Angel            1000 ADMINISTRATIVO                                                                                    
Antonio       1800.44 JEFE LABORATORIO                                                                                  
Carlos        1800.55 CONTABLE                                                                                          
Javier        2000.22 GERENTE                                                                                           
Jorge         3000.11 DIRECTOR                                                                                          
Lola             1000 ADMINISTRATIVO                                                                                    
Luis              700 HIGIENE                                                                                           
Ramon            1500 JEFE LIMPIEZA                                                                                     
Rosa              700 HIGIENE                                                                                           
Sara             1000 INVESTIGADOR                                                                                      
Soledad       2000.33 ADMISTRADOR                                                                                       
Sonia         1800.44 JEFE FARMACIA                                                                                     

12 filas seleccionadas.

SQL> 
SQL> -- Al colocar las columnas que queremos mostrar, adquieren un numero 1(NOMBRE), 2(SALARIO) y 3(OFICIO).
SQL> -- Ahora vamos a ordenar por la columna #2 de manera descendente
SQL> SELECT NOMBRE, SALARIO, OFICIO FROM EMPLEADO
  2  ORDER BY 2 DESC;

NOMBRE        SALARIO OFICIO                                                                                            
---------- ---------- --------------------                                                                              
Jorge         3000.11 DIRECTOR                                                                                          
Soledad       2000.33 ADMISTRADOR                                                                                       
Javier        2000.22 GERENTE                                                                                           
Carlos        1800.55 CONTABLE                                                                                          
Antonio       1800.44 JEFE LABORATORIO                                                                                  
Sonia         1800.44 JEFE FARMACIA                                                                                     
Ramon            1500 JEFE LIMPIEZA                                                                                     
Sara             1000 INVESTIGADOR                                                                                      
Lola             1000 ADMINISTRATIVO                                                                                    
Angel            1000 ADMINISTRATIVO                                                                                    
Luis              700 HIGIENE                                                                                           
Rosa              700 HIGIENE                                                                                           

12 filas seleccionadas.

SQL> 
SQL> -- Es posible juntar DISTINCT y ORDER BY.
SQL> -- Vamos a obtener todos los oficios registrados y los ordenaremos de manera descendente
SQL> SELECT DISTINCT OFICIO FROM EMPLEADO
  2  ORDER BY OFICIO DESC;

OFICIO                                                                                                                  
--------------------                                                                                                    
JEFE LIMPIEZA                                                                                                           
JEFE LABORATORIO                                                                                                        
JEFE FARMACIA                                                                                                           
INVESTIGADOR                                                                                                            
HIGIENE                                                                                                                 
GERENTE                                                                                                                 
DIRECTOR                                                                                                                
CONTABLE                                                                                                                
ADMISTRADOR                                                                                                             
ADMINISTRATIVO                                                                                                          

10 filas seleccionadas.

SQL> 
SQL> -- ************ BETWEEN ************
SQL> -- Vamos a obtener el nombre, salario y oficio de los empleados que tengan un salario entre 1000 y 2000
SQL> SELECT NOMBRE, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE SALARIO BETWEEN 1000 AND 2000;

NOMBRE        SALARIO OFICIO                                                                                            
---------- ---------- --------------------                                                                              
Sonia         1800.44 JEFE FARMACIA                                                                                     
Antonio       1800.44 JEFE LABORATORIO                                                                                  
Carlos        1800.55 CONTABLE                                                                                          
Lola             1000 ADMINISTRATIVO                                                                                    
Angel            1000 ADMINISTRATIVO                                                                                    
Ramon            1500 JEFE LIMPIEZA                                                                                     
Sara             1000 INVESTIGADOR                                                                                      

7 filas seleccionadas.

SQL> -- Podemos obtener el nombre, salario y oficio de los empleados que su nombre este entre la A y la C
SQL> SELECT NOMBRE, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE NOMBRE BETWEEN 'A' AND 'C';

NOMBRE        SALARIO OFICIO                                                                                            
---------- ---------- --------------------                                                                              
Antonio       1800.44 JEFE LABORATORIO                                                                                  
Angel            1000 ADMINISTRATIVO                                                                                    

SQL> -- Es posible utilizar ORDER BY junto con BETWEEN. Obtendremos el nombre, salario y oficio de los empleados que su nombre este entre la A y la M
SQL> SELECT NOMBRE, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE SALARIO BETWEEN 'A' AND 'M'
  3  ORDER BY NOMBRE;
WHERE SALARIO BETWEEN 'A' AND 'M'
                              *
ERROR en l�nea 2:
ORA-01722: n�mero no v�lido 


SQL> 
SQL> -- ************ LIKE ************
SQL> -- Vamos a obtener el nombre, apellidos, salario y oficio de los empleados que su apellido finalice con la letra 'a'.
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE APELLIDOS LIKE '%a';

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Jorge      Perez Sala              3000.11 DIRECTOR                                                                     

SQL> -- Ahora obtendremos los mismos datos de aquellos empleados que su apellido empiece con 'P'
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE APELLIDOS LIKE 'P%';

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Jorge      Perez Sala              3000.11 DIRECTOR                                                                     
Angel      Perez                      1000 ADMINISTRATIVO                                                               

SQL> -- Podemos obtener los datos de aquellos empleados que tengan una 'e' en su apellido, dicha letra puede estar en cualquier posicion (incluso al principio o final)
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE APELLIDOS LIKE '%e%';

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Jorge      Perez Sala              3000.11 DIRECTOR                                                                     
Javier     Sala Rodriguez          2000.22 GERENTE                                                                      
Soledad    Lopez J.                2000.33 ADMISTRADOR                                                                  
Sonia      Moldes R.               1800.44 JEFE FARMACIA                                                                
Antonio    Lopez A.                1800.44 JEFE LABORATORIO                                                             
Lola       Sanchez D.                 1000 ADMINISTRATIVO                                                               
Angel      Perez                      1000 ADMINISTRATIVO                                                               
Luis       Sanchez D.                  700 HIGIENE                                                                      
Rosa       Torres A.                   700 HIGIENE                                                                      
Sara       Gomez A.                   1000 INVESTIGADOR                                                                 

10 filas seleccionadas.

SQL> -- Por ultimo, es posible ser un poco mas especifico
SQL> -- Vamos a obtener los datos de los empleados que su nombre empiece con 'J' y le sigan solo 4 caracteres, la  cantidad de caracteres la indicamos con guiones bajos
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE NOMBRE LIKE 'J____'
  3  -- Podemos agregar el simbolo de pocentaje para indicar que el nombre empiece con J y tenga 4 o mas caracteres despues
  4  SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  5  WHERE NOMBRE LIKE 'J____%'
  6  -- Un ultimo ejemplo, podemos indicar que el nombre tenga una 'a' como segundo caracter y le sigan mas caracteres
  7  SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  8  WHERE NOMBRE LIKE '_a%';
SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
*
ERROR en l�nea 4:
ORA-00933: comando SQL no terminado correctamente 


SQL> 
SQL> -- ************ IN ************
SQL> -- Para esta instruccion, el OFICIO, puede tomar los valores de DIRECTOR, GERENTE o HIGIENE, los demas son rechazados
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE OFICIO IN ('DIRECTOR', 'GERENTE', 'HIGIENE');

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Jorge      Perez Sala              3000.11 DIRECTOR                                                                     
Javier     Sala Rodriguez          2000.22 GERENTE                                                                      
Luis       Sanchez D.                  700 HIGIENE                                                                      
Rosa       Torres A.                   700 HIGIENE                                                                      

SQL> 
SQL> -- ************ AND ************
SQL> -- Obtendremos los datos de los empelados que tengan un salario mayor a 2000 y sean directores
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE SALARIO > 2000 AND OFICIO = 'DIRECTOR';

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Jorge      Perez Sala              3000.11 DIRECTOR                                                                     

SQL> 
SQL> -- ************ OR ************
SQL> -- Obtendremos los datos de los empleados que ganen mas de 2000 o sean directores
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE SALARIO > 2000 OR OFICIO = 'DIRECTOR';

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Jorge      Perez Sala              3000.11 DIRECTOR                                                                     
Javier     Sala Rodriguez          2000.22 GERENTE                                                                      
Soledad    Lopez J.                2000.33 ADMISTRADOR                                                                  

SQL> 
SQL> -- ************ NOT ************
SQL> -- Se mostraran los datos de los empleados que su oficio no sea DIRECTOR
SQL> SELECT NOMBRE, APELLIDOS, SALARIO, OFICIO FROM EMPLEADO
  2  WHERE NOT OFICIO = 'DIRECTOR';

NOMBRE     APELLIDOS               SALARIO OFICIO                                                                       
---------- -------------------- ---------- --------------------                                                         
Javier     Sala Rodriguez          2000.22 GERENTE                                                                      
Soledad    Lopez J.                2000.33 ADMISTRADOR                                                                  
Sonia      Moldes R.               1800.44 JEFE FARMACIA                                                                
Antonio    Lopez A.                1800.44 JEFE LABORATORIO                                                             
Carlos     Roa D.                  1800.55 CONTABLE                                                                     
Lola       Sanchez D.                 1000 ADMINISTRATIVO                                                               
Angel      Perez                      1000 ADMINISTRATIVO                                                               
Ramon      Maria Casas                1500 JEFE LIMPIEZA                                                                
Luis       Sanchez D.                  700 HIGIENE                                                                      
Rosa       Torres A.                   700 HIGIENE                                                                      
Sara       Gomez A.                   1000 INVESTIGADOR                                                                 

11 filas seleccionadas.

SQL> 
SQL> -- ************ FUNCIONES DE AGREGACION ************
SQL> -- Sumamos todos los salarios
SQL> SELECT SUM(SALARIO) FROM EMPLEADO;

SUM(SALARIO)                                                                                                            
------------                                                                                                            
    18302.09                                                                                                            

SQL> -- Obtenemos el promedio del salario
SQL> SELECT AVG(SALARIO) FROM EMPLEADO;

AVG(SALARIO)                                                                                                            
------------                                                                                                            
  1525.17417                                                                                                            

SQL> -- Obtenemos la cantidad de empleados que tenemos
SQL> SELECT COUNT (*) FROM EMPLEADO;

  COUNT(*)                                                                                                              
----------                                                                                                              
        12                                                                                                              

SQL> -- Obtenemos el salario m�ximo
SQL> SELECT MAX (SALARIO) FROM EMPLEADO;

MAX(SALARIO)                                                                                                            
------------                                                                                                            
     3000.11                                                                                                            

SQL> -- Obtenemos el salario m�nimo
SQL> SELECT MIN (SALARIO) FROM EMPLEADO;

MIN(SALARIO)                                                                                                            
------------                                                                                                            
         700                                                                                                            

SQL> 
SQL> -- ************ GROUP BY ************
SQL> -- Para usarla necesitamos agregar una columna que nos permita agrupar los datos.
SQL> 
SQL> -- Vamos a mostrar los oficios y la cantidad de empleados que tienen ese oficio, y lo vamos a agrupar por el oficio
SQL> SELECT OFICIO, COUNT(NIF) FROM EMPLEADO
  2  GROUP BY OFICIO;

OFICIO               COUNT(NIF)                                                                                         
-------------------- ----------                                                                                         
ADMISTRADOR                   1                                                                                         
INVESTIGADOR                  1                                                                                         
DIRECTOR                      1                                                                                         
JEFE LIMPIEZA                 1                                                                                         
JEFE FARMACIA                 1                                                                                         
CONTABLE                      1                                                                                         
HIGIENE                       2                                                                                         
GERENTE                       1                                                                                         
JEFE LABORATORIO              1                                                                                         
ADMINISTRATIVO                2                                                                                         

10 filas seleccionadas.
SQL> -- En este caso agrupamos los resultados por el OFICIO

SQL> 
SQL> -- Vamos a mostrar el OFICIO y la suma en SALARRIO de los empleados que sean directores o gerentes, agruparemos por el OFICIO y ordenaremos de manera ascendente
SQL> SELECT OFICIO, SUM(SALARIO) FROM EMPLEADO
  2  WHERE OFICIO IN ('DIRECTOR', 'GERENTE')
  3  GROUP BY OFICIO
  4  ORDER BY SUM(SALARIO) DESC;

OFICIO               SUM(SALARIO)                                                                                       
-------------------- ------------                                                                                       
DIRECTOR                  3000.11                                                                                       
GERENTE                   2000.22                                                                                       

SQL> -- En este caso agrupamos por el DIRECTOR, el hecho de agrupar no hace la suma, sino el SUM del SELECT
SQL> 
SQL> -- Vamos a contar las faltas que hubo y agruparemos por dias
SQL> SELECT FALTA, COUNT(*) FROM EMPLEADO
  2  GROUP BY FALTA;

FALTA      COUNT(*)                                                                                                     
-------- ----------                                                                                                     
11/01/02          2                                                                                                     
13/01/02          2                                                                                                     
12/01/02          4                                                                                                     
14/01/02          3                                                                                                     
10/01/02          1                                                                                                     

SQL> -- Ahora agrupamos por fechas
SQL> 
SQL> -- Mostraremos el oficio y la suma de salarios. Agruparemos todos los oficios, mostraremos solo los que la suma de los salarios sea mayor a 2000 y se mostraran de manera descendente
SQL> SELECT OFICIO, SUM (SALARIO) FROM EMPLEADO
  2  GROUP BY OFICIO
  3  HAVING SUM(SALARIO) > 2000
  4  ORDER BY SUM (SALARIO) DESC;

OFICIO               SUM(SALARIO)                                                                                       
-------------------- ------------                                                                                       
DIRECTOR                  3000.11                                                                                       
ADMISTRADOR               2000.33                                                                                       
GERENTE                   2000.22                                                                                       
SQL> -- Por ultimo, Agrupamos por OFICIO

SQL> -- No hubieramos tenido lo mismo si utilizamos DISTINCT, ya que este solo nos muestra todos los valores que una columna tiene. 
SQL> -- Al usar GRUOP BY debemos de apoyarnos de instrucciones como COUNT, SUM, AVG, MAX o MIN. De esta forma nosotros podemos saber cuanto gasta la empresa en ciertos oficios, la cantidad de faltas que se tuvieron en un día, etc.
SQL> -- Nuevamente, esta informacion no seria posible obtenerla de usar DISTINCT ya que la misma instruccion no lo permite.