-- MySQL dump 10.13  Distrib 5.7.10, for osx10.9 (x86_64)
--
-- Host: localhost    Database: youmiamtest
-- ------------------------------------------------------
-- Server version	5.7.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(9) DEFAULT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,41,'elit elit fermentum','cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit'),(2,27,'ipsum nunc id enim. Curabitur massa. Vestibulum','tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,'),(3,99,'Donec nibh. Quisque nonummy ipsum non','et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc'),(4,51,'dui. Fusce aliquam, enim nec tempus scelerisque,','eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus'),(5,12,'cubilia Curae; Phasellus ornare. Fusce mollis.','Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla'),(6,92,'amet ante. Vivamus','risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante'),(7,7,'ornare, lectus ante dictum','ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,'),(8,64,'viverra. Donec tempus, lorem fringilla ornare placerat, orci','turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit'),(9,90,'mollis vitae, posuere at,','Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis.'),(10,79,'odio. Aliquam vulputate ullamcorper','dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(9) DEFAULT NULL,
  `article_id` mediumint(9) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,71,5,'Donec at'),(2,88,7,'consectetuer adipiscing elit.'),(3,11,8,'mauris. Integer sem elit, pharetra'),(4,19,8,'ante lectus convallis est, vitae sodales nisi magna sed'),(5,64,6,'In at pede. Cras vulputate velit eu sem.'),(6,67,8,'Donec luctus aliquet odio. Etiam'),(7,13,9,'Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.'),(8,41,6,'fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit'),(9,33,10,'mauris ut mi. Duis risus odio,'),(10,23,9,'in, dolor. Fusce feugiat. Lorem ipsum dolor'),(11,20,10,'ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu'),(12,36,6,'eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent'),(13,41,6,'Etiam bibendum fermentum metus. Aenean sed pede nec@a:1:a@'),(14,83,5,'sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue'),(15,83,7,'eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit'),(16,73,10,'ullamcorper. Duis'),(17,42,4,'dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut,@a:4:a@'),(18,21,8,'sem semper erat, in consectetuer ipsum nunc'),(19,67,1,'augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,'),(20,1,10,'a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer'),(21,79,10,'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis'),(22,43,2,'Curabitur'),(23,10,8,'justo. Proin non massa non ante bibendum ullamcorper.@a:7:a@'),(24,50,3,'nec, leo.'),(25,65,7,'non'),(26,42,6,'tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque@a:1:a@'),(27,62,5,'nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec'),(28,47,2,'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas'),(29,17,2,'dui augue eu tellus. Phasellus elit'),(30,65,8,'faucibus lectus, a sollicitudin orci'),(31,85,9,'conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque'),(32,67,6,'sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.'),(33,8,2,'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis'),(34,27,2,'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui.@a:4:a@'),(35,28,9,'ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem'),(36,4,5,'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu'),(37,3,9,'lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat'),(38,14,4,'eros non enim commodo hendrerit. Donec porttitor'),(39,91,2,'amet, risus. Donec nibh enim, gravida@a:1:a@'),(40,76,6,'ut erat.'),(41,60,6,'dignissim lacus. Aliquam rutrum lorem@a:9:a@'),(42,83,8,'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa'),(43,11,10,'dapibus gravida.'),(44,69,6,'eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum'),(45,95,3,'mi tempor'),(46,84,9,'Vestibulum ante ipsum primis in faucibus orci luctus et@a:7:a@'),(47,67,9,'eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc'),(48,62,5,'quis, pede. Praesent eu'),(49,67,7,'ante. Nunc mauris sapien,'),(50,62,8,'tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.'),(51,46,1,'vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum@a:4:a@'),(52,55,8,'lacus. Etiam@a:1:a@'),(53,57,3,'Cras eu'),(54,100,10,'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat'),(55,18,5,'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum'),(56,24,4,'sagittis. Nullam'),(57,25,5,'ut, molestie in, tempus eu, ligula. Aenean'),(58,86,8,'gravida'),(59,31,10,'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi'),(60,65,10,'facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce'),(61,19,7,'neque. Sed eget'),(62,30,8,'consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet'),(63,68,9,'molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia'),(64,4,4,'sed sem egestas blandit. Nam nulla magna, malesuada vel,'),(65,48,5,'dis@a:1:a@'),(66,12,4,'eget lacus. Mauris non dui nec urna suscipit nonummy.'),(67,72,2,'Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,'),(68,56,9,'id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin@a:4:a@'),(69,23,6,'nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.@a:7:a@'),(70,55,5,'lorem tristique'),(71,58,9,'purus. Duis elementum, dui quis'),(72,73,7,'sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor.'),(73,15,4,'Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis'),(74,98,4,'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor.'),(75,94,10,'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,'),(76,69,5,'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi'),(77,73,10,'facilisis eget,'),(78,13,1,'leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida@a:1:a@'),(79,28,2,'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec'),(80,82,8,'nulla. Integer vulputate,'),(81,64,4,'fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam'),(82,46,9,'sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris@a:9:a@'),(83,53,3,'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat'),(84,29,2,'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.'),(85,78,6,'nec urna et arcu imperdiet ullamcorper.@a:4:a@'),(86,29,4,'Suspendisse ac metus'),(87,17,10,'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum'),(88,27,1,'accumsan sed, facilisis vitae, orci.'),(89,93,6,'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget'),(90,13,7,'interdum. Curabitur dictum. Phasellus in'),(91,1,1,'non, egestas a, dui. Cras@a:1:a@'),(92,84,1,'magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum@a:7:a@'),(93,41,2,'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec'),(94,79,8,'convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla'),(95,74,1,'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo'),(96,32,6,'Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero'),(97,4,3,'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in,'),(98,7,2,'faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at,'),(99,27,4,'mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at'),(100,59,10,'euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `follower` mediumint(9) DEFAULT NULL,
  `following` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,64,36),(2,60,25),(3,44,53),(4,8,59),(5,27,99),(6,32,62),(7,48,6),(8,47,88),(9,99,42),(10,72,3),(11,11,10),(12,52,41),(13,22,39),(14,77,40),(15,100,68),(16,27,88),(17,2,18),(18,4,18),(19,74,91),(20,47,63),(21,35,82),(22,15,9),(23,56,15),(24,47,2),(25,28,80),(26,19,28),(27,7,66),(28,56,20),(29,5,64),(30,28,38),(31,55,67),(32,78,10),(33,6,86),(34,68,7),(35,41,50),(36,88,92),(37,95,69),(38,15,32),(39,20,67),(40,8,57),(41,92,39),(42,96,31),(43,50,68),(44,70,50),(45,32,25),(46,53,71),(47,23,8),(48,76,32),(49,12,38),(50,62,65),(51,58,32),(52,69,95),(53,35,21),(54,17,63),(55,41,92),(56,48,12),(57,100,4),(58,35,29),(59,43,93),(60,18,47),(61,38,14),(62,73,98),(63,77,64),(64,65,6),(65,46,38),(66,62,21),(67,22,99),(68,67,56),(69,29,15),(70,40,13),(71,15,32),(72,27,14),(73,14,30),(74,78,86),(75,16,78),(76,38,61),(77,69,88),(78,8,96),(79,82,67),(80,43,10),(81,73,39),(82,79,72),(83,78,44),(84,93,31),(85,12,67),(86,35,41),(87,42,27),(88,95,19),(89,72,51),(90,98,85),(91,88,48),(92,33,30),(93,40,35),(94,89,77),(95,99,6),(96,8,33),(97,28,13),(98,20,80),(99,100,78),(100,16,93);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gretchen','a.facilisis@milorem.ca','06 35 63 46 90'),(2,'Allistair','Pellentesque.habitant.morbi@posuereenim.net','06 61 76 06 04'),(3,'Dorothy','ullamcorper@mollisInteger.org','06 97 41 50 80'),(4,'Naomi','morbi.tristique@eteuismodet.org','06 72 57 86 23'),(5,'Chanda','mauris.a@semperegestas.org','06 40 13 53 43'),(6,'Brynne','semper.egestas.urna@aliquetsem.net','06 59 01 86 40'),(7,'Mari','Vivamus.sit@semconsequat.net','06 17 07 90 75'),(8,'Tatiana','Cras.convallis@arcuetpede.org','06 65 94 13 90'),(9,'Ruth','lacus@Curabiturmassa.net','06 05 63 55 71'),(10,'Ryan','vehicula.Pellentesque.tincidunt@loremipsumsodales.com','06 16 12 65 03'),(11,'Nerea','Sed@mauris.co.uk','06 95 68 21 72'),(12,'Ruth','tellus.eu.augue@eu.ca','06 45 18 41 01'),(13,'Martina','dolor.nonummy.ac@scelerisque.org','06 05 24 78 62'),(14,'Dylan','nibh.lacinia@Phasellus.ca','06 74 60 42 51'),(15,'Roanna','nisi.Cum@orciluctus.org','06 19 25 70 37'),(16,'Ulla','est.mollis.non@neque.com','06 44 26 50 92'),(17,'Todd','massa@elementumsemvitae.ca','06 13 27 20 86'),(18,'Ina','at.arcu.Vestibulum@nullaInteger.org','06 50 75 24 55'),(19,'Beau','ridiculus@eleifend.ca','06 28 58 94 61'),(20,'Igor','ac.facilisis@egetodioAliquam.ca','06 14 41 84 61'),(21,'Harrison','rutrum@Cras.org','06 93 78 83 08'),(22,'Quon','auctor.quis@diameudolor.com','06 82 75 98 42'),(23,'Alana','lobortis.ultrices@necurna.ca','06 16 90 42 48'),(24,'Lillian','auctor@Donecporttitortellus.org','06 27 25 69 95'),(25,'Lee','Mauris@nislsem.ca','06 57 56 21 00'),(26,'Iola','ut.cursus@tinciduntorciquis.org','06 75 13 09 12'),(27,'Avram','Proin.mi@Maecenasiaculis.com','06 63 29 67 07'),(28,'Todd','sit.amet@mi.ca','06 15 45 09 41'),(29,'Lane','natoque.penatibus@Curabitursedtortor.co.uk','06 29 50 55 70'),(30,'Quamar','odio@liberoDonecconsectetuer.net','06 48 09 23 72'),(31,'Hamilton','cursus.purus.Nullam@a.net','06 59 32 09 49'),(32,'Elaine','Duis.at.lacus@enimcommodo.net','06 89 13 14 11'),(33,'Aubrey','Maecenas.ornare.egestas@nonenimcommodo.co.uk','06 67 78 51 59'),(34,'Shad','Ut@nibh.ca','06 84 84 11 37'),(35,'Miriam','vitae.risus.Duis@urnaconvallis.ca','06 77 26 42 75'),(36,'Oprah','iaculis.lacus.pede@facilisis.com','06 68 44 32 67'),(37,'Cade','Phasellus.dolor.elit@egetdictumplacerat.ca','06 06 96 17 27'),(38,'Dalton','at.augue.id@sitametultricies.ca','06 16 40 10 28'),(39,'Jared','euismod@quis.net','06 41 50 41 11'),(40,'Gisela','eu.lacus.Quisque@pulvinararcu.com','06 88 17 43 79'),(41,'Kerry','placerat.orci@dictumplacerat.com','06 21 42 35 10'),(42,'Hakeem','mi@Maurisnulla.co.uk','06 13 39 33 59'),(43,'Minerva','Sed.et@cursus.co.uk','06 06 95 02 63'),(44,'Hope','amet@ut.org','06 07 17 45 42'),(45,'Thane','erat.neque@Phasellus.edu','06 09 91 18 84'),(46,'Taylor','in@tempusrisusDonec.com','06 22 43 12 40'),(47,'Shafira','Suspendisse.eleifend@diamProin.ca','06 91 90 02 50'),(48,'Randall','turpis.egestas@faucibusleo.edu','06 51 04 51 00'),(49,'Berk','nisi.Aenean@ornareelit.net','06 05 76 86 62'),(50,'Tana','diam.vel@faucibusidlibero.edu','06 49 28 98 85'),(51,'Keelie','tellus@non.com','06 76 47 74 77'),(52,'Vance','sed.sapien.Nunc@Maecenasornareegestas.com','06 09 45 99 97'),(53,'Jasmine','sit.amet@Fuscefeugiat.net','06 93 68 87 23'),(54,'Jeanette','euismod@ligulaNullam.edu','06 77 02 66 97'),(55,'Kitra','augue.scelerisque.mollis@Suspendissecommodotincidunt.co.uk','06 38 18 81 41'),(56,'Elvis','Vivamus@etmagnis.edu','06 08 48 74 16'),(57,'Courtney','id.mollis@libero.edu','06 94 84 73 77'),(58,'Marsden','amet@idsapienCras.ca','06 44 29 41 70'),(59,'Kiona','accumsan.sed.facilisis@lectuspede.co.uk','06 56 08 44 78'),(60,'Quynn','fringilla@convallisconvallis.edu','06 31 42 19 07'),(61,'Janna','pharetra@ultricessit.ca','06 54 20 30 45'),(62,'Paul','ante.ipsum@in.edu','06 38 14 99 54'),(63,'Jemima','in.faucibus.orci@Nullafacilisi.net','06 77 40 75 82'),(64,'Shea','primis.in.faucibus@Loremipsum.net','06 08 13 69 18'),(65,'Aimee','at.auctor@vel.ca','06 04 40 81 78'),(66,'Clementine','neque@vulputatelacusCras.co.uk','06 65 06 28 95'),(67,'Nicole','eros.turpis@tortordictumeu.edu','06 48 26 01 51'),(68,'Camille','magna.malesuada@non.edu','06 71 76 67 05'),(69,'Amelia','augue.eu@ornare.net','06 90 28 80 26'),(70,'Nissim','Quisque.imperdiet.erat@acsem.com','06 61 61 32 24'),(71,'Sierra','arcu.Sed@vitaesemper.net','06 29 54 26 74'),(72,'Tatyana','et.netus@sagittisNullam.com','06 35 85 85 09'),(73,'Todd','pede.nonummy@dictum.net','06 80 37 92 29'),(74,'Aimee','Aliquam.auctor@disparturientmontes.ca','06 57 45 16 02'),(75,'Buckminster','hendrerit@mi.com','06 54 71 10 59'),(76,'Emma','Sed.auctor.odio@elementumategestas.ca','06 62 29 38 99'),(77,'Kitra','nibh.sit.amet@velit.ca','06 25 93 44 98'),(78,'Regan','sit@sociis.com','06 44 93 45 94'),(79,'Cathleen','mauris.sapien.cursus@loremsitamet.net','06 80 75 04 69'),(80,'Hadley','Pellentesque.habitant@elementumpurusaccumsan.org','06 41 69 03 44'),(81,'Cheyenne','mi.felis.adipiscing@magnisdisparturient.ca','06 70 07 04 74'),(82,'Paki','Fusce@Loremipsum.co.uk','06 89 52 55 51'),(83,'Gillian','est.Nunc@magnaUttincidunt.net','06 06 70 16 19'),(84,'Nelle','mi@eratvolutpat.com','06 91 42 32 23'),(85,'Vladimir','aliquam.arcu@magnis.co.uk','06 45 49 14 93'),(86,'Cailin','eget@dapibusidblandit.co.uk','06 78 34 64 97'),(87,'Mufutau','tristique@accumsaninterdumlibero.net','06 53 21 89 27'),(88,'Keane','et.netus@convalliserat.com','06 20 22 72 46'),(89,'Uma','quis@estmaurisrhoncus.ca','06 60 55 87 22'),(90,'Henry','a.mi.fringilla@ipsumsodalespurus.com','06 17 56 64 73'),(91,'Scarlett','non@Donecestmauris.ca','06 37 11 10 24'),(92,'Carl','nunc@maurisaliquameu.edu','06 62 74 63 64'),(93,'Shea','non@scelerisqueduiSuspendisse.co.uk','06 10 35 97 81'),(94,'Colleen','Donec@augueutlacus.org','06 52 76 26 47'),(95,'Imelda','egestas.ligula.Nullam@scelerisquelorem.com','06 41 74 62 14'),(96,'Coby','Curae@Nuncut.edu','06 54 62 35 94'),(97,'Xander','luctus.sit@Nam.ca','06 40 97 01 29'),(98,'Penelope','Suspendisse.sagittis.Nullam@nisidictum.com','06 00 62 91 13'),(99,'Clark','elementum.dui.quis@Crasconvallisconvallis.co.uk','06 08 29 41 81'),(100,'Patricia','Suspendisse.aliquet@Nullam.ca','06 28 71 09 51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-12 16:50:16
