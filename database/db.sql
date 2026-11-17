CREATE DATABASE IF NOT EXISTS tiendaperu;
USE tiendaperu;

-- ==========================================
-- 1. TABLA PRODUCTOS
-- ==========================================
CREATE TABLE IF NOT EXISTS productos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    precio VARCHAR(100) NOT NULL,
    stock VARCHAR(100) NOT NULL DEFAULT 0,
    create_at DATETIME NOT NULL DEFAULT NOW(),
    update_at DATETIME NULL
) ENGINE=INNODB;

INSERT INTO productos
(marca, descripcion, precio, stock)
VALUES
('Samsung', 'TV 55', '2500', '10'),
('LG', 'Lavadora', '1200', '3'),
('Sony', 'PlayStation 5', '3200', '2');

-- ==========================================
-- 2. TABLA CLIENTES
-- ==========================================
CREATE TABLE IF NOT EXISTS clientes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    apellidos VARCHAR(100) NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=INNODB;

INSERT INTO clientes
(apellidos, nombres, telefono, direccion, email)
VALUES
('Peralta Quispe', 'José Nicolás', '987654321', 'Av. Grau 450, Chincha', 'jose.peralta@gmail.com'),
('Mendoza Rojas', 'María Fernanda', '945123789', 'Calle Lima 120, Sunampe', 'maria.mendoza@hotmail.com'),
('Castro Torres', 'Carlos Alberto', '912345678', 'Jr. Mariscal Castilla 315', 'carlos.castro@gmail.com');

-- ==========================================
-- 3. TABLA PROVEEDORES
-- ==========================================
CREATE TABLE IF NOT EXISTS proveedores (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    razonsocial VARCHAR(150) NOT NULL,
    contacto VARCHAR(100) NOT NULL,
    ruc CHAR(11) NOT NULL UNIQUE,
    direccion VARCHAR(200) NOT NULL,
    create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=INNODB;

INSERT INTO proveedores
(razonsocial, contacto, ruc, direccion)
VALUES
('Distribuidora Tecnológica del Sur S.A.C.', 'Luis Alberto Gómez', '20548796321', 'Av. Industrial 1420, Lima'),
('Importaciones Electro Perú S.R.L.', 'Carla Patricia Ríos', '20601458974', 'Jr. Ayacucho 340, Chincha Alta'),
('Comercializadora Global Tech E.I.R.L.', 'Roberto Carlos Chávez', '20512398745', 'Av. Panamericana Sur Km 198, Sunampe');

-- ==========================================
-- VERIFICACIÓN DE DATOS
-- ==========================================
SELECT * FROM productos;
SELECT * FROM clientes;
SELECT * FROM proveedores;
