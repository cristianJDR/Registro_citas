CREATE DATABASE citas_db;
USE citas_db;

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(50),
  clave VARCHAR(50)
);

INSERT INTO usuarios (usuario, clave) VALUES ('admin', '1234');

CREATE TABLE citas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  fecha DATE
);

INSERT INTO citas (titulo, fecha) VALUES
('Cita médica', '2025-07-22'),
('Cita con psicólogo', '2025-07-25');