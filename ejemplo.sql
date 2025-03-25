create table Estudiantes (
  id int primary key,
  nombre varchar(50)
  );

create table Estudiantes_matematicas (
  id_e int,
  FOREIGN key (id_e) REFERENCES Estudiantes(id)
  );
  
create table Estudiantes_fisica (
  id_e int,
 FOREIGN key (id_e) REFERENCES Estudiantes(id)
  );
  
create table Estudiantes_quimica (
  id_e int,
  FOREIGN key (id_e) REFERENCES Estudiantes(id)
  );
  
  insert into Estudiantes_matematicas (id, nombre) VALUES
  (1,'Ana'),
  (2,'Carlos'),
  (3,'Natalia'),
  (4,'Valentina'),
  (5,'Diego'),
  (6,'Pam');
  
  insert into Estudiantes_quimica (id, nombre) VALUES
  (1,'Diego'),
  (2,'Valentina'),
  (3,'Fernando'),
  (4,'Gabriela'),
  (5,'Ana'),
  (6,'Jose');
  
  insert into Estudiantes_quimica (id, nombre) VALUES
  (1,'Diego'),
  (2,'Pam'),
  (3,'Fernando'),
  (4,'Mandy'),
  (5,'Natalia'),
  (6,'Larry');

SELECT nombre from Estudiantes_matematicas
UNION
SELECT nombre from Estudiantes_fisica
UNION
SELECT nombre from Estudiantes_quimica;

SELECT nombre from Estudiantes_matematicas
UNION all
SELECT nombre from Estudiantes_fisica
UNION ALL
SELECT nombre from Estudiantes_quimica;

-- ///////////////////////////////////// --

SELECT nombre from Estudiantes_matematicas
intersect
SELECT nombre from Estudiantes_fisica
intersect
SELECT nombre from Estudiantes_quimica;

SELECT nombre from Estudiantes_fisica
intersect
SELECT nombre from Estudiantes_matematicas;

-- ///////////////////////////////////// --

SELECT nombre from Estudiantes_matematicas
except
SELECT nombre from Estudiantes_fisica
except
SELECT nombre from Estudiantes_quimica;

SELECT nombre from Estudiantes_quimica
except
SELECT nombre from Estudiantes_fisica
except
SELECT nombre from Estudiantes_matematicas;