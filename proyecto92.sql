/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.19-MariaDB : Database - proyecto92
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto92` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `proyecto92`;

/*Table structure for table `alumnos` */

DROP TABLE IF EXISTS `alumnos`;

CREATE TABLE `alumnos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `matricula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alumnos_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `alumnos` */

insert  into `alumnos`(`id`,`matricula`,`nombre`,`app`,`gen`,`fn`,`img`,`email`,`pass`,`created_at`,`updated_at`) values 
(1,'2170592','Maryse','Balistreri','Masculino','2016-03-26','bgoyette@yahoo.com','bertram43@hill.com','utvt92mf','1990-02-01 14:48:37','2005-05-09 09:34:21'),
(2,'2194946','Lee','Waters','Femenino','1982-12-03','ldare@gaylord.com','sylvia60@funk.biz','utvt54bh','2010-11-27 11:02:48','1975-08-04 12:22:53'),
(3,'2151630','Humberto','Huel','Masculino','1976-03-21','godfrey15@gmail.com','anthony20@murphy.biz','utvt08hu','2008-12-21 01:34:14','2019-01-24 00:37:35'),
(4,'2191278','Ocie','Ratke','Masculino','2004-06-06','mitchell.zakary@deckow.com','cruz74@blick.com','utvt94ih','1989-10-25 17:19:59','1975-04-17 03:54:10'),
(5,'2112608','Rusty','Runolfsdottir','Femenino','1993-06-03','gladyce.rempel@yahoo.com','derrick38@gmail.com','utvt71xf','1993-12-21 04:26:35','1994-05-21 11:16:44'),
(6,'2117314','Gabrielle','Carroll','Masculino','2000-05-19','ykoepp@gmail.com','kbruen@bernier.biz','utvt77yh','1991-07-12 10:06:21','1988-12-25 15:22:32'),
(7,'2134925','Franco','Mosciski','Femenino','2016-04-28','erunte@yahoo.com','grimes.kenyon@romaguera.biz','utvt86ib','1999-12-27 08:15:58','1982-01-20 01:13:55'),
(9,'2118364','Mohammed','Becker','Masculino','1976-12-30','lbreitenberg@gmail.com','gyost@gmail.com','utvt99vv','1991-12-01 16:21:33','2019-09-15 01:17:49'),
(10,'2177476','Ollie','Hegmann','Femenino','1994-01-25','torphy.ashley@hotmail.com','sarah.brown@jacobs.info','utvt46or','1982-11-13 10:55:50','2014-10-14 11:32:37'),
(11,'2176488','Antwon','Wolf','Masculino','2014-04-06','leslie.kunde@yahoo.com','hobart.cruickshank@hotmail.com','utvt75cy','2015-11-30 04:32:02','2021-07-22 01:08:48'),
(12,'2184132','Carlos','Murphy','Masculino','2020-06-14','kylie.feil@hotmail.com','tveum@rau.com','utvt82cl','2013-11-28 03:14:24','2021-07-22 01:08:41'),
(13,'2116567','Madie','Blanda','Masculino','2010-01-17','gmedhurst@yahoo.com','gaylord.tyler@yahoo.com','utvt16zs','2009-10-27 12:06:42','1973-05-31 01:37:15'),
(14,'2113209','Malinda','Bruen','Masculino','2020-05-12','schamberger.harold@yahoo.com','lglover@stoltenberg.com','utvt93nr','1991-02-28 08:05:10','2018-11-24 06:31:27'),
(15,'2114216','Novella','Hoeger','Masculino','2003-03-10','joel.blanda@effertz.net','kaitlyn.quitzon@hodkiewicz.com','utvt56bw','1979-09-20 22:21:43','1998-02-20 20:30:52'),
(16,'2205589','Baron','Jenkins','Masculino','2013-10-13','joyce47@gerhold.info','douglas.paxton@yahoo.com','utvt23go','2004-02-26 08:42:49','2009-07-16 13:59:18'),
(17,'2176535','Mayra','Osinski','Femenino','2014-01-25','salvatore77@crist.com','zfritsch@grant.com','utvt81sd','2012-11-07 15:34:26','2000-03-29 09:49:56'),
(18,'2201003','Freddie','Feil','Femenino','2004-07-11','rmills@hayes.com','walter.darren@roob.com','utvt02xj','1982-07-27 20:41:13','1972-03-06 00:49:07'),
(19,'2158811','Howell','Fadel','Femenino','1993-01-11','elmore00@hotmail.com','friesen.ethel@wilkinson.net','utvt66ry','1972-05-07 08:30:29','2008-02-28 03:01:48'),
(20,'2171328','Ross','Smitham','Masculino','1977-12-20','pnienow@yahoo.com','grady.donnelly@hotmail.com','utvt69hs','1972-05-03 01:06:00','1993-10-25 04:44:27'),
(21,'2193381','Bell','Fadel','Masculino','2008-06-22','amelia.nitzsche@yahoo.com','yrunolfsdottir@lehner.biz','utvt01aj','2001-03-11 16:58:43','1992-06-03 02:54:12'),
(22,'2161983','Phyllis','Kunze','Femenino','1973-01-19','gordon.kirlin@yahoo.com','pouros.christophe@sanford.com','utvt39wv','2013-05-27 07:54:08','2015-06-19 07:30:18'),
(23,'2175679','Lempi','Corkery','Femenino','1998-12-14','walter.julius@dickinson.com','sipes.hassan@ratke.com','utvt81ae','1974-03-24 12:37:45','1975-09-01 22:15:28'),
(24,'2115757','Jordane','Lemke','Masculino','1994-11-07','camden.barrows@robel.net','pablo56@hotmail.com','utvt41ya','1981-11-12 08:33:45','2003-04-20 05:00:24'),
(25,'2113007','Alphonso','Bartell','Femenino','2005-01-11','corrine08@yahoo.com','brandyn.wilderman@yahoo.com','utvt98au','2003-06-01 04:37:30','2008-09-12 03:09:10'),
(26,'2159656','Kacey','Farrell','Femenino','1991-03-11','mertie.klocko@schumm.biz','ernesto51@yahoo.com','utvt88ay','1997-05-17 16:48:11','1983-12-31 21:52:19'),
(27,'2191847','Linnie','Shields','Femenino','1981-08-22','maxime.weissnat@satterfield.org','gino10@hotmail.com','utvt12ze','1978-01-28 18:34:58','1970-07-02 09:29:58'),
(28,'2141270','Lesly','Nitzsche','Masculino','1981-10-01','omarks@yahoo.com','schultz.alva@grimes.com','utvt22dx','2007-09-08 20:07:35','1977-03-15 06:30:24'),
(29,'2133444','Joseph','Hessel','Masculino','2018-06-18','hrodriguez@kerluke.biz','wilma.gutkowski@hotmail.com','utvt87pg','2014-05-18 10:12:37','1984-09-07 13:20:45'),
(30,'2123385','Kaden','Monahan','Masculino','1977-03-17','ktowne@graham.biz','braun.ludie@yahoo.com','utvt03ec','2007-11-15 05:51:38','2019-12-13 16:20:14'),
(31,'2201665','Joan','Jast','Masculino','2011-01-24','dion60@beahan.com','gunner.aufderhar@hotmail.com','utvt61rl','1976-11-30 01:52:57','1994-01-30 15:58:37'),
(32,'2117714','Zola','Dicki','Femenino','1998-07-14','camila.wiegand@zboncak.com','briana82@gmail.com','utvt96xw','1993-02-13 19:45:45','1977-03-07 15:11:54'),
(33,'2141812','Vilma','O\'Reilly','Masculino','2002-08-06','aniya02@moen.net','carter02@yahoo.com','utvt09co','1982-11-19 09:39:13','1999-05-03 21:50:19'),
(35,'2123494','Myron','Weber','Masculino','2010-04-24','hane.israel@brekke.biz','wolff.althea@yahoo.com','utvt37dl','1991-05-10 16:29:29','1994-01-11 09:43:22'),
(36,'2200109','Madyson','Maggio','Femenino','2020-07-03','emanuel06@cole.com','dillan.kozey@hotmail.com','utvt59tc','1996-02-15 05:01:58','1997-11-28 14:40:51'),
(37,'2156945','Marietta','White','Femenino','1988-01-19','ledner.zella@yahoo.com','egusikowski@pacocha.biz','utvt44tx','2001-08-04 02:03:34','2021-04-17 13:38:08'),
(38,'2143430','Eugenia','Rempel','Masculino','1999-11-05','crona.name@hotmail.com','ulices63@fisher.net','utvt89el','1981-07-24 07:21:32','1998-02-28 09:00:17'),
(39,'2192118','Aracely','Johnston','Femenino','2003-12-26','20210722_002618_manufactura2.png','tmayert@hotmail.com','utvt65tp','2020-05-20 04:58:16','2021-07-22 00:26:18'),
(40,'2189084','Dorothea','Hand','Masculino','2011-10-17','conn.victoria@yahoo.com','estell24@yahoo.com','utvt01zp','1998-11-11 02:30:58','1974-06-28 19:22:19'),
(41,'2112944','Dan','O\'Reilly','Femenino','1971-07-09','duane14@franecki.com','fheaney@gmail.com','utvt96cm','1979-08-24 04:26:53','1990-09-16 09:26:26'),
(42,'2160489','Newell','Lindgren','Masculino','1998-07-09','sbuckridge@gmail.com','wuckert.javon@hirthe.biz','utvt26iv','1989-12-01 03:49:26','2020-06-29 20:40:07'),
(43,'2137136','Enola','Mraz','Femenino','1988-12-19','dorcas99@gmail.com','cameron.graham@gmail.com','utvt29kt','2005-08-11 10:30:37','2014-12-22 20:50:46'),
(44,'2178758','Conor','Adams','Masculino','1971-11-25','may.kuhlman@koepp.info','lizeth.lesch@yahoo.com','utvt74zd','2000-01-09 21:19:26','1983-11-21 20:55:19'),
(45,'2191217','Cruz','Morar','Masculino','1984-08-11','margarete76@braun.net','fredy83@yahoo.com','utvt40ua','2007-01-10 21:55:30','1989-01-07 02:55:05'),
(46,'2138658','Madilyn','Rutherford','Femenino','2021-06-21','ychristiansen@hotmail.com','lydia.konopelski@yahoo.com','utvt33rd','1993-03-08 16:33:33','1985-03-13 04:54:38'),
(47,'2135020','Marlon','Rutherford','Masculino','2018-01-01','hamill.vernie@yahoo.com','janie.homenick@hotmail.com','utvt36ki','1972-01-14 15:49:04','1971-03-06 16:37:46'),
(48,'2144621','Owen','Kilback','Masculino','2008-12-24','estevan.veum@mills.net','lisa52@hotmail.com','utvt72zw','1980-06-22 10:24:57','1994-04-13 21:09:45'),
(49,'2137122','Gerson','Corkery','Femenino','1980-03-18','langworth.maeve@jacobson.com','utremblay@weissnat.com','utvt26vp','2004-04-24 05:02:09','2012-10-03 18:11:49'),
(50,'2183893','Edward','Ankunding','Femenino','1987-06-13','blick.russ@yahoo.com','barrows.houston@hand.com','utvt28cl','1980-06-21 05:45:08','2018-08-22 11:25:45'),
(51,'2177900','Anita','Champlin','Masculino','2004-06-28','lbeatty@hackett.com','morris63@gmail.com','utvt25op','2007-07-16 20:09:57','1985-10-18 01:35:17'),
(52,'2138561','America','Hettinger','Masculino','2016-01-01','dach.verlie@hotmail.com','fhand@yahoo.com','utvt09xd','2013-07-01 22:39:52','1980-12-16 07:47:45'),
(53,'2144952','Milton','Langosh','Femenino','2021-03-11','lilly.doyle@gulgowski.net','considine.bennett@hotmail.com','utvt35nm','2000-04-08 14:39:59','2004-10-17 05:24:43'),
(54,'2159517','Gavin','Wyman','Femenino','1990-06-28','tatyana43@homenick.com','fhill@maggio.com','utvt78sb','1973-03-05 16:54:49','1970-07-18 06:01:23'),
(55,'2175106','Cicero','Satterfield','Masculino','2020-11-03','bogan.krista@abbott.info','austin.nolan@hotmail.com','utvt17sj','1982-10-25 17:12:20','1977-05-18 11:11:53'),
(56,'2123967','Sheridan','Donnelly','Masculino','1993-12-10','johnson.trevor@hotmail.com','aroob@ziemann.com','utvt88ar','2016-05-16 20:16:53','1980-11-19 19:13:30'),
(57,'2160628','Cecilia','Greenholt','Masculino','1996-09-19','chyna.grady@yahoo.com','esperanza.gibson@gmail.com','utvt07ls','2004-04-01 19:05:29','2020-09-29 06:54:51'),
(58,'2152678','Brycen','Zulauf','Masculino','2005-07-31','giles64@orn.biz','yessenia.yundt@gmail.com','utvt03ue','1992-11-25 15:25:14','2010-05-30 04:04:32'),
(59,'2168677','Blaise','Jakubowski','Masculino','1998-02-01','qkautzer@gmail.com','norris80@hotmail.com','utvt29pv','2008-08-18 04:29:31','2009-10-17 12:48:34'),
(60,'2166797','Gina','Langworth','Femenino','1976-02-17','zschumm@gmail.com','violette.bergnaum@gmail.com','utvt94gj','2012-04-25 21:31:32','2012-08-22 20:05:56'),
(61,'2143490','Elwin','Labadie','Masculino','2007-10-13','hthompson@mueller.info','alden60@gmail.com','utvt46zg','1978-09-27 10:09:29','1988-11-29 13:40:59'),
(62,'2192829','Cary','Hackett','Femenino','2008-03-11','walsh.stanley@oberbrunner.biz','ola.bauch@yahoo.com','utvt45mb','2001-03-20 10:44:25','1995-09-19 02:50:38'),
(63,'2150671','Vergie','Schinner','Masculino','1996-11-08','penelope.kassulke@gmail.com','dare.forest@christiansen.com','utvt49ax','1984-06-18 15:03:57','2016-07-16 00:36:23'),
(64,'2170548','Kavon','Daniel','Masculino','1994-07-12','pietro55@schamberger.info','pgleichner@yahoo.com','utvt76io','1984-04-15 09:57:51','1981-12-27 01:13:03'),
(65,'2113449','Joseph','Turner','Femenino','1991-05-02','kreiger.mathilde@lesch.com','vernie.boehm@welch.com','utvt79ea','1994-04-26 13:46:43','1986-06-24 09:22:10'),
(66,'2153838','Sven','Baumbach','Femenino','2015-01-15','oscar.gutmann@nitzsche.org','marks.manuela@gleichner.com','utvt09kw','1988-01-06 10:21:42','2020-07-08 10:01:15'),
(67,'2208342','Toby','Daniel','Femenino','1970-08-30','kari92@hotmail.com','caden.mcclure@adams.info','utvt87oq','1971-01-19 00:00:35','1990-09-23 13:36:31'),
(68,'2123523','Amina','Cartwright','Masculino','1987-07-07','ernest.schmeler@hotmail.com','brandy23@gislason.info','utvt89ro','1978-11-05 22:54:08','1979-06-22 14:12:52'),
(69,'2168540','Trudie','Bauch','Masculino','1983-04-07','mmoen@hayes.com','victoria39@simonis.info','utvt90al','1986-10-18 02:17:11','2014-10-19 17:53:54'),
(70,'2170591','Dolly','Hayes','Masculino','2015-02-03','mariana44@romaguera.biz','letha12@paucek.com','utvt09kw','1979-01-03 05:25:43','2020-11-18 01:56:12'),
(71,'2201783','Patty','Davis','Masculino','2015-05-13','20210722_004800_huella.jpg','ghodkiewicz@yahoo.com','utvt95kx','2020-10-17 12:26:01','2021-07-22 01:01:36'),
(72,'2128739','Corene','Klein','Femenino','2019-06-30','rrempel@hotmail.com','funk.horace@predovic.com','utvt51rw','2010-11-03 00:34:54','2010-04-07 13:47:43'),
(73,'2127413','Melba','Muller','Masculino','1994-11-01','mathew82@hotmail.com','torrey.braun@gmail.com','utvt92mb','1971-08-16 15:18:44','1987-05-05 11:17:27'),
(74,'2122492','Elsie','Barton','Femenino','2002-03-24','dooley.cory@spinka.org','bins.shanelle@yahoo.com','utvt20kq','2011-10-24 00:02:09','1991-11-12 23:47:30'),
(75,'2172798','Letitia','Considine','Masculino','2010-05-13','hauck.aubrey@boyle.com','nprice@hotmail.com','utvt41lo','1997-09-01 23:35:03','2016-03-05 14:37:42'),
(76,'2169719','Wilhelmine','Hayes','Masculino','1975-11-06','becker.kris@yahoo.com','pbednar@romaguera.org','utvt73gb','1973-06-11 00:45:32','1979-08-20 11:03:04'),
(77,'2162487','Arely','Tillman','Femenino','1974-02-24','ybailey@gmail.com','daija87@aufderhar.org','utvt93zj','1990-05-05 22:03:50','1976-07-13 16:49:37'),
(78,'2177504','Violet','Swaniawski','Femenino','1972-10-11','20210721_234240_CORREO.jpg','cleveland.legros@gmail.com','utvt37pc','2015-12-18 23:51:51','2021-07-21 23:42:40'),
(79,'2176815','Jamil','Lowe','Masculino','1988-09-11','cvon@gmail.com','rdare@hotmail.com','utvt51pg','1994-08-06 03:06:40','1985-10-31 09:48:52'),
(80,'2123821','Prudence','Langworth','Masculino','1978-11-10','dakota64@hotmail.com','braxton.lesch@denesik.com','utvt70ml','2005-11-25 02:11:14','1993-12-23 23:48:01'),
(81,'2153273','Hunter','Fadel','Masculino','2008-05-26','west.maegan@deckow.com','minerva.herzog@hotmail.com','utvt85ay','2006-09-08 08:08:21','1983-08-07 07:24:34'),
(82,'2163668','Merritt','Cronin','Masculino','2006-06-27','kuvalis.jess@koepp.info','haley.deondre@champlin.com','utvt34pg','1975-05-03 10:16:06','2000-01-03 18:53:41'),
(83,'2158372','Ramona','Hartmann','Femenino','2006-02-19','rolfson.marcos@torp.com','muller.cristina@yahoo.com','utvt18fa','1987-09-11 11:40:00','2000-06-28 15:55:54'),
(84,'2179508','Westley','Romaguera','Femenino','1980-12-17','yjohnston@yahoo.com','tressa.cassin@gmail.com','utvt47wv','1981-06-26 15:43:16','2003-07-28 18:16:33'),
(85,'2132284','Emely','Rutherford','Femenino','1997-11-01','wanda.lockman@gmail.com','prohaska.kristin@donnelly.com','utvt95gb','2005-11-25 14:55:43','1979-01-09 23:55:24'),
(86,'2177798','Hassie','Huels','Masculino','2016-04-20','christ.nikolaus@kertzmann.net','genesis54@hotmail.com','utvt28sx','1998-04-07 12:12:03','2021-01-01 21:28:32'),
(87,'2192856','Dandre','Hickle','Femenino','2003-03-30','zgerhold@gmail.com','mortimer15@gmail.com','utvt80um','2018-04-05 00:34:38','1983-07-30 17:19:11'),
(88,'2155500','Urban','Kunze','Femenino','2017-06-26','neal94@luettgen.org','leanne01@hotmail.com','utvt38mc','1985-04-02 01:51:38','2011-08-12 14:05:22'),
(90,'2137273','Crystal','Price','Femenino','1989-10-18','barbara41@hotmail.com','griffin20@yahoo.com','utvt37ll','1988-09-05 09:53:05','1995-01-07 23:40:58'),
(92,'2171006','Else','Balistreri','Femenino','2007-07-20','tamia70@gmail.com','fdickinson@gmail.com','utvt74ai','1984-06-18 17:04:45','2006-08-28 18:41:21'),
(93,'2174027','Krystal','Kshlerin','Femenino','2012-01-04','wilson57@hotmail.com','pagac.celine@okeefe.com','12345987','2018-04-28 09:00:29','2021-07-22 01:00:13'),
(94,'2116658','Rosalinda','Ebert','Femenino','2019-01-29','estrella02@jakubowski.com','atromp@kris.com','utvt08ti','1974-12-02 13:25:29','1971-11-30 17:20:31'),
(95,'2136514','Marcos','Hyatt','Masculino','1973-11-09','tohara@gmail.com','ijacobi@krajcik.info','utvt89fm','1982-08-28 18:42:58','2007-06-11 12:58:01'),
(96,'2190761','Thad','Hodkiewicz','Masculino','2014-12-29','little.tomas@halvorson.biz','xherman@yahoo.com','utvt15au','1989-04-18 03:49:54','1998-06-24 19:05:56'),
(97,'2119722','Makenzie','Runolfsson','Masculino','2012-10-15','leonora.okon@gmail.com','lela67@considine.com','utvt88um','1979-07-18 06:07:57','2002-02-11 00:52:32'),
(98,'2116534','Winifred','Waters','Masculino','1994-03-08','lleffler@yahoo.com','keshaun.treutel@hotmail.com','utvt68fm','2011-06-26 19:56:20','2009-01-18 03:16:12'),
(99,'2113934','Lindsay','Leannon','Masculino','1994-04-03','shyann.treutel@yahoo.com','kaelyn81@waters.com','utvt07oy','1995-10-24 10:30:18','1983-03-10 05:53:27'),
(112,'221811717','Omar','Chong Lopez','Masculino','1999-10-30','shadow.jpg','al221811717@gmail.com','omar123','2021-07-22 00:55:35','2021-07-22 01:05:24');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2021_05_13_232537_create_alumnos_table',1),
(2,'2021_06_01_212638_create_productos_table',1),
(3,'2021_06_05_141850_create_ventas_table',1);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` decimal(6,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `productos` */

insert  into `productos`(`id`,`nombre`,`descripcion`,`costo`,`cantidad`,`img`,`created_at`,`updated_at`) values 
(1,'Wolksawagen vento 2021','Carro familiar',9999.99,10,'wolkswagen.png',NULL,NULL),
(2,'Ranguer 2021','Camioneta ideal para el trabajo',1000.00,2,'ranger.png',NULL,NULL),
(3,'Juego 1','Juego varios ',500.00,2,'1.jpg',NULL,NULL),
(4,'Juego 2','',1000.00,200,'2.jpg',NULL,NULL),
(5,'Figo 2021','',9999.99,10,'figo.png',NULL,NULL),
(6,'Iroman','',985.00,5,'3.jpg',NULL,NULL);

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_usu` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `costo` decimal(6,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ventas` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
