CREATE TABLE clientes(
id_cliente int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL
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
total_x_producto  float GENERATED ALWAYS AS (cantidad_producto * precio),
id_venta INT NOT NULL,
id_producto int NOT NULL,
FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto) 
)ENGINE=INNODB;

INSERT INTO productos
 VALUES(1,"Atun","En lata","150",5),
(2,"Arroz","Morena","120",5),
(3,"Frijoles","Negros","360",9);



INSERT INTO clientes
VALUES (1,"Osmar","Pazos","Trejo","7751537388 ","Osmaepazos64@gmail.com"," 2021-06-21 17-11-22"),
(2,"Antonia","Trejo","Rios"," 7751351496 ","Antonia@gmail.com"," 2021-07-24 10-23-01 "),
(3,"Salmen","Pazos","Gimate"," 7751875817 ","sit@Salmen@gmail.com","2021-08-16 13-17-55 ");
  
  
INSERT INTO ventas
VALUES (1,"2021-06-01 21-21-31",1522,1),
(2,"2021-06-02 03-15-21",1236,1),
(3,"2021-06-03 11-11-12",1784,2),
(4,"2020-06-05 23-25-20",250,3),
(5,"2020-06-06 23-31-21",2478,3),
(6,"2020-06-07 01-01-02",8547,2),
(7,"2020-06-08 16-15-14",1457,2),
(8,"2020-06-09 19-32-55",6987,3),
(9,"2020-06-10 21-22-19",899,1),
(10,"2020-06-11 09-22-14",1278,1);

INSERT INTO detalle_ventas(id_detalle_venta,cantidad_producto,precio,id_venta,id_producto)
VALUES 
(1,"6","450",1,1),
(2,"2","500",6,1),
(3,"16","150",2,2),
(4,"4","800",2,3),
(5,"5","400",3,2);

SELECT min(total_x_producto),clientes.nombre,clientes.primer_apellido,clientes.segundo_apellido
FROM detalle_ventas,clientes
WHERE total_x_producto