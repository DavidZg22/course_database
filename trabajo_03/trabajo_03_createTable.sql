CREATE DATABASE trabajo_tienda;
GO

USE tienda;
GO

CREATE TABLE productos(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    precio MONEY NOT NULL,
    stock INT NOT NULL
)
GO


CREATE TABLE clientes(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(10) NOT NULL
)
GO

CREATE TABLE empleado(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(10) NOT NULL
)

CREATE TABLE ventas(
    id INT PRIMARY KEY IDENTITY(1,1),
    id_clientes INT NOT NULL,
    id_vendedor INT NOT NULL,
    fecha DATE NOT NULL,
    cantidad INT NOT NULL,
    total MONEY NOT NULL,
    FOREIGN KEY (id_clientes) REFERENCES clientes(id),
    FOREIGN key (id_vendedor) REFERENCES empleado(id)
)
GO

CREATE TABLE detalles_ventas(
    id INT PRIMARY KEY IDENTITY(1,1),
    id_producto INT NOT NULL,
    id_venta INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario MONEY NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES productos(id),
    FOREIGN KEY (id_venta) REFERENCES ventas(id)
)
GO



