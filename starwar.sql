DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `name` varchar(100) DEFAULT NULL,
  `race` varchar(10) DEFAULT NULL,
  `homeworld` varchar(20) DEFAULT NULL,
  `affiliation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `characters` WRITE;
INSERT INTO `characters` VALUES ('Han Solo','Human','Corellia','rebels'),('Princess Leia','Human','Alderaan','rebels'),('Luke Skywalker','Human','Tatooine','rebels'),('Darth Vader','Human','Unknown','empire'),('Chewbacca','Wookie','Kashyyyk','rebels'),('C-3 PO','Droid','Unknown','rebels'),('R2-D2','Droid','Unknown','rebels'),('Obi-Wan Kanobi','Human','Tatooine','rebels'),('Lando Calrissian','Human','Unknown','rebels'),('Yoda','Unknown','Unknown','neutral'),('Jabba the Hutt','Hutt','Unknown','neutral'),('Owen Lars','Human','Tatooine','neutral'),('Rancor','Rancor','Unknown','neutral');
UNLOCK TABLES;

DROP TABLE IF EXISTS `planets`;
CREATE TABLE `planets` (
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `affiliation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `planets` WRITE;

INSERT INTO `planets` VALUES ('Tatooine','desert','neutral'),('Hoth','ice','rebels'),('Dagobah','swamp','neutral'),('Death Star','artificial','empire'),('Endor','forest','neutral'),('Bespin','gas','neutral'),('Star Destroyer','artificial','empire'),('Kashyyyk','forest','rebels'),('Corellia','temperate','rebels'),('Alderaan','temperate','rebels');

UNLOCK TABLES;


DROP TABLE IF EXISTS `time_table`;

CREATE TABLE `time_table` (
  `character_name` varchar(100) DEFAULT NULL,
  `planet_name` varchar(100) DEFAULT NULL,
  `movie` int(11) DEFAULT NULL,
  `time_of_arrival` int(11) DEFAULT NULL,
  `time_of_departure` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `time_table` WRITE;

INSERT INTO `time_table` VALUES ('Yoda','Dagobah',1,0,10),('Yoda','Dagobah',2,0,10),('Yoda','Dagobah',3,0,5),('Rancor','Tatooine',1,0,10),('Rancor','Tatooine',2,0,10),('Rancor','Tatooine',3,0,3),('Owen Lars','Tatooine',1,0,1),('Obi-Wan Kanobi','Tatooine',1,0,2),('Obi-Wan Kanobi','Star Destroyer',1,3,5),('Darth Vader','Star Destroyer',1,0,9),('Darth Vader','Death Star',1,9,10),('Darth Vader','Hoth',2,3,4),('Darth Vader','Bespin',2,5,10),('Darth Vader','Death Star',3,1,9),('Han Solo','Tatooine',1,0,2),('Han Solo','Star Destroyer',1,3,5),('Han Solo','Bespin',2,5,9),('Han Solo','Tatooine',3,0,2),('Han Solo','Endor',3,5,10),('Jabba the Hutt','Tatooine',1,0,10),('Jabba the Hutt','Tatooine',2,0,10),('Jabba the Hutt','Tatooine',3,0,2),('Lando Calrissian','Bespin',2,0,9),('Lando Calrissian','Endor',3,9,10),('Lando Calrissian','Tatooine',3,0,2),('Princess Leia','Star Destroyer',1,1,5),('Princess Leia','Hoth',2,0,4),('Han Solo','Hoth',2,0,4),('Princess Leia','Bespin',2,5,9),('Princess Leia','Tatooine',3,0,2),('Princess Leia','Endor',3,5,10),('Luke Skywalker','Tatooine',1,0,2),('Luke Skywalker','Star Destroyer',1,3,5),('Luke Skywalker','Death Star',1,9,10),('Luke Skywalker','Hoth',2,0,2),('Luke Skywalker','Dagobah',2,4,8),('Luke Skywalker','Bespin',2,8,10),('Luke Skywalker','Tatooine',3,1,2),('Luke Skywalker','Endor',3,5,8),('Luke Skywalker','Death Star',3,8,10),('Luke Skywalker','Dagobah',3,4,5),('R2-D2','Dagobah',3,4,5),('R2-D2','Dagobah',2,4,8),('R2-D2','Bespin',2,8,10),('R2-D2','Endor',3,5,8),('R2-D2','Hoth',2,0,2),('C-3 PO','Tatooine',1,0,2),('C-3 PO','Tatooine',3,0,2),('C-3 PO','Hoth',2,0,2),('Chewbacca','Tatooine',1,0,2);

UNLOCK TABLES;

