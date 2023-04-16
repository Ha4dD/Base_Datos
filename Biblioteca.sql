CREATE DATABASE Bliblioteca;

CREATE TABLE autor (
  id_autor int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre varchar(20) DEFAULT NULL
);

CREATE TABLE libro (
  id_libro int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  titulo varchar(20) DEFAULT NULL,
  editorial varchar(20) DEFAULT NULL,
  id_autor int(11) DEFAULT NULL,
  FOREIGN KEY (id_autor) REFERENCES autor(id_autor) ON DELETE CASCADE
);

CREATE TABLE libro_prestamo (
  id_libro_prestamo int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_prestamo int(11) DEFAULT NULL,
  id_libro int(11) DEFAULT NULL,
  FOREIGN KEY (id_libro) REFERENCES libro (id_libro) ON DELETE CASCADE

);

CREATE TABLE multa (
  id_multa int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  penalizacion int(20) DEFAULT NULL
);

CREATE TABLE prestamo (
  id_prestamo int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  diashabiles int(20) DEFAULT NULL,
  id_multa int(11) DEFAULT NULL,
  FOREIGN KEY (id_multa) REFERENCES multa (id_multa) ON DELETE CASCADE
);

CREATE TABLE usuario (
  id_usuario int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre_usuario varchar(20) DEFAULT NULL,
  edad int(3) DEFAULT NULL,
  numero_cont int(10) DEFAULT NULL,
  id_prestamo int(11) DEFAULT NULL,
  FOREIGN KEY (id_prestamo) REFERENCES prestamo (id_prestamo) ON DELETE CASCADE

)

INSERT INTO autor (nombre) VALUES
('vladimir'),
('boli'),
('vedna'),
('colma'),
('Kingstian');

INSERT INTO libro ( titulo, editorial, id_autor) VALUES
('FEDERICO Y SU PAPA', 'Norma', 1),
('VEDNA MODA', 'Norma', 2),
('EL PERRO', 'Norma', 3),
('VELAS', 'Norma', 4),
('LA OLA', 'Norma', 5);

INSERT INTO `libro_prestamo` (`id_libro_prestamo`, `id_prestamo`, `id_libro`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO `multa` (`id_multa`, `penalizacion`) VALUES
(1, 10),
(2, 11),
(3, 12),
(4, 13),
(5, 14);

INSERT INTO `prestamo` (`id_prestamo`, `diashabiles`, `id_multa`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 5, 3),
(4, 5, 4),
(5, 5, 5);

INSERT INTO `usuario` (`nombre_usuario`, `edad`, `numero_cont`, `id_prestamo`) VALUES
('Dante', 22, 123, 1),
('Kalil', 42, 344, 2),
('Baby', 19, 356, 3),
('Acrilico', 58, 321, 4),
('Bomba', 12, 395, 5);

UPDATE autor SET nombre = 'BOLI' WHERE id_autor = 1;
UPDATE autor SET nombre = 'VERONICA' WHERE id_autor = 2;
UPDATE autor SET nombre = 'JULIO' WHERE id_autor = 3;
UPDATE autor SET nombre = 'ANDRES' WHERE id_autor = 4;
UPDATE autor SET nombre = 'SAMUEL' WHERE id_autor = 5;

UPDATE libro SET titulo = 'LA BOLA' WHERE id_libro = 1;
UPDATE libro SET titulo = 'EL VIENTO' WHERE id_libro = 2;
UPDATE libro SET titulo = 'LA ROCA' WHERE id_libro = 3;
UPDATE libro SET titulo = 'EL RIO' WHERE id_libro = 4;
UPDATE libro SET titulo = 'EL BEBE' WHERE id_libro = 5;

UPDATE usuario SET nombre_usuario = 'JUAN BOLI' WHERE id_usuario = 1;
UPDATE usuario SET nombre_usuario = 'JUAN KALIL' WHERE id_usuario= 2;
UPDATE usuario SET nombre_usuario = 'JUAN TEBI' WHERE id_usuario = 3;
UPDATE usuario SET nombre_usuario = 'JUAN MINO' WHERE id_usuario = 4;
UPDATE usuario SET nombre_usuario = 'JUAN HADD' WHERE id_usuario = 5;
