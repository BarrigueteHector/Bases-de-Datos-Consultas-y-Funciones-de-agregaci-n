# Bases de Datos: Consultas y Funciones de agregación

Definición
--------------------------------------------------------------------------------------------------------------------------------------------------------
Las funciones de agregación permiten realizar operaciones en consultas, por ejemplo: sumar todos los valores de una columna, obtener el promedio de una columna, contar la cantidad de registros en una tabla y conocer el valor máximo y mínimo de una columna.

Antecedentes
--------------------------------------------------------------------------------------------------------------------------------------------------------
[DQL](https://github.com/BarrigueteHector/Bases-de-Datos-DQL): **SELECT**.

Desarrollo
--------------------------------------------------------------------------------------------------------------------------------------------------------
Para este momento, nosotros ya debemos saber como realizar una consulta (con o sin condición). Sin embargo, en algunos repositorios anteriores se hizo referencia a instrucciones como **IN**, **COUNT** u otro comando, los cuales vamos a revisar en este, junto a las funciones de agregación.

Primero vamos a hablar de **DISTINCT** y **ORDER BY**, que nos son útiles para sintetizar u ordernar nuestros resultados.
- **DISTINCT**: nos mostrará  los distintos valores que existen en una columna. Por ejemplo, tenemos una tabla con 50 registros de estudiantes, una de las columnas de la tabla indica el deporte que cada uno realiza, el cual puede ser Futbol, Natación o Atletismo, **DISTINCT** nos mostrará los deportes que se encuentran en la tabla, cualquiera de los tres deportes debe aparecer una vez para ser mostrado y con aparecer una vez es suficiente, si los 50 estudiantes juegan futbol, en la consulta solo se mostrará una vez futbol. ***NO CONSIDERA REPETICIONES***
- **ORDER BY**: Ordena de manera ascedente o descendente una columna, funciona para columnas numéricas y textuales.

Las siguientes instrucciones las utilizamos para la condición de nuestra consulta:
- **BETWEEN**: El resultado se encuentra en un determinado rango. Puede ser numérico o textual. Siempre se usa junto con **AND**
- **LIKE**: Los resultados que necesitamos tienen carácteres en posiciones específicas.
- **IN**: El resultado tiene valores específicos. Es parecido al CONSTRAINT **CHECK**.
- **AND**: Debe cumplir las condiciones que se indiquen.
- **OR**: Debe cumplir solo una condición.
- **NOT**: Niega el o los valores indicados y los demas los hace verdaderos.

Existe una instrucción que nos ayuda a agrupar los resultados, dicha instrucción es **GROUP BY**.
Siguiendo con el ejemplo de los 50 estudiantes, supongamos que hay alumnos en cada deporte, pero no sabemos la cantidad de alumnos que hay en cada uno. Podemos sacar la cuenta (**COUNT**), pero esto no nos diria nada nuevo, al hacer la agrupación por deporte es como vamos a saber cuantos juegan futbol, cuantos nadan y cuandos practican atletismo, en la consulta veríamos los nombres de los deportes y su cantidad de estudiantes (Solo tres lineas con dos columnas).
Puede que con lo anterior pensemos que es lo mismo que **DISTINCT**, de cierta manera es lo mismo, pero la diferencia radica cuando acompañamos de otras instrucciones como **COUNT**, con la cual podemos saber el número de repeticiones que un oficio tiene, algo que **DISTINCT** no nos permite hacer debido a la naturaleza del mismo.

Por último, las funciones de agregación. Antes de explicarlas, si se van a usar debe utilizar **HAVING** y no **WHERE**:
- **HAVING**: Es la sustitución de **WHERE** cuando se usan las funciones de agregación.

Estas se deben aplicar a columnas numéricas:
- **SUM**: Hace la suma de los valores de toda la columna. En otras palabras, suma los valores de todos los registros para la columna indicada.
- **AVG**: Hace el promedio de la columna.
- **COUNT**: Cuenta la cantidad de registros de una columna o de toda la tabla. Ignora los NULL. ***Es posible usarla apra columnas que no sean numéricas***
- **MAX**: Devuelve el valor máximo de la columna indicada.
- **MIN**: Devuelve el valor mínimo de la columna indicada.

Es posible realizar una consulta en la cual tengamos muchas de estas intrucciones, dependerá de lo que querramos saber de nuestra base de datos.

En el archivo [Instrucciones](https://github.com/BarrigueteHector/Bases-de-Datos-Consultas-y-Funciones-de-agregacion/blob/main/instrucciones.sql) se encuentran las guías para saber como escribir cada instrucción. ***SOLO SON LAS GUÍAS, NO HAY EJEMPLOS***.

En el archivo [Ejemplo](https://github.com/BarrigueteHector/Bases-de-Datos-Consultas-y-Funciones-de-agregacion/blob/main/ejemplo.sql) se muestra un ejemplo cada una de las instrucciones, esperando eliminar todas las dudas que se tengan.

NOTAS
--------------------------------------------------------------------------------------------------------------------------------------------------------
**NOTA #1**: Los repositorios **Bases de Datos** están hechos con base en el curso de Bases de Datos de la Facultad de Ingeniería de la UNAM. 
