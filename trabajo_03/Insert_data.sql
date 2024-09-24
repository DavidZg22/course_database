USE trabajo_tienda
GO

SELECT*FROM productos;
EXEC SP_HELP empleado;

--- Insertando empleados
INSERT INTO empleado(nombre,apellido,direccion,telefono)
VALUES ('Juan','Perez','Av. Los Alamos 123','987654321'),
('Luis','Flores','Av. Los Pinos 456','987654322'),
('Maria','Gomez','Av. Los Cedros 789','987654323'),
('Jose','Torres','Av. Los Eucaliptos 012','987654324'),
('Carlos','Garcia','Av. Los Sauces 345','987654325'),
('Ana','Rodriguez','Av. Los Alisos 678','987654326'),
('Pedro','Martinez','Av. Los Paltos 901','987654327'),
('Rosa','Lopez','Av. Los Olivos 234','987654328'),
('Jorge','Hernandez','Av. Los Cipreses 567','987654329'),
('Sofia','Diaz','Av. Los Laureles 890','987654330');

--- Insertando clientes
INSERT INTO clientes(nombre,apellido,direccion,telefono)
VALUES ('Juan','Perez','Av. Los Alamos 123','987654321'),
('Luis','Flores','Av. Los Pinos 456','987654322'),
('Maria','Gomez','Av. Los Cedros 789','987654323'),
('Jose','Torres','Av. Los Eucaliptos 012','987654324'),
('Carlos','Garcia','Av. Los Sauces 345','987654325'),
('Ana','Rodriguez','Av. Los Alisos 678','987654326'),
('Pedro','Martinez','Av. Los Paltos 901','987654327'),
('Rosa','Lopez','Av. Los Olivos 234','987654328'),
('Jorge','Hernandez','Av. Los Cipreses 567','987654329'),
('Sofia','Diaz','Av. Los Laureles 890','987654330');

---insertando productos
INSERT INTO productos(nombre,descripcion,precio,stock)
VALUES ('Laptop','Laptop HP 15.6 pulgadas',1000.00,10),
('Impresora','Impresora HP Multifuncional',200.00,20),
('Tablet','Tablet Samsung 10 pulgadas',300.00,30),
('Smartphone','Smartphone Samsung Galaxy S20',400.00,40),
('Monitor','Monitor LG 24 pulgadas',150.00,50),
('Teclado','Teclado Logitech Inalambrico',200.00,60),
('Mouse','Mouse HP Inalambrico',300.00,70),
('Parlantes','Parlantes Genius 2.1',150.00,80),
('Audifonos','Audifonos Sony Inalambricos',250.00,90),
('Webcam','Webcam Logitech HD',100.00,100);

--- insertando ventas
INSERT INTO ventas(id_clientes,id_vendedor,fecha,cantidad,total)
VALUES (1,1,'2024-05-05',2,200.00),
(2,2,'2024-05-06',3,600.00),
(3,3,'2024-05-07',1,100.00),
(4,4,'2024-05-08',2,400.00),
(5,5,'2024-05-09',3,450.00);

--- insertando detalles de ventas
INSERT INTO detalles_ventas(id_producto,id_venta,cantidad,precio_unitario)
VALUES (1,1,2,100.00),
(2,1,3,200.00),
(3,2,1,150.00),
(4,2,2,250.00),
(5,3,3,300.00),
(6,3,1,100.00),
(7,4,2,200.00),
(8,4,3,300.00),
(9,5,1,150.00),
(10,5,2,250.00);