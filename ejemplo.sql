create table persona(
    id_persona int primary key,
    nombre varchar(75),
    apellido varchar(75)
);

create table curso(
    id_curso int primary key,
    nombre varchar(25),
    apellido varchar(25)
);

create table institucion(
    id_inst int primary key,
    nombre varchar(25),
    lugar varchar(100)
);