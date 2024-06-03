CREATE TABLE departamento
(
    id integer NOT NULL,
    nombre varchar(100) NOT NULL,
    presupuesto numeric NOT NULL,
    gastos numeric NOT NULL,
    CONSTRAINT departamento_pkey PRIMARY KEY (id)
);

CREATE TABLE empleado
(
    id integer NOT NULL,
    nif varchar(9) NOT NULL,
    nombre varchar(100) NOT NULL,
    apellido1 varchar(100) NOT NULL,
    apellido2 varchar(100),
    id_departamento integer,
    CONSTRAINT empleado_pkey PRIMARY KEY (id),
    CONSTRAINT empleado_nif_key UNIQUE (nif),
    CONSTRAINT empleado_id_departamento_fkey FOREIGN KEY (id_departamento)
        REFERENCES public.departamento (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (2, 'Sistemas', 150000, 21000);
INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (5, 'I+D', 375000, 380000);
INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (6, 'Proyectos', 0, 0);
INSERT INTO departamento (id, nombre, presupuesto, gastos) VALUES (7, 'Publicidad', 0, 1000);


INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (10, '46384486H', 'Diego', 'Flores', 'Salas', 5);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (11, '67389283A', 'Marta', 'Herrera', 'Gil', 1);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (12, '41234836R', 'Irene', 'Salas', 'Flores', NULL);
INSERT INTO empleado (id, nif, nombre, apellido1, apellido2, id_departamento) VALUES (13, '82635162B', 'Juan Antonio', 'Sáez', 'Guerrero', NULL);


