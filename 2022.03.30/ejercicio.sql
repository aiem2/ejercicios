CREATE DATABASE pizzeria;
\c pizzeria;

CREATE TABLE pizzas (id_pizza SERIAL PRIMARY KEY, stock SMALLINT NOT NULL CHECK(stock >= 0), costo INT NOT NULL, nombre VARCHAR(20) NOT NULL);

CREATE TABLE ventas (cliente VARCHAR(30) NOT NULL, fecha DATE, monto INT, pizza INT REFERENCES pizzas(id_pizza));

INSERT INTO pizzas (id_pizza, stock, costo, nombre) VALUES (DEFAULT, 0, 8990, 'Nachopizza');

BEGIN; INSERT INTO pizzas (id_pizza, stock, costo, nombre) VALUES (DEFAULT, 1, 9990, 'Caprichosa'); 
COMMIT;

BEGIN; INSERT INTO ventas (cliente, fecha, monto, pizza) VALUES ('Dexter Gonzalez', '2020-02-02', 9900, 2);
UPDATE pizzas SET stock = stock - 1 WHERE id_pizza = 2;
COMMIT;

UPDATE pizzas SET stock = 2 WHERE id_pizza = 2;

BEGIN;
INSERT INTO ventas (cliente, fecha, monto, pizza) VALUES ('Juan Bravo', CURRENT_DATE, 9900, 2);
UPDATE pizzas SET stock = stock - 1 WHERE id_pizza = 2;
SAVEPOINT checkpoint;
INSERT INTO ventas (cliente, fecha, monto, pizza) VALUES ('Utonio Ramirez', CURRENT_DATE, 8990, 1);
UPDATE pizzas SET stock = stock - 1 WHERE id_pizza = 1;
ROLLBACK TO checkpoint;
COMMIT;

SELECT * FROM ventas;

psql -U aiem2 -d pizzeria2 -f 'D:\Emprendiendo\Capacitaciones\Desafio_Latam\Ruby_On_Rails\Bootcamp\Ejercicios\2022.03.30\pizzeria.sql' -h localhost