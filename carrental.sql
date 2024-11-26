/*
SQLyog Community v8.4 RC2
MySQL - 5.5.5-10.4.22-MariaDB : Database - carrental
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carrental` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `carrental`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`UserName`,`Password`,`updationDate`) values (1,'admin','5c428d8875d2948607f3e3fe134d71b4','2024-05-01 20:22:38');

/*Table structure for table `tblbooking` */

DROP TABLE IF EXISTS `tblbooking`;

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `id_card` varchar(255) DEFAULT NULL,
  `driving_license` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tblbooking` */

insert  into `tblbooking`(`id`,`BookingNumber`,`userEmail`,`VehicleId`,`FromDate`,`ToDate`,`message`,`Status`,`PostingDate`,`LastUpdationDate`,`id_card`,`driving_license`) values (13,397186812,'test@gmail.com',2,'2024-11-03','2024-11-05','test',1,'2024-11-02 01:41:27','2024-11-06 13:42:07','uploads/idcard/bracelet2.jpg','uploads/license/daisy bracelet.jpg'),(14,511573465,'test@gmail.com',2,'2024-11-09','2024-11-10','test',1,'2024-11-02 01:44:55','2024-11-06 13:42:20','uploads/idcard/bracelet2.jpg','uploads/license/daisy bracelet.jpg'),(15,789416472,'test@gmail.com',2,'2024-11-15','2024-11-16','hi',0,'2024-11-02 01:56:17',NULL,'uploads/idcard/bracelet.jpg','uploads/license/charm2.png'),(16,436235601,'test@gmail.com',3,'2024-11-03','2024-11-04','hi',0,'2024-11-02 01:57:50',NULL,'uploads/idcard/bracelet.jpg','uploads/license/charm2.png'),(17,776176195,'test@gmail.com',5,'2024-11-10','2024-11-17','lol',0,'2024-11-02 02:13:16',NULL,'uploads/idcard/charmlogo.jpeg','uploads/license/couple set butterfly.jpg'),(18,318774348,'test@gmail.com',4,'2024-11-03','2024-11-04','hh',1,'2024-11-02 02:24:55',NULL,'uploads/idcard/Cresent moon.jpg','uploads/license/daisy bracelet.jpg'),(20,257692942,'anisnatashakamarulzaman@gmail.com',7,'2024-11-07','2024-11-07','hhhhhhhh',2,'2024-11-06 15:11:03','2024-11-06 15:13:16','uploads/idcard/fcom_logo.png','uploads/license/fcom_logo.png');

/*Table structure for table `tblbrands` */

DROP TABLE IF EXISTS `tblbrands`;

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tblbrands` */

insert  into `tblbrands`(`id`,`BrandName`,`CreationDate`,`UpdationDate`) values (1,'Maruti','2024-05-02 00:24:34','2024-06-05 13:26:25'),(2,'BMW','2024-05-02 00:24:34','2024-06-05 13:26:34'),(3,'Audi','2024-05-02 00:24:34','2024-06-05 13:26:34'),(4,'Nissan','2024-05-02 00:24:34','2024-06-05 13:26:34'),(5,'Toyota','2024-05-02 00:24:34','2024-06-05 13:26:34'),(7,'Volkswagon','2024-05-02 00:24:34','2024-06-05 13:26:34'),(8,'Proton','2024-10-26 21:26:55','2024-11-06 22:20:06');

/*Table structure for table `tblcontactusinfo` */

DROP TABLE IF EXISTS `tblcontactusinfo`;

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactusinfo` */

insert  into `tblcontactusinfo`(`id`,`Address`,`EmailId`,`ContactNo`) values (1,'UPTM, Jalan 6/91, Taman Shamelin Perkasa, 56100 Cheras, Kuala Lumpur','anisnatasha@gmail.com','0172632202');

/*Table structure for table `tblcontactusquery` */

DROP TABLE IF EXISTS `tblcontactusquery`;

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactusquery` */

insert  into `tblcontactusquery`(`id`,`name`,`EmailId`,`ContactNumber`,`Message`,`PostingDate`,`status`) values (1,'Kunal ','kunal@gmail.com','7977779798','I want to know you brach in Chandigarh?','2024-06-04 17:34:51',1),(2,'jhhhh','anisnatashakamarulzaman@gmail.com','0172632202','hiii','2024-10-26 22:24:55',1),(3,'aaaaaaa','anisnatashakamarulzaman@gmail.com','0172632202','aaaaa','2024-10-31 15:17:24',1);

/*Table structure for table `tblpages` */

DROP TABLE IF EXISTS `tblpages`;

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tblpages` */

insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (1,'Terms and Conditions','terms','										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong></font></p><p align=\"justify\"><span style=\"font-size: small; font-weight: bold; font-family: verdana;\">UniRide Car Rental System – Terms and Conditions</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">Welcome to UniRide, the car rental platform designed exclusively for UPTM students. By accessing or using our website and services, you agree to abide by these Terms and Conditions. Please read them carefully, as they outline your rights, responsibilities, and obligations when using UniRide.</span></p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">1. Eligibility and Registration</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">1.1. Eligibility: UniRide is available to registered UPTM students with a valid student ID and government-issued driver’s license.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">1.2. Registration: To make a booking, users must create an account and provide accurate, current, and complete information as requested.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">2. Use of Service</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">2.1. Permissible Use: Users are permitted to browse, select, and rent vehicles for personal use only. Resale or sub-renting is strictly prohibited.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">2.2. Account Responsibility: Users are responsible for safeguarding their account details and maintaining the confidentiality of their login credentials.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">3. Booking and Payment</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">3.1. Reservation Confirmation: All bookings are subject to vehicle availability. Users will receive a confirmation email once a reservation is successfully completed.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">3.2. Payment: Payments are due at the time of booking confirmation. UniRide reserves the right to cancel bookings if payment is not received.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">4. Vehicle Usage and Responsibility</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">4.1. Vehicle Condition: Users must inspect the vehicle upon pick-up and notify UniRide staff of any pre-existing damages.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">4.2. Return Condition: Vehicles should be returned in the same condition as they were rented, with a full tank of fuel unless otherwise agreed.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">4.3. Liability for Damages: Users will be held financially responsible for any damages, loss, or theft that occur during the rental period.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">5. Cancellations and Refunds</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">5.1. Cancellation Policy: Users may cancel their booking up to 24 hours before the start of the rental period for a full refund. Cancellations made less than 24 hours in advance may be subject to a cancellation fee.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">5.2. Refunds: Refunds will be processed according to the initial payment method within 7-10 business days.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">6. Privacy and Data Collection</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">6.1. User Information: By using UniRide, you agree to our collection and use of your personal data in accordance with our Privacy Policy.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">6.2. Data Security: UniRide takes reasonable steps to protect user data but cannot guarantee complete security of information shared on the website.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">7. Limitation of Liability</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">7.1. Service Availability: UniRide does not guarantee continuous availability of vehicles or uninterrupted service on the website.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">7.2. Third-Party Links: UniRide may include links to third-party websites for user convenience. We do not endorse these sites and hold no responsibility for their content or policies.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">8. Termination</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">8.1. Account Termination: UniRide reserves the right to suspend or terminate any user account without prior notice for violations of these Terms and Conditions.</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana; font-weight: bold;\">9. Modifications to Terms</span></p><p align=\"justify\"><span style=\"font-size: small; font-family: verdana;\">9.1. UniRide reserves the right to modify these Terms and Conditions at any time. Changes will be communicated via the website or email. Continued use of the service after updates constitutes acceptance of the new terms.</span></p></blockquote><p align=\"justify\"><font size=\"2\"></font></p><p align=\"justify\"><br></p>\r\n										'),(2,'Privacy Policy','privacy','																				q\r\n										\r\n										'),(3,'About Us ','aboutus','<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">ur mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>'),(11,'FAQs','faqs','																																								<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">q</span>\r\n										');

/*Table structure for table `tblsubscribers` */

DROP TABLE IF EXISTS `tblsubscribers`;

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tblsubscribers` */

insert  into `tblsubscribers`(`id`,`SubscriberEmail`,`PostingDate`) values (6,'anisnatashakamarulzaman@gmail.com','2024-09-15 15:42:40');

/*Table structure for table `tbltestimonial` */

DROP TABLE IF EXISTS `tbltestimonial`;

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbltestimonial` */

insert  into `tbltestimonial`(`id`,`UserEmail`,`Testimonial`,`PostingDate`,`status`) values (1,'test@gmail.com','hii','2024-10-26 21:32:14',0),(2,'anisnatashakamarulzaman@gmail.com','hellooooooo','2024-11-06 13:01:50',1);

/*Table structure for table `tblusers` */

DROP TABLE IF EXISTS `tblusers`;

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tblusers` */

insert  into `tblusers`(`id`,`FullName`,`EmailId`,`Password`,`ContactNo`,`dob`,`Address`,`City`,`Country`,`RegDate`,`UpdationDate`) values (1,'Test','test@gmail.com','f925916e2754e5e03f75dd58a5733251','6465465465','','L-890, Gaur City Ghaziabad','Ghaziabad','India','2024-05-01 22:00:49','2024-06-05 13:27:37'),(2,'Amit','amikt12@gmail.com','f925916e2754e5e03f75dd58a5733251','1425365214',NULL,NULL,NULL,NULL,'2024-06-05 13:31:05',NULL),(3,'Anis Natasha','anisnatashakamarulzaman@gmail.com','a25223746cd7c9298974985363702ea4','0172632202','22/02/2004','No.18, Jalan 8, Taman Sungai Jelok, 43000 Kajang, Selangor','Kajang, Selangor','Malaysia','2024-10-31 15:37:08','2024-10-31 15:38:43'),(4,'Emiliana','emiliana@gmail.com','b7532e380399317b24413585a904dd69','0109011494',NULL,NULL,NULL,NULL,'2024-11-06 15:59:51',NULL);

/*Table structure for table `tblvehicles` */

DROP TABLE IF EXISTS `tblvehicles`;

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tblvehicles` */

insert  into `tblvehicles`(`id`,`VehiclesTitle`,`VehiclesBrand`,`VehiclesOverview`,`PricePerDay`,`FuelType`,`ModelYear`,`SeatingCapacity`,`Vimage1`,`Vimage2`,`Vimage3`,`Vimage4`,`Vimage5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (1,'Maruti Suzuki Wagon R',1,'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.',500,'Petrol',2019,5,'rear-3-4-left-589823254_930x620.jpg','tail-lamp-1666712219_930x620.jpg','rear-3-4-right-520328200_930x620.jpg','steering-close-up-1288209207_930x620.jpg','boot-with-standard-luggage-202327489_930x620.jpg',1,1,1,1,1,1,1,1,1,1,1,1,'2024-05-10 15:04:35','2024-06-05 13:30:19'),(2,'BMW 5 Series',2,'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.',1000,'Petrol',2018,5,'BMW-5-Series-Exterior-102005.jpg','BMW-5-Series-New-Exterior-89729.jpg','BMW-5-Series-Exterior-102006.jpg','BMW-5-Series-Interior-102021.jpg','BMW-5-Series-Interior-102022.jpg',1,1,1,1,1,1,1,1,NULL,1,1,1,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(3,'Audi Q8',3,'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.',3000,'Petrol',2017,5,'audi-q8-front-view4.jpg','1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg','audi1.jpg','1audiq8.jpg','audi-q8-front-view4.jpeg',1,1,1,1,1,1,1,1,1,1,1,1,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(4,'Nissan Kicks',4,'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).',800,'Petrol',2020,5,'front-left-side-47.jpg','kicksmodelimage.jpg','download.jpg','kicksmodelimage.jpg','',1,NULL,NULL,1,NULL,NULL,1,1,NULL,NULL,NULL,1,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(5,'Nissan GT-R',4,' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3',2000,'Petrol',2019,5,'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg','Best-Nissan-Cars-in-India-New-and-Used-1.jpg','2bb3bc938e734f462e45ed83be05165d.jpg','2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg','images.jpg',1,1,1,1,1,1,1,1,1,1,1,1,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(6,'Nissan Sunny 2020',4,'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.',400,'CNG',2018,5,'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg','images (1).jpg','Nissan-Sunny-Interior-114977.jpg','nissan-sunny-8a29f53-500x375.jpg','new-nissan-sunny-photo.jpg',1,1,NULL,1,1,1,1,1,1,1,1,1,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(7,'Toyota Fortuner',5,'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.',3000,'Petrol',2020,5,'2015_Toyota_Fortuner_(New_Zealand).jpg','toyota-fortuner-legender-rear-quarters-6e57.jpg','zw-toyota-fortuner-2020-2.jpg','download (1).jpg','',NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,1,1,1,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(8,'Maruti Suzuki Vitara Brezza',1,'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.',600,'Petrol',2018,5,'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg','marutisuzuki-vitara-brezza-rear-view37.jpg','marutisuzuki-vitara-brezza-dashboard10.jpg','marutisuzuki-vitara-brezza-boot-space59.jpg','marutisuzuki-vitara-brezza-boot-space28.jpg',NULL,1,1,1,NULL,NULL,1,NULL,NULL,NULL,1,NULL,'2024-05-10 15:04:35','2024-06-05 13:30:33'),(9,'Proton Saga MC2',8,'Proton is a blaaa',150,'Petrol',2004,5,'saga1.png','Screenshot 2024-10-26 223818.png','Screenshot 2024-10-26 223916.png','saga2.png','trunk saga.png',1,1,1,1,1,1,1,1,1,1,1,1,'2024-10-26 22:42:20',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
