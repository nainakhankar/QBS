/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.1.36-community-log : Database - userreg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`userreg` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `userreg`;

/*Table structure for table `collegelogin` */

DROP TABLE IF EXISTS `collegelogin`;

CREATE TABLE `collegelogin` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `collegename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `collegelogin` */

insert  into `collegelogin`(`id`,`username`,`password`,`collegename`) values (1,'rait','rait','RAIT College of Enginering'),(3,'ac','ac','AC Patil College of Enginering'),(4,'sr','sr','Sarswati College of Enginering'),(5,'ig','ig','Indira Gandhi College of Enginering'),(6,'piit','piit','Pillias Panvel College of Enginering'),(7,'ac','ac','AC patil college of Enginering');

/*Table structure for table `depo` */

DROP TABLE IF EXISTS `depo`;

CREATE TABLE `depo` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `busdepo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `depo` */

insert  into `depo`(`id`,`userid`,`password`,`busdepo`) values (1,'airoli','airoli','Airoli Bus Depo'),(2,'rabale','rabale','Rabale Bus Depo'),(3,'ghansoli','ghansoli','Ghansoli Bus Depo'),(4,'kk','kk','Koparkhairane Bus depo'),(5,'turbhe','turbhe','Turbhe Bus Depo'),(6,'jui','jui','Juinagar Bus Depo');

/*Table structure for table `passform` */

DROP TABLE IF EXISTS `passform`;

CREATE TABLE `passform` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `rcategory` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `vtc` varchar(200) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `pincode` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `utype` varchar(200) DEFAULT NULL,
  `collegename` varchar(200) DEFAULT NULL,
  `rollno` varchar(200) DEFAULT NULL,
  `caddress` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `disability` varchar(255) DEFAULT NULL,
  `dtype` varchar(200) DEFAULT NULL,
  `certificate` varchar(200) DEFAULT NULL,
  `certificateno` varchar(200) DEFAULT NULL,
  `center` varchar(200) DEFAULT NULL,
  `pfrom` varchar(200) DEFAULT NULL,
  `pto` varchar(200) DEFAULT NULL,
  `pduration` varchar(200) DEFAULT NULL,
  `sdate` varchar(200) DEFAULT NULL,
  `edate` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `caproval` varchar(200) DEFAULT 'P',
  `daproval` varchar(200) DEFAULT 'P',
  `photo` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `certpic` varchar(255) DEFAULT NULL,
  `foryear` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `passform` */

insert  into `passform`(`id`,`fname`,`dob`,`gender`,`rcategory`,`address`,`vtc`,`district`,`state`,`pincode`,`mobile`,`email`,`utype`,`collegename`,`rollno`,`caddress`,`year`,`branch`,`disability`,`dtype`,`certificate`,`certificateno`,`center`,`pfrom`,`pto`,`pduration`,`sdate`,`edate`,`username`,`caproval`,`daproval`,`photo`,`sign`,`receipt`,`certpic`,`foryear`) values (20,'sumit balkrushna tawte','1999-06-15','Male','General','Airoli','Airoli','Thane','Maharashtra','400708','7894561230','tawte.sumit65@gmail.com','student','RAIT College of Enginering','1023','Nerul','FE','IT','no','NA','NA','NA','Airoli Bus Depo','Airoli ','Rabale','monthly','2017-01-01','2016-12-31','s','A','A','IMG_20160905_105807.jpg','IMG_20160905_091717.jpg','IMG_20160905_111428.jpg','NA','2016');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`name`,`address`,`email`,`mobile`,`utype`,`username`,`password`) values (2,'sumit balkrushna tawte','Airoli','tawte.sumit65@gmail.com','7894561230','student','s','s'),(3,'mahendra ramchandra gawade','House No.-1919-71, Chatrpati Rahivashi Seva Sangh, Airoli Gaon, Airoli, Navi-Mumabi.','projectwale@gmail.com','9874561230','student','m','m'),(4,'dwdwd','rkharatmolk@gmail.com','r@gmail.com','9004850819','student','rahul','r'),(5,'shailesh shivaji bhokare','rabale','sh@gmail.com','9523179132','other','sh','sh');

/*Table structure for table `timereaquired` */

DROP TABLE IF EXISTS `timereaquired`;

CREATE TABLE `timereaquired` (
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `monthly` varchar(100) DEFAULT NULL,
  `querterly` varchar(100) DEFAULT NULL,
  `halfyearly` varchar(100) DEFAULT NULL,
  `yearly` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `timereaquired` */

insert  into `timereaquired`(`source`,`destination`,`monthly`,`querterly`,`halfyearly`,`yearly`) values ('Thane','Thane','0000','0000','0000','0000'),('Thane','Airoli','220','440','660','1000'),('Thane','Rabale','250','450','670','1100'),('Thane','Ghansoli','280','460','680','1200'),('Thane','Koparkhairne','290','470','690','1300'),('Thane','Turbhe','300','480','700','1300'),('Thane','Sanpada','310','490','710','1400'),('Thane','Nerul','340','510','660','1600'),('Airoli ','Thane','410','440','660','1000'),('Airoli ','Airoli','0000','0000','0000','0000'),('Airoli ','Rabale','220','460','660','1100'),('Airoli ','Ghansoli','230','470','660','1300'),('Airoli ','Koparkhairne','240','480','660','1400'),('Airoli ','Turbhe','250','490','660','1500'),('Airoli ','Juinagar','280','500','660','1600'),('Airoli ','Nerul','290','510','660','1700'),('Rabale','Airoli','230','440','660','1800'),('Rabale','Rabale','000','0000','0000','0000'),('Rabale','Ghansoli','240','460','660','1000'),('Rabale','Koparkhairne','250','470','660','1100'),('Rabale','Turbhe','260','480','660','1200'),('Rabale','Sanpada','270','490','660','1300'),('Rabale','Juinagar','290','510','660','1400'),('Rabale','Nerul','300','520','660','1500'),('Ghansoli','Thane','960','480','660','1600'),('Ghansoli','Airoli','540','490','660','1500'),('Ghansoli','Rabale','300','470','660','1000'),('Ghansoli','Ghansoli','000','000','660','0000'),('Ghansoli','Koparkhairne','340','460','660','1000'),('Ghansoli','Turbhe','360','480','660','1200'),('Ghansoli','Nerul','370','500','660','1500'),('Koparkhairne','Thane','420','500','660','1200'),('Koparkhairne','Airoli','220','470','660','1400'),('Koparkhairne','Rabale','210','460','660','1300'),('Koparkhairne','Ghansoli','200','450','660','1000'),('Koparkhairne','Koparkhairne','0000','0000','660','0000'),('Koparkhairne','Turbhe','220','440','660','1200'),('Koparkhairne','Juinagar','240','450','660','                                                                                                    '),('Koparkhairne','Nerul','260','410','660','1400'),('Turbhe','Thane','290','510','660','1600'),('Turbhe','Airoli','280','500','660','1500'),('Turbhe','Rabale','260','480','660','1400'),('Turbhe','Ghansoli','250','460','660','1300'),('Turbhe','Koparkhairne','240','440','660','1200'),('Turbhe','Turbhe','0000','0000','0000','0000'),('Turbhe','Juinagar','220','420','660','1200'),('Turbhe','Nerul','240','410','660','1400'),('Juinagar','Thane','300','420','660','1600'),('Juinagar','Airoli','280','500','660','1300'),('Juinagar','Rabale','260','510','660','1400'),('Juinagar','Koparkhairne','290','480','660','1500'),('Juinagar','Turbhe','200','410','660','1600'),('Juinagar','Nerul','240','400','660','1000'),('Nerul','Thane','1980','510','660','1800'),('Nerul','Airoli','1560','500','660','1700'),('Nerul','Rabale','1320','480','660','1500'),('Nerul','Ghansoli','1020','460','660','1400'),('Nerul','Koparkhairne','840','440','660','1300'),('Nerul','Turbhe','540','420','660','1200'),('Nerul','Juinagar','240','400','660','1000'),('Nerul','Nerul','0000','0000','0000','0000');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `sdate` varchar(255) DEFAULT NULL,
  `edate` varchar(255) DEFAULT NULL,
  `pfrom` varchar(200) DEFAULT NULL,
  `pto` varchar(200) DEFAULT NULL,
  `pduration` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `cardno` varchar(200) DEFAULT NULL,
  `cvvno` varchar(200) DEFAULT NULL,
  `expiry` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
