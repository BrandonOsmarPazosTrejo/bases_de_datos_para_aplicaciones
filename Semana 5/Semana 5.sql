CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion timestamp NOT NULL
)ENGINE=INNODB;

CREATE TABLE productos(
id_producto int NOT NULL PRIMARY KEY,
nombre_producto VARCHAR(50) NOT NULL,
descripcion VARCHAR(4000) NOT NULL,
precio_unitario float NOT NULL,
existencias int NOT NULL
)ENGINE=INNODB;

CREATE TABLE ventas(
id_venta int NOT NULL PRIMARY KEY,
fecha_venta TIMESTAMP,
total_venta VARCHAR(50),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;

CREATE TABLE  detalle_ventas(
id_detalle_venta INT NOT NULL PRIMARY KEY,
cantidad_producto VARCHAR(50) NOT NULL,
precio VARCHAR(50) NOT NULL,
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;


INSERT INTO productos
 VALUES ("1","laptop","marca",019,04),
 ("2","mouse","inalambrico",162,51),
 ("3","teclado","colores",172,73);




INSERT INTO clientes
  VALUES (1,"juan","hernandez","lopez","77623932","juan@lopez.co.uk","2020-09-19 20-34-42"),
  (2,"Citlali","tello","palmas"," 77539022","citlali@palmas.net","2021-05-12 17-25-13"),
  (3,"anna","lopez","perez"," 775381081 ","anna@perez.ca","2021-06-01 17-31-15 ");



INSERT INTO ventas
 VALUES ("1","2021-02-08 20-25-10",821,1),
("2"," 2021-08-11 17-25-13",938,2),
("3","2021-02-08 20-25-11",829,3);




INSERT INTO detalle_ventas
VALUES (1,"8912",'91',1,1),
(2,"38012",'928',1,1),
(3,"30922",'821',2,2),
(4,"27109",'201',2,2),
(5,"01991",'290',3,3),
(6,"22628",'021',3,3);