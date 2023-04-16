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
  FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE libro_prestamo (
  id_libro_prestamo int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_prestamo int(11) DEFAULT NULL,
  id_libro int(11) DEFAULT NULL,
  FOREIGN KEY (id_libro) REFERENCES libro (id_libro)

);

CREATE TABLE multa (
  id_multa int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  penalizacion int(20) DEFAULT NULL
);

CREATE TABLE prestamo (
  id_prestamo int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  diashabiles int(20) DEFAULT NULL,
  id_multa int(11) DEFAULT NULL,
  FOREIGN KEY (id_multa) REFERENCES multa (id_multa)
);

CREATE TABLE usuario (
  id_usuario int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre_usuario varchar(20) DEFAULT NULL,
  edad int(3) DEFAULT NULL,
  numero_cont int(10) DEFAULT NULL,
  id_prestamo int(11) DEFAULT NULL,
  FOREIGN KEY (id_prestamo) REFERENCES prestamo (id_prestamo)

)