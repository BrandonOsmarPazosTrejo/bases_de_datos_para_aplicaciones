ALTER TABLE direcciones_proveedores 
CHANGE COLUMN id_direccion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
CHANGE COLUMN calle VARCHAR(100) NOT NULL,
CHANGE COLUMN colonia VARCHAR(100) NOT NULL,
CHANGE COLUMN cp VARCHAR(50) NOT NULL,
CHANGE COLUMN municipio VARCHAR(50) NOT NULL,
CHANGE COLUMN pais VARCHAR(50) NOT NULL,
CHANGE COLUMN no_exterior VARCHAR(50) NOT NULL DEFAULT 0,
CHANGE COLUMN no_interior  VARCHAR(50) NOT NULL DEFAULT 0,
CHANGE COLUMN fecha_actualizacion TIMESTAMP NOT NULL,
CHANGE COLUMN id_proveedor  int NOT NULL,
CHANGE COLUMN FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
)ENGINE=INNODB;

CREATE TABLE proveedores(
id_proveedor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
proveedor VARCHAR(100) NOT NULL,
nombre_contacto VARCHAR(100) NOT NULL,
telefono_contacto VARCHAR(50) NOT NULL,
email_contacto  VARCHAR(50) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;

CREATE TABLE direcciones_proveedores (
id_direccion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
calle VARCHAR(100) NOT NULL,
colonia VARCHAR(100) NOT NULL,
cp VARCHAR(50) NOT NULL,
municipio VARCHAR(50) NOT NULL,
pais VARCHAR(50) NOT NULL,
no_exterior VARCHAR(50) NOT NULL DEFAULT 0,
no_interior  VARCHAR(50) NOT NULL DEFAULT 0,
fecha_actualizacion TIMESTAMP NOT NULL,
id_proveedor  int NOT NULL,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
)ENGINE=INNODB;


INSERT INTO proveedores 
VALUES (1,'Sabritas', 'Carlos Santa Anna','7751351496','Calors@ejemplo.com','2021-06-06 13-11-25'),
(2,'Bimbo', 'Octavio Santos ','7751489685','Octavio@ejemplo.com','2021-06-07 14-14-35'),
(3,'Holanda', 'Jhonatan Hacovo','7751456897','Hacovo@ejemplo.com','2021-06-01 20-10-07'),
(4,'Sopa', 'Albin Wakitori','7751364857','Albin@ejemplo.com','2021-06-02 15-11-23'),
(5,'Refrescos', 'Jeferson Gutierritos','775136944','Jeferson@ejemplo.com','2021-06-03 16-09-25');

INSERT INTO direcciones_proveedores 
VALUES (1,'Tlaloc','Guadalupe','43650','Tulancingo', 'Mexico','0','0','2021-05-01 20-21-23',2),
(2,'Moctezuma','Jrdines','47660','Pachuca', 'Albania','0','0','2021-05-02 22-23-02',5),
(3,'Chitzo','Avenida Mexico','54987','Guadalagara', 'Hungria','0','0','2021-05-03 13-03-06',5),
(4,'Mortal','Morena','75698','Tenango', 'Mexico','0','0','2021-05-01 20-21-23',2),
(5,'Carrillo','Maciel','25468','Seiba', 'Alemania','0','0','2021-05-01 20-21-23',1),
(6,'Puerto','Durango','32541','San jose', 'Andora','0','0','2021-05-01 20-21-23',3),
(7,'Casilla','Sonara','85749','Dinamarca', 'Bahren','0','0','2021-05-01 20-21-23',1),
(8,'Monacio','Marcalis','74584','Polina', 'Haiti','0','0','2021-05-01 20-21-23',4),
(9,'Caminal','Potrillo','36589','Baracia', 'Camboya','0','0','2021-05-01 20-21-23',3),
(10,'Mortillo','Tomalquil','65298','Bracia', 'Emiratos','0','0','2021-05-01 20-21-23',4);

CREATE VIEW proveedores_direcciones_proveedores  AS 
SELECT direcciones_proveedores.id_direccion,direcciones_proveedores.calle , direcciones_proveedores.colonia , direcciones_proveedores.cp , direcciones_proveedores.municipio, direcciones_proveedores.pais, direcciones_proveedores.no_exterior,direcciones_proveedores.no_interior, direcciones_proveedores.id_proveedor, proveedores.proveedor, proveedores.nombre_contacto, proveedores.telefono_contacto, proveedores.email_contacto, proveedores.fecha_actualizacion
FROM  direcciones_proveedores, proveedores
WHERE direcciones_proveedores.id_proveedor  = proveedores.id_proveedor;