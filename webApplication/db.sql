/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.10-MariaDB : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project`;

/*Table structure for table `datasetinfo` */

DROP TABLE IF EXISTS `datasetinfo`;

CREATE TABLE `datasetinfo` (
  `datasetId` int(11) NOT NULL AUTO_INCREMENT,
  `datasetEncName` varchar(255) DEFAULT NULL,
  `datasetName` varchar(255) DEFAULT NULL,
  `datasetPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`datasetId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `datasetinfo` */

insert  into `datasetinfo`(`datasetId`,`datasetEncName`,`datasetName`,`datasetPath`) values (1,'pinalresume.pdf','pinalresume.pdf','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\CBA\\\\doc'),(2,'pinalresume.pdf','pinalresume.pdf','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\CBA\\\\doc'),(3,'jstl-1.2.jar','jstl-1.2.jar','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\CBA\\\\doc');

/*Table structure for table `output` */

DROP TABLE IF EXISTS `output`;

CREATE TABLE `output` (
  `outputId` int(11) NOT NULL AUTO_INCREMENT,
  `imagePath` varchar(255) DEFAULT NULL,
  `videoPath` varchar(255) DEFAULT NULL,
  `vv_videoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`outputId`),
  KEY `FK_bsmx80ff2rmewlxsrn0gr1pdj` (`vv_videoId`),
  CONSTRAINT `FK_bsmx80ff2rmewlxsrn0gr1pdj` FOREIGN KEY (`vv_videoId`) REFERENCES `videoinfo` (`videoId`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

/*Data for the table `output` */

insert  into `output`(`outputId`,`imagePath`,`videoPath`,`vv_videoId`) values (92,'checkExpression/image/WIN_20180405_12_08_40_Pro_video_graph.jpg','checkExpression/video/WIN_20180405_12_08_40_Pro_detected.webm',15),(93,'checkExpression/image/WIN_20180405_12_08_46_Pro_video_graph.jpg','checkExpression/video/WIN_20180405_12_08_46_Pro_detected.webm',14);

/*Table structure for table `postinfo` */

DROP TABLE IF EXISTS `postinfo`;

CREATE TABLE `postinfo` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `postDescription` varchar(255) DEFAULT NULL,
  `postName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `postinfo` */

insert  into `postinfo`(`postId`,`postDescription`,`postName`) values (2,'snisj','post2'),(3,'mdkjoef\r\n','post3'),(4,NULL,'post4');

/*Table structure for table `productinfo` */

DROP TABLE IF EXISTS `productinfo`;

CREATE TABLE `productinfo` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productDescription` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `productinfo` */

insert  into `productinfo`(`productId`,`productDescription`,`productName`) values (1,'djjhuh','apple'),(2,'jjoio\r\n','Ajio');

/*Table structure for table `superwiserinfo` */

DROP TABLE IF EXISTS `superwiserinfo`;

CREATE TABLE `superwiserinfo` (
  `superwiserId` int(11) NOT NULL AUTO_INCREMENT,
  `superwiserEmail` varchar(255) DEFAULT NULL,
  `superwiserFirstName` varchar(255) DEFAULT NULL,
  `superwiserLastName` varchar(255) DEFAULT NULL,
  `superwiserMobileNo` varchar(255) DEFAULT NULL,
  `superwiserPassword` varchar(255) DEFAULT NULL,
  `pv_postId` int(11) DEFAULT NULL,
  PRIMARY KEY (`superwiserId`),
  KEY `FK_errueo1pnge6g00caxt848pc1` (`pv_postId`),
  CONSTRAINT `FK_errueo1pnge6g00caxt848pc1` FOREIGN KEY (`pv_postId`) REFERENCES `postinfo` (`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `superwiserinfo` */

insert  into `superwiserinfo`(`superwiserId`,`superwiserEmail`,`superwiserFirstName`,`superwiserLastName`,`superwiserMobileNo`,`superwiserPassword`,`pv_postId`) values (1,'pinal@gmail.com','pinal','shah','7894567','pinals',4);

/*Table structure for table `superwiserlogininfo` */

DROP TABLE IF EXISTS `superwiserlogininfo`;

CREATE TABLE `superwiserlogininfo` (
  `superwiserLoginId` int(11) NOT NULL AUTO_INCREMENT,
  `Role` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`superwiserLoginId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `superwiserlogininfo` */

insert  into `superwiserlogininfo`(`superwiserLoginId`,`Role`,`enabled`,`password`,`username`) values (1,'ROLE_ADMIN','1','pinal1','pinal@com'),(2,'ROLE_STAFF','1','suku123','suku@com');

/*Table structure for table `superwiserregisterinfo` */

DROP TABLE IF EXISTS `superwiserregisterinfo`;

CREATE TABLE `superwiserregisterinfo` (
  `superwiserId` int(11) NOT NULL AUTO_INCREMENT,
  `superwiserFirstName` varchar(255) DEFAULT NULL,
  `superwiserLastName` varchar(255) DEFAULT NULL,
  `superwiserMobileNo` varchar(255) DEFAULT NULL,
  `pv_postId` int(11) DEFAULT NULL,
  `slv_superwiserLoginId` int(11) DEFAULT NULL,
  PRIMARY KEY (`superwiserId`),
  KEY `FK_pqhym3e7j8odj7e8461rie7ff` (`pv_postId`),
  KEY `FK_qudjmoigrds1v3448nne8djeh` (`slv_superwiserLoginId`),
  CONSTRAINT `FK_pqhym3e7j8odj7e8461rie7ff` FOREIGN KEY (`pv_postId`) REFERENCES `postinfo` (`postId`),
  CONSTRAINT `FK_qudjmoigrds1v3448nne8djeh` FOREIGN KEY (`slv_superwiserLoginId`) REFERENCES `superwiserlogininfo` (`superwiserLoginId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `superwiserregisterinfo` */

insert  into `superwiserregisterinfo`(`superwiserId`,`superwiserFirstName`,`superwiserLastName`,`superwiserMobileNo`,`pv_postId`,`slv_superwiserLoginId`) values (1,'pinal1','shah','898989',4,1),(2,'Sukruti','shah','8745632',2,2);

/*Table structure for table `videoinfo` */

DROP TABLE IF EXISTS `videoinfo`;

CREATE TABLE `videoinfo` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) DEFAULT NULL,
  `videoPath` varchar(255) DEFAULT NULL,
  `pv_productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`videoId`),
  KEY `FK_f95w0ccooxxf2wka21uirb76t` (`pv_productId`),
  CONSTRAINT `FK_f95w0ccooxxf2wka21uirb76t` FOREIGN KEY (`pv_productId`) REFERENCES `productinfo` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `videoinfo` */

insert  into `videoinfo`(`videoId`,`videoName`,`videoPath`,`pv_productId`) values (2,'WIN_20180307_11_46_48_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',2),(3,'WIN_20180307_19_15_17_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(4,'temp.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(5,'WIN_20180326_12_53_02_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',2),(6,'WIN_20180321_10_37_45_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',2),(7,'WIN_20180326_13_13_56_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(8,'WIN_20180328_11_56_17_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',2),(9,'WIN_20180328_12_00_25_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(10,'WIN_20180329_11_10_53_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(11,'WIN_20180329_12_30_21_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',2),(12,'WIN_20180329_17_50_23_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(13,'WIN_20180331_15_08_19_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',2),(14,'WIN_20180405_12_08_46_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1),(15,'WIN_20180405_12_08_40_Pro.mp4','E:\\aj\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\wtpwebapps\\CBA\\\\doc',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
