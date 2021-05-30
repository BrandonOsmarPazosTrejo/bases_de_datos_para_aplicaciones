USE tienda_acme_bopt;

CREATE TABLE direccion(
id_direccion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
calle VARCHAR(100) NOT NULL,
colonia VARCHAR(100) NOT NULL,
cp int NOT NULL,
estado VARCHAR(50) NOT NULL,
municipio VARCHAR(50) NOT NULL,
pais VARCHAR(50) NOT NULL,
fecha_actualizacion TIMESTAMP NOT null
)ENGINE=INNODB;

CREATE TABLE cliente(
id_cliente int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL,
fecha_actualizacion TIMESTAMP NOT NULL,
id_direccion int NOT NULL,
FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
)ENGINE=INNODB;


INSERT INTO direccion
VALUES (1,"8066 Phasellus Street","San miguel","3248 RJ","Castelnovo del Friuli","Nieuwegein","South Georgia and The South Sandwich Islands","2021-05-01 13-11-12"),(2,"6164 Eget, Ave","Napateco","203484","Lossiemouth","Castres","Belize","2021-05-14 13-34-22"),(3,"P.O. Box 323, 1351 Molestie Road","Napateco","01942","Massenhoven","Piegaro","New Caledonia","2021-05-01 13-11-12"),(4,"P.O. Box 618, 7329 Quis Street","Napateco","87237","Le Havre","Hafizabad","Myanmar","2021-05-16 09-05-02"),(5,"P.O. Box 223, 9811 Sapien, St.","Napateco","58176","College","Acireale","Israel","2021-05-14 13-34-22"),(6,"Ap #565-2745 Lorem. Ave","Guadalupe","524065","Oudekapelle","Prè-Saint-Didier","Papua New Guinea","2021-05-14 13-34-22"),(7,"Ap #790-1676 Donec Road","Jardinez","341290","Carahue","Mignanego","Falkland Islands","2021-05-14 13-34-22"),(8,"Ap #410-8443 Odio Road","Napateco","25700","Rimouski","Slough","Namibia","2021-05-01 13-11-12"),(9,"P.O. Box 478, 3345 Tincidunt, St.","Jardinez","488789","Fishguard","Erli","Brunei","2021-05-16 09-05-02"),(10,"3050 Gravida Street","Guadalupe","421057","Spittal an der Drau","Newport","French Polynesia","2021-05-01 13-11-12"),
(11,"146-9367 Nunc Rd.","Napateco","25598","Zerkegem","Cossignano","Egypt","2021-05-14 13-34-22"),(12,"463-1920 Nunc Street","Guadalupe","3688","Koryazhma","Brin-Navolok","Singapore","2021-05-01 13-11-12"),(13,"P.O. Box 514, 9275 Dictum. Avenue","Jardinez","65154","Rio Grande","Sedgewick","Tonga","2021-05-14 13-34-22"),(14,"Ap #620-6374 Ut Road","Guadalupe","5563","Rocca Santo Stefano","Depok","Madagascar","2021-05-01 13-11-12"),(15,"P.O. Box 689, 1938 Massa. Street","Napateco","69381","Buckingham","Giardinello","Lebanon","2021-05-16 09-05-02"),(16,"Ap #832-7306 Vitae Rd.","San miguel","793664","Borlänge","Ketchikan","Finland","2021-05-16 09-05-02"),(17,"293 Convallis St.","San miguel","8762","Grande Cache","Pocheon","Palestine, State of","2021-05-14 13-34-22"),(18,"754-1503 Amet Avenue","Napateco","10108","Fahler","Champlain","Samoa","2021-05-14 13-34-22"),(19,"741-8548 Neque Road","Jardinez","480975","Chiusa/Klausen","Piovene Rocchette","Saint Vincent and The Grenadines","2021-05-16 09-05-02"),(20,"P.O. Box 147, 9679 Tempus Av.","Jardinez","94057","Abbottabad","Siculiana","India","2021-05-16 09-05-02"),
(21,"Ap #702-9352 Pellentesque Rd.","Jardinez","667489","Cardiff","Stewart","Mozambique","2021-05-14 13-34-22"),(22,"Ap #911-5783 Lacus. Rd.","Napateco","1375","Opdorp","Fairbanks","Ireland","2021-05-14 13-34-22"),(23,"528-3379 Imperdiet Ave","San miguel","838896","Hallaar","Bowden","Brazil","2021-05-01 13-11-12"),(24,"P.O. Box 603, 4977 Tempor, Ave","Guadalupe","Z8783","Maracalagonis","Sundrie","Zambia","2021-05-14 13-34-22"),(25,"Ap #170-1727 Nibh. Ave","Jardinez","8277","Natales","Tregaron","Portugal","2021-05-14 13-34-22"),(26,"P.O. Box 271, 9887 Dolor. St.","Guadalupe","XY4L 2UV","Delmenhorst","Palma de Mallorca","Rwanda","2021-05-01 13-11-12"),(27,"208-1519 Cras Avenue","Napateco","Z1922","Sint-Lambrechts-Herk","Husum","Dominica","2021-05-16 09-05-02"),(28,"Ap #385-7473 Metus. Rd.","Jardinez","035173","Arras","Marbella","Libya","2021-05-14 13-34-22"),(29,"P.O. Box 259, 642 Urna St.","Napateco","23876","Reutlingen","Beert","Mauritania","2021-05-14 13-34-22"),(30,"Ap #817-5838 Neque Rd.","Napateco","422671","Governador Valadares","Wellington","United Kingdom (Great Britain)","2021-05-01 13-11-12"),
(31,"5890 Accumsan St.","Napateco","5358","Borgo Valsugana","Cusco","Tunisia","2021-05-16 09-05-02"),(32,"244-6441 Auctor St.","Guadalupe","39-710","Santa Maria","Creil","Sierra Leone","2021-05-01 13-11-12"),(33,"P.O. Box 491, 9986 At Ave","San miguel","11446-55124","Itegem","Dijon","Monaco","2021-05-14 13-34-22"),(34,"303-3307 Lacinia. St.","Guadalupe","236589","Tailles","Kharabali","Qatar","2021-05-14 13-34-22"),(35,"P.O. Box 314, 9823 Lorem Road","Jardinez","817580","Fratta Todina","Hinckley","San Marino","2021-05-16 09-05-02"),(36,"9894 Integer Rd.","Jardinez","428233","Sgonico","Patan","Tuvalu","2021-05-16 09-05-02"),(37,"P.O. Box 974, 2959 Tellus St.","Jardinez","41700","Épinal","Bakal","Djibouti","2021-05-14 13-34-22"),(38,"Ap #929-6801 Nam Street","Napateco","27702","Gloucester","Surabaya","Kiribati","2021-05-16 09-05-02"),(39,"9340 Orci St.","Jardinez","32018","Red Deer","San Giacomo degli Schiavoni","Bosnia and Herzegovina","2021-05-14 13-34-22"),(40,"3375 Scelerisque Street","Jardinez","4894","Orenburg","Kota","Italy","2021-05-14 13-34-22"),
(41,"Ap #650-8310 Donec Avenue","San miguel","5131","Tidore","Québec City","Gabon","2021-05-14 13-34-22"),(42,"P.O. Box 805, 3243 Donec Rd.","San miguel","7387","Shigar","Bad Neuenahr-Ahrweiler","Thailand","2021-05-16 09-05-02"),(43,"P.O. Box 586, 6185 Quis, Avenue","San miguel","01729","San Antonio","Grayvoron","Bonaire, Sint Eustatius and Saba","2021-05-14 13-34-22"),(44,"Ap #838-1396 Non Rd.","Jardinez","27316","Pushchino","Sherani","Korea, North","2021-05-01 13-11-12"),(45,"375-1281 Pretium Avenue","Napateco","51-739","Leersum","Barcelona","Cook Islands","2021-05-14 13-34-22"),(46,"769-8506 Id St.","San miguel","47387","Zhukovsky","Tubeke Tubize","Myanmar","2021-05-14 13-34-22"),(47,"425-5999 At, St.","Napateco","84470","Limbach-Oberfrohna","Gimhae","Antigua and Barbuda","2021-05-01 13-11-12"),(48,"Ap #414-3676 Nunc Ave","Jardinez","342790","Malang","Greenock","Syria","2021-05-01 13-11-12"),(49,"460-7452 Et Road","Jardinez","8644","Oaxaca","H�rouxville","India","2021-05-14 13-34-22"),(50,"3853 At Rd.","Guadalupe","9279 QB","Chuncheon","Gresham","Virgin Islands, British","2021-05-16 09-05-02"),
(51,"P.O. Box 314, 543 Cum Av.","Jardinez","24840","Sambalpur","Meugliano","Heard Island and Mcdonald Islands","2021-05-16 09-05-02"),(52,"P.O. Box 944, 5219 Consectetuer Rd.","Napateco","51433","Bergeggi","Montgomery","Tanzania","2021-05-14 13-34-22"),(53,"Ap #523-8516 Facilisis Avenue","Jardinez","5302","Wilmont","Lompret","Costa Rica","2021-05-01 13-11-12"),(54,"P.O. Box 321, 2008 Risus. Av.","Napateco","57935","Annone di Brianza","Notre-Dame-de-la-Salette","Malaysia","2021-05-01 13-11-12"),(55,"2839 A St.","San miguel","70078","Asan","San Antonio","Aruba","2021-05-01 13-11-12"),(56,"Ap #507-7174 Sem Rd.","Guadalupe","86760","Frignano","San Felipe","Virgin Islands, British","2021-05-14 13-34-22"),(57,"394-7334 Phasellus Rd.","Guadalupe","380222","Fallais","Rishra","Cuba","2021-05-01 13-11-12"),(58,"186-214 Molestie Av.","Napateco","266726","Duluth","Saint-Nazaire","Venezuela","2021-05-16 09-05-02"),(59,"Ap #134-2098 Quis Road","San miguel","00-179","Rüsselsheim","Stralsund","Andorra","2021-05-16 09-05-02"),(60,"910-8371 Nec St.","Guadalupe","93471","Boorsem","Markham","Tokelau","2021-05-14 13-34-22"),
(61,"Ap #324-1578 In Avenue","Napateco","639280","Panipat","Ziano di Fiemme","Anguilla","2021-05-14 13-34-22"),(62,"5863 Tincidunt Rd.","San miguel","50229","Mardan","Cap-Rouge","Libya","2021-05-16 09-05-02"),(63,"262-3011 Nibh St.","Napateco","597834","Ketchikan","Worcester","Libya","2021-05-14 13-34-22"),(64,"Ap #824-8534 Placerat St.","Jardinez","29494","Herk-de-Stad","Hudiksvall","Tonga","2021-05-16 09-05-02"),(65,"P.O. Box 791, 6189 Diam Rd.","Napateco","Z8623","Calco","Dumfries","Curaçao","2021-05-01 13-11-12"),(66,"928-3507 Urna Rd.","Napateco","812323","Abeokuta","Paulatuk","Barbados","2021-05-14 13-34-22"),(67,"Ap #689-5335 Metus. Avenue","San miguel","7787","Segni","Carbonear","Andorra","2021-05-14 13-34-22"),(68,"327-6249 Mi Avenue","Jardinez","PJ2 7PI","Vehari","Abbotsford","Bulgaria","2021-05-16 09-05-02"),(69,"1818 In Road","Napateco","61268","Sohbatpur","Rueil-Malmaison","Belize","2021-05-16 09-05-02"),(70,"P.O. Box 166, 9320 Morbi Avenue","San miguel","48-440","Vienna","Corbara","Falkland Islands","2021-05-14 13-34-22"),
(71,"Ap #466-6146 Semper Ave","Napateco","27926","Kumbakonam","Afşin","Afghanistan","2021-05-14 13-34-22"),(72,"Ap #732-2382 Massa Street","Napateco","8053 YJ","Angleur","Banff","Turks and Caicos Islands","2021-05-16 09-05-02"),(73,"371-6673 Diam Ave","Guadalupe","47329-39726","Kurnool","Castiglione Messer Raimondo","Togo","2021-05-01 13-11-12"),(74,"3403 Lobortis Road","Napateco","725841","Pratovecchio","Paraíso","Turkey","2021-05-16 09-05-02"),(75,"P.O. Box 735, 9896 Nec, Street","Guadalupe","7962 SW","Cap-Rouge","Diets-Heur","Turks and Caicos Islands","2021-05-01 13-11-12"),(76,"P.O. Box 620, 7473 Suspendisse Ave","San miguel","71-868","Ettelgem","Sherbrooke","Togo","2021-05-01 13-11-12"),(77,"P.O. Box 697, 3409 Malesuada Av.","San miguel","5663","Renca","Lokeren","Paraguay","2021-05-16 09-05-02"),(78,"P.O. Box 419, 4018 Dui. St.","San miguel","813529","Sars-la-Buissire","Vitrival","Timor-Leste","2021-05-01 13-11-12"),(79,"479-9895 Non Ave","Napateco","61787","Santander de Quilichao","Namyangju","Hong Kong","2021-05-16 09-05-02"),(80,"Ap #109-2411 Non, Rd.","San miguel","264296","Kayseri","Heilbronn","French Guiana","2021-05-01 13-11-12"),
(81,"266-1810 Mollis. St.","Guadalupe","6534","Nancy","Isnes","Antigua and Barbuda","2021-05-14 13-34-22"),(82,"Ap #436-2024 Faucibus St.","Jardinez","484404","Pakpatan","Inverness","Bosnia and Herzegovina","2021-05-01 13-11-12"),(83,"Ap #450-9424 Arcu Avenue","San miguel","76932","Maasmechelen","Bhir","Mauritania","2021-05-14 13-34-22"),(84,"6429 Tellus. St.","Guadalupe","622990","Racine","Senneville","Korea, North","2021-05-14 13-34-22"),(85,"P.O. Box 213, 4155 Adipiscing Rd.","Napateco","18135","Bunbury","PiŽtrain","Argentina","2021-05-01 13-11-12"),(86,"717-7225 Tortor Street","Jardinez","6512","Caxias","Scorrano","Macao","2021-05-16 09-05-02"),(87,"8988 Ornare Rd.","Jardinez","33582","Kaliningrad","Cortil-Noirmont","Uruguay","2021-05-14 13-34-22"),(88,"P.O. Box 385, 5481 Sit St.","Napateco","17810","Shangla","Sale","Wallis and Futuna","2021-05-01 13-11-12"),(89,"P.O. Box 886, 3054 Curabitur Ave","San miguel","R6R 0XY","Reinbek","Huacho","Argentina","2021-05-01 13-11-12"),(90,"675-8446 Mauris, Rd.","Guadalupe","506155","Perth","Mansfield-et-Pontefract","Honduras","2021-05-16 09-05-02"),
(91,"Ap #894-3677 Cras Street","Guadalupe","8901","Eschwege","Venlo","Cape Verde","2021-05-14 13-34-22"),(92,"P.O. Box 130, 7725 Sit Ave","Jardinez","98290-01285","Nakusp","Juiz de Fora","South Sudan","2021-05-16 09-05-02"),(93,"P.O. Box 596, 6102 Vehicula Street","Napateco","423048","Casalbuono","Hoeilaart","Morocco","2021-05-01 13-11-12"),(94,"Ap #502-8300 Purus, Rd.","Guadalupe","25321","Depok","Celle","Indonesia","2021-05-01 13-11-12"),(95,"232-7951 Gravida. Rd.","Jardinez","25-300","Columbia","Khimki","Gambia","2021-05-16 09-05-02"),(96,"7261 Fermentum Ave","Guadalupe","53848","Rabbi","Pitt Meadows","Peru","2021-05-01 13-11-12"),(97,"P.O. Box 162, 496 Urna. Street","Napateco","22433","Valparai","Carahue","Mexico","2021-05-16 09-05-02"),(98,"P.O. Box 114, 8470 Elit, Avenue","Napateco","10819","Kashmore","Strombeek-Bever","Pitcairn Islands","2021-05-14 13-34-22"),(99,"Ap #925-3847 Semper St.","Jardinez","74150","Castelnuovo Magra","Fernie","Palau","2021-05-01 13-11-12"),(100,"597-5810 Diam. Avenue","Napateco","496764","Huaral","Tramatza","Tanzania","2021-05-14 13-34-22");


INSERT INTO cliente 
VALUES (1,"Brady","Mcdaniel","Davis","7751351496","et@malesuada.co.uk","2021-06-01 01-06-52",1),(2,"Burke","Weaver","Santiago","7751351496","dictum@risusNuncac.org","2021-06-01 01-06-52",2),(3,"Trevor","Stephenson","Horne","7751563578","sodales@velit.edu","2021-05-30 14-49-55",3),(4,"Kaseem","Caldwell","Garner","7751563578","vitae.purus.gravida@Pellentesquetincidunt.edu","2021-05-30 14-49-55",4),(5,"Kamal","Briggs","Raymond","7751351496","Phasellus.ornare.Fusce@sed.co.uk","2021-05-30 14-49-55",5),(6,"Jack","Gamble","Bird","7751351496","sit@elitpellentesque.edu","2021-06-01 01-06-52",6),(7,"Jelani","Walter","Olson","7751563578","nascetur@lectusconvallis.com","2021-05-30 14-49-55",7),(8,"Uriel","Ashley","Gregory","7751351496","dui.in.sodales@etnetus.org","2021-06-01 01-06-52",8),(9,"Rooney","Bray","Tyler","7751351496","vitae@Donec.org","2021-06-01 01-06-52",9),(10,"Cadman","Buckley","Skinner","7751351496","inceptos@maurisrhoncusid.co.uk","2021-05-30 14-49-55",10),
(11,"Ferdinand","Hutchinson","Townsend","7751563578","velit.Cras.lorem@arcuSedeu.com","2021-05-30 14-49-55",11),(12,"Cairo","Horton","Massey","7751351496","metus.urna@semper.org","2021-05-30 14-49-55",12),(13,"Shad","Snyder","Bell","7751563578","dolor.sit@Suspendissetristiqueneque.net","2021-05-30 14-49-55",13),(14,"Patrick","Thomas","Lowe","7751563578","erat.volutpat@leoMorbi.net","2021-06-01 01-06-52",14),(15,"Malik","Blankenship","Christensen","7751563578","interdum.Sed@Quisque.net","2021-05-30 14-49-55",15),(16,"Cullen","Hubbard","Galloway","7751563578","in.consequat.enim@blandit.net","2021-05-30 14-49-55",16),(17,"Aaron","Salazar","Sloan","7751351496","risus.Duis.a@molestiepharetranibh.org","2021-05-30 14-49-55",17),(18,"Jin","Goodman","Ferrell","7751563578","Curabitur@hendrerit.edu","2021-05-30 14-49-55",18),(19,"Drake","Buck","Cantu","7751351496","nibh.Donec.est@semper.net","2021-06-01 01-06-52",19),(20,"Lane","Beasley","Rowe","7751351496","sed@tinciduntvehicularisus.com","2021-06-01 01-06-52",20),
(21,"Carter","Thomas","Santana","7751351496","blandit.viverra@lorem.org","2021-05-30 14-49-55",21),(22,"Gannon","Steele","Nieves","7751563578","nec.orci@etmagnis.ca","2021-05-30 14-49-55",22),(23,"Amos","Jensen","Hood","7751563578","at.egestas.a@enim.net","2021-06-01 01-06-52",23),(24,"Wing","Graves","Osborn","7751563578","lacus.pede.sagittis@pede.net","2021-06-01 01-06-52",24),(25,"Denton","Dotson","Colon","7751351496","Nunc.commodo@diamDuis.net","2021-06-01 01-06-52",25),(26,"Tyler","Cannon","Gates","7751563578","ut.molestie.in@Sed.co.uk","2021-06-01 01-06-52",26),(27,"Vincent","Fleming","Horn","7751351496","senectus.et@libero.ca","2021-05-30 14-49-55",27),(28,"Prescott","Bowen","Curry","7751563578","Mauris.quis.turpis@eleifendnondapibus.ca","2021-05-30 14-49-55",28),(29,"Silas","Salas","Small","7751351496","Mauris.blandit.enim@dui.edu","2021-05-30 14-49-55",29),(30,"Todd","York","Heath","7751351496","erat.neque@egettincidunt.ca","2021-06-01 01-06-52",30),
(31,"Beck","Baker","Prince","7751563578","tincidunt@aliquet.net","2021-05-30 14-49-55",31),(32,"Mannix","Harris","Craig","7751563578","metus.sit@lacusQuisque.net","2021-06-01 01-06-52",32),(33,"Abraham","Farmer","Dillard","7751563578","mauris.elit.dictum@nuncacmattis.com","2021-05-30 14-49-55",33),(34,"Hasad","Macias","Evans","7751563578","fringilla.ornare@montesnasceturridiculus.edu","2021-05-30 14-49-55",34),(35,"Griffin","Farmer","Sparks","7751351496","varius.et@vitae.co.uk","2021-05-30 14-49-55",35),(36,"Gage","Freeman","Higgins","7751563578","Nulla.interdum.Curabitur@Nullamvitae.net","2021-06-01 01-06-52",36),(37,"Oren","Berger","Hardin","7751563578","Curabitur@adipiscing.net","2021-05-30 14-49-55",37),(38,"Salvador","Fitzpatrick","Norris","7751351496","velit.Cras.lorem@NulladignissimMaecenas.co.uk","2021-05-30 14-49-55",38),(39,"Tate","Cummings","Foster","7751563578","Aenean@non.co.uk","2021-06-01 01-06-52",39),(40,"Kamal","Hensley","Kinney","7751351496","euismod.mauris@faucibusutnulla.org","2021-05-30 14-49-55",40),
(41,"Dane","Villarreal","Langley","7751351496","eleifend.nec@euarcuMorbi.edu","2021-05-30 14-49-55",41),(42,"Tarik","Mcintosh","Wagner","7751563578","arcu.Aliquam@arcuMorbisit.ca","2021-05-30 14-49-55",42),(43,"Bradley","Holt","Webster","7751563578","dignissim.magna@CurabiturdictumPhasellus.co.uk","2021-05-30 14-49-55",43),(44,"Lionel","Gibson","Dillon","7751563578","Praesent.eu.dui@Vestibulumaccumsan.ca","2021-06-01 01-06-52",44),(45,"Lewis","Payne","Romero","7751563578","adipiscing.enim@Cumsociisnatoque.co.uk","2021-05-30 14-49-55",45),(46,"Hoyt","Sloan","Russo","7751351496","non.massa@varius.edu","2021-05-30 14-49-55",46),(47,"Jason","Moreno","Buchanan","7751351496","ut.lacus@maurisMorbi.com","2021-05-30 14-49-55",47),(48,"Palmer","Cooke","Fischer","7751563578","sagittis.augue.eu@Nuncsed.co.uk","2021-06-01 01-06-52",48),(49,"Porter","Campbell","Cohen","7751351496","Sed.nec@dolorelitpellentesque.com","2021-05-30 14-49-55",49),(50,"Silas","Vasquez","Berger","7751563578","ac.metus.vitae@ornarefacilisiseget.net","2021-06-01 01-06-52",50),
(51,"Gil","Barton","Dixon","7751351496","enim.diam@Uttincidunt.edu","2021-05-30 14-49-55",51),(52,"Nissim","Vazquez","Lott","7751351496","sit.amet@mus.org","2021-05-30 14-49-55",52),(53,"Griffin","Castillo","Ratliff","7751563578","fames.ac@Vivamus.org","2021-06-01 01-06-52",53),(54,"Harding","Conner","Parrish","7751351496","eu@magnaDuis.co.uk","2021-05-30 14-49-55",54),(55,"Allistair","Skinner","Tate","7751563578","tellus.eu.augue@id.com","2021-05-30 14-49-55",55),(56,"Castor","Macdonald","Pate","7751351496","Vivamus.nisi.Mauris@in.org","2021-05-30 14-49-55",56),(57,"Armando","Pate","Ayala","7751351496","dictum.Phasellus@lacusNulla.org","2021-05-30 14-49-55",57),(58,"Myles","Hartman","Waters","7751563578","at@aceleifendvitae.ca","2021-05-30 14-49-55",58),(59,"Oscar","Sargent","Wynn","7751351496","tristique@egestasadui.co.uk","2021-06-01 01-06-52",59),(60,"Allistair","Shaffer","Mckee","7751351496","ac.orci@lorem.net","2021-06-01 01-06-52",60),
(61,"Jacob","Pierce","Goodman","7751563578","imperdiet.ullamcorper@ullamcorperviverra.co.uk","2021-06-01 01-06-52",61),(62,"Kato","Nieves","Ratliff","7751563578","a@Aeneaneget.edu","2021-05-30 14-49-55",62),(63,"Barrett","Savage","Forbes","7751351496","lorem@luctus.net","2021-06-01 01-06-52",63),(64,"Gavin","Brooks","Mathews","7751351496","magnis.dis.parturient@eteuismod.net","2021-05-30 14-49-55",64),(65,"Jermaine","Thompson","Flynn","7751563578","dolor@Etiamvestibulum.ca","2021-05-30 14-49-55",65),(66,"Blake","Manning","Morse","7751351496","Aliquam@nonummy.com","2021-06-01 01-06-52",66),(67,"Sean","Camacho","Nunez","7751351496","Cras@aliquet.co.uk","2021-06-01 01-06-52",67),(68,"Alan","Murray","Mercer","7751563578","Aenean.euismod.mauris@congueturpis.ca","2021-05-30 14-49-55",68),(69,"Griffin","Deleon","Guerra","7751563578","Nulla.tempor@duiin.net","2021-06-01 01-06-52",69),(70,"Ferris","Schneider","Odom","7751351496","pharetra@montes.edu","2021-05-30 14-49-55",70),
(71,"Dale","Foster","Bush","7751351496","Quisque.purus.sapien@arcuacorci.net","2021-05-30 14-49-55",71),(72,"Wallace","Shelton","Newton","7751351496","Curabitur.vel@dui.ca","2021-06-01 01-06-52",72),(73,"Thomas","Anderson","Combs","7751563578","id.mollis@libero.com","2021-05-30 14-49-55",73),(74,"Dennis","Austin","Burris","7751563578","Nunc@Aliquamadipiscing.ca","2021-06-01 01-06-52",74),(75,"Garth","David","Madden","7751351496","In@non.ca","2021-06-01 01-06-52",75),(76,"Clayton","Snider","Byrd","7751563578","eu.placerat.eget@Aliquamornarelibero.ca","2021-05-30 14-49-55",76),(77,"Amery","Trevino","Bean","7751351496","eleifend@urnaetarcu.net","2021-06-01 01-06-52",77),(78,"Brandon","Tucker","Christian","7751563578","sem.egestas.blandit@justo.org","2021-06-01 01-06-52",78),(79,"Jackson","Molina","Contreras","7751563578","nonummy@bibendum.net","2021-05-30 14-49-55",79),(80,"Brock","Vasquez","Stout","7751351496","tempor.bibendum@Mauriseuturpis.edu","2021-06-01 01-06-52",80),
(81,"Lucius","Shepherd","Blackburn","7751563578","eleifend.nunc.risus@egetdictum.net","2021-06-01 01-06-52",81),(82,"Carl","Tate","Bender","7751351496","sociis.natoque.penatibus@lobortistellus.edu","2021-05-30 14-49-55",82),(83,"Xenos","Monroe","Ware","7751563578","felis.adipiscing@Duisgravida.co.uk","2021-06-01 01-06-52",83),(84,"Neville","Carrillo","Fletcher","7751563578","turpis@tristiqueaceleifend.co.uk","2021-06-01 01-06-52",84),(85,"Calvin","Barber","Levine","7751351496","arcu.Aliquam.ultrices@loremsit.co.uk","2021-05-30 14-49-55",85),(86,"Edward","Vang","Drake","7751351496","Cras.vehicula@ultriciesligulaNullam.net","2021-05-30 14-49-55",86),(87,"Hoyt","Valentine","Farrell","7751563578","vestibulum.lorem.sit@gravidamolestie.net","2021-06-01 01-06-52",87),(88,"Felix","Jordan","Garza","7751563578","metus@non.org","2021-05-30 14-49-55",88),(89,"Ezekiel","Potter","Whitaker","7751563578","Curabitur@egestasadui.com","2021-06-01 01-06-52",89),(90,"Burton","Boone","Eaton","7751351496","turpis.non@imperdieterat.com","2021-06-01 01-06-52",90),
(91,"Hedley","Jordan","Lewis","7751563578","felis@gravidamaurisut.com","2021-06-01 01-06-52",91),(92,"Axel","Wilkinson","Morris","7751351496","adipiscing.ligula@risus.ca","2021-05-30 14-49-55",92),(93,"Nehru","Pugh","Dunn","7751351496","a@dapibusgravida.com","2021-05-30 14-49-55",93),(94,"Kevin","Rhodes","Bennett","7751563578","augue.malesuada.malesuada@posuere.edu","2021-05-30 14-49-55",94),(95,"Harlan","Stephens","Bowman","7751563578","Pellentesque.habitant.morbi@ligula.com","2021-06-01 01-06-52",95),(96,"Ivor","Kerr","Burks","7751563578","ac.orci@orci.edu","2021-05-30 14-49-55",96),(97,"Kibo","Sawyer","Osborne","7751351496","nibh@tempusscelerisque.org","2021-05-30 14-49-55",97),(98,"Maxwell","Chambers","Ortega","7751563578","mauris.sagittis.placerat@tempuseuligula.com","2021-06-01 01-06-52",98),(99,"Kato","Mcguire","Gay","7751563578","Vivamus.sit@ullamcorper.com","2021-06-01 01-06-52",99),(100,"Drake","Torres","Rosales","7751563578","euismod.est.arcu@Craslorem.co.uk","2021-06-01 01-06-52",100);


SELECT*FROM cliente,direccion WHERE cliente.id_direccion = direccion.id_direccion;