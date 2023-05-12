-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- Server version:               10.3.14-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for boot_gzgchzc
CREATE DATABASE IF NOT EXISTS `boot_gzgchzc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `boot_gzgchzc`;

-- Dumping structure for table boot_gzgchzc.t_admin
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE IF NOT EXISTS `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` (`id`, `name`, `password`, `createTime`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-02-12');
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_attachment
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE IF NOT EXISTS `t_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worksId` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `worksId` (`worksId`),
  CONSTRAINT `t_attachment_ibfk_1` FOREIGN KEY (`worksId`) REFERENCES `t_works` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_attachment: ~15 rows (approximately)
/*!40000 ALTER TABLE `t_attachment` DISABLE KEYS */;
INSERT INTO `t_attachment` (`id`, `worksId`, `path`, `createTime`, `status`) VALUES
	(2, 3, '/uploads/images/13b01e36-efcc-45a2-a567-55b085e8c490.jpg', '2017-03-03', 0),
	(3, 3, '/uploads/images/41540dad-f941-4bea-8ba1-8dd1b9076067.jpg', '2017-03-03', 0),
	(4, 4, '/uploads/images/bfd325f0-0854-4d89-84ae-0e6a7c481beb.jpg', '2017-03-03', 0),
	(5, 4, '/uploads/images/0b5fb8ea-033e-4c40-8304-ea24e47d8294.jpg', '2017-03-03', 0),
	(6, 5, '/uploads/images/939c1799-8705-4fef-a011-bf9102d04e1b.jpg', '2017-04-26', 0),
	(7, 5, '/uploads/images/1fa90123-9b19-451b-89ec-d0407980cd18.jpg', '2017-04-26', 0),
	(8, 5, '/uploads/images/89c69f92-a5ea-4f10-98c1-04c63e773782.jpg', '2017-04-26', 0),
	(9, 5, '/uploads/images/df0d93e5-0cad-48cb-b550-2f666dffd238.jpg', '2017-04-26', 0),
	(10, 6, '/uploads/images/a26b3f53-0213-44fc-b894-f7a6939f89a3.jpg', '2017-06-08', 0),
	(11, 7, '/uploads/images/affd05ca-227e-4dc0-8434-834c630f57ab.jpg', '2017-06-08', 0),
	(12, 8, '/uploads/images/228289b6-606e-4be5-b3e5-50bc07b595f2.png', '2017-06-08', 0),
	(13, 9, '/uploads/images/7805382a-20d4-455f-95b1-5afe14ccc607.png', '2017-06-08', 0),
	(14, 10, '/uploads/images/9030f36e-89ef-4ffc-85f2-a7b3e43b0798.png', '2017-06-08', 0),
	(15, 11, '/uploads/images/db1f9ab3-2ae7-416b-a574-465632f7d846.png', '2017-06-08', 0),
	(16, 12, '/uploads/images/e05f24bd-a03a-49d7-8f12-2d6e8c2af1af.png', '2017-06-08', 0);
/*!40000 ALTER TABLE `t_attachment` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_banner
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE IF NOT EXISTS `t_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_banner: ~2 rows (approximately)
/*!40000 ALTER TABLE `t_banner` DISABLE KEYS */;
INSERT INTO `t_banner` (`id`, `title`, `path`, `createTime`) VALUES
	(15, '首页图1', '/uploads/banner/26b197ba-54ee-4f35-8edf-ff9fb6ca80c6.jpg', '2017-06-08'),
	(16, '首页图3', '/uploads/banner/2da90f90-f400-4ce0-854d-40aacbb0c102.jpg', '2017-06-08'),
	(17, '首页图2', '/uploads/banner/0493735f-8448-4e30-947d-f37e4986c392.jpg', '2019-10-13');
/*!40000 ALTER TABLE `t_banner` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_comment
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE IF NOT EXISTS `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `photographerId` (`photographerId`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_comment: ~2 rows (approximately)
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
INSERT INTO `t_comment` (`id`, `userId`, `photographerId`, `comment`, `createTime`) VALUES
	(5, 5, 10, '真不错', '2017-03-03'),
	(6, 1, 10, '不错的摄影师', '2019-10-11');
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_infomation
DROP TABLE IF EXISTS `t_infomation`;
CREATE TABLE IF NOT EXISTS `t_infomation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_infomation: ~7 rows (approximately)
/*!40000 ALTER TABLE `t_infomation` DISABLE KEYS */;
INSERT INTO `t_infomation` (`id`, `title`, `content`, `path`, `createTime`, `status`) VALUES
	(12, '测试资讯12', '测试资讯1', '/uploads/info/54e37d80-9953-4225-beab-1a0d5c340ddc.jpg', '2017-03-03', 0),
	(13, '测试资讯2', '测试资讯2', '/uploads/info/0b5dd431-dd6b-48a8-960e-a50b61871a26.jpg', '2017-03-03', 0),
	(14, '测试资讯3', '测试资讯3', '/uploads/info/4a4478d8-cfef-4920-9288-69554c7b8fdf.jpg', '2017-03-03', 0),
	(15, '测试资讯4', '测试资讯4', '/uploads/info/4ad959b6-82d5-429e-bedd-b49e035166ba.jpg', '2017-03-03', 0),
	(16, '测试资讯5', '测试资讯5', '/uploads/info/f120d81e-acbd-4548-b6b8-89562a1260e2.jpg', '2017-03-03', 0),
	(17, '测试资讯6', '测试资讯6', '/uploads/info/49478fe0-81ac-46b1-af1b-cdbe0afe938f.jpg', '2017-03-03', 0),
	(18, '1', '<p>1<img src="http://localhost:8080/Photo//uploadsinfo360e1fb5-fb6b-4fb7-b299-00851e9fd7c1.jpg"/></p>', '/uploads\\info\\fc0790dc-8f19-4c79-8dda-2033ab565013.jpg', '2017-06-27', 1);
/*!40000 ALTER TABLE `t_infomation` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_label
DROP TABLE IF EXISTS `t_label`;
CREATE TABLE IF NOT EXISTS `t_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_label: ~4 rows (approximately)
/*!40000 ALTER TABLE `t_label` DISABLE KEYS */;
INSERT INTO `t_label` (`id`, `name`, `createTime`, `status`) VALUES
	(10, '户外', '2017-03-03', 0),
	(11, '室内', '2017-03-03', 0),
	(12, '远景', '2017-03-03', 0),
	(13, '近景', '2017-03-03', 0);
/*!40000 ALTER TABLE `t_label` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_level
DROP TABLE IF EXISTS `t_level`;
CREATE TABLE IF NOT EXISTS `t_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_level: ~3 rows (approximately)
/*!40000 ALTER TABLE `t_level` DISABLE KEYS */;
INSERT INTO `t_level` (`id`, `name`, `createTime`, `status`) VALUES
	(8, '总监级', '2017-03-03', 0),
	(9, '名师级', '2017-03-03', 0),
	(10, '首席级', '2017-03-03', 0);
/*!40000 ALTER TABLE `t_level` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_photographer
DROP TABLE IF EXISTS `t_photographer`;
CREATE TABLE IF NOT EXISTS `t_photographer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_photographer: ~4 rows (approximately)
/*!40000 ALTER TABLE `t_photographer` DISABLE KEYS */;
INSERT INTO `t_photographer` (`id`, `head`, `name`, `summary`, `createTime`, `status`) VALUES
	(10, '/uploads/photographer/5a9a4178-ad1a-4687-b058-07757f5928c3.jpg', '测试摄影师1', '测试摄影师1', '2017-03-03', 0),
	(11, '/uploads/photographer/e3359267-d09d-4b14-a762-088574760c77.jpg', '测试摄影师2', '测试摄影师2', '2017-03-03', 0),
	(12, '/uploads/photographer/66aa01fb-6866-42ca-9f0e-ebcb84c0e2b6.jpg', '测试摄影师3', '测试摄影师3', '2017-03-03', 0),
	(13, '/uploads/photographer/8a6f6f90-2043-4e6a-b1e2-2b3ceb2e23a6.jpg', '测试摄影师4', '测试摄影师4', '2017-03-03', 0);
/*!40000 ALTER TABLE `t_photographer` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_photographer_label
DROP TABLE IF EXISTS `t_photographer_label`;
CREATE TABLE IF NOT EXISTS `t_photographer_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labelId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `labelId` (`labelId`),
  KEY `photographerId` (`photographerId`),
  CONSTRAINT `t_photographer_label_ibfk_1` FOREIGN KEY (`labelId`) REFERENCES `t_label` (`id`),
  CONSTRAINT `t_photographer_label_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_photographer_label: ~4 rows (approximately)
/*!40000 ALTER TABLE `t_photographer_label` DISABLE KEYS */;
INSERT INTO `t_photographer_label` (`id`, `labelId`, `photographerId`, `createTime`, `status`) VALUES
	(7, 10, 10, '2017-03-03', 0),
	(8, 11, 11, '2017-03-03', 0),
	(9, 12, 12, '2017-03-03', 0),
	(10, 13, 13, '2017-03-03', 0);
/*!40000 ALTER TABLE `t_photographer_label` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_photographer_level
DROP TABLE IF EXISTS `t_photographer_level`;
CREATE TABLE IF NOT EXISTS `t_photographer_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelId` int(11) NOT NULL,
  `photographer` int(11) NOT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `levelId` (`levelId`),
  KEY `photographer` (`photographer`),
  CONSTRAINT `t_photographer_level_ibfk_1` FOREIGN KEY (`levelId`) REFERENCES `t_level` (`id`),
  CONSTRAINT `t_photographer_level_ibfk_2` FOREIGN KEY (`photographer`) REFERENCES `t_photographer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_photographer_level: ~4 rows (approximately)
/*!40000 ALTER TABLE `t_photographer_level` DISABLE KEYS */;
INSERT INTO `t_photographer_level` (`id`, `levelId`, `photographer`, `createTime`, `status`) VALUES
	(7, 8, 10, '2017-03-03', 0),
	(8, 9, 11, '2017-03-03', 0),
	(9, 10, 12, '2017-03-03', 0),
	(10, 8, 13, '2017-03-03', 0);
/*!40000 ALTER TABLE `t_photographer_level` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_photographer_spots
DROP TABLE IF EXISTS `t_photographer_spots`;
CREATE TABLE IF NOT EXISTS `t_photographer_spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spotsId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `spotsId` (`spotsId`),
  KEY `photographerId` (`photographerId`),
  CONSTRAINT `t_photographer_spots_ibfk_1` FOREIGN KEY (`spotsId`) REFERENCES `t_spots` (`id`),
  CONSTRAINT `t_photographer_spots_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_photographer_spots: ~4 rows (approximately)
/*!40000 ALTER TABLE `t_photographer_spots` DISABLE KEYS */;
INSERT INTO `t_photographer_spots` (`id`, `spotsId`, `photographerId`, `createTime`, `status`) VALUES
	(7, 20, 10, '2017-03-03', 0),
	(8, 21, 11, '2017-03-03', 0),
	(9, 22, 12, '2017-03-03', 0),
	(10, 24, 13, '2017-03-03', 0);
/*!40000 ALTER TABLE `t_photographer_spots` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_schedule
DROP TABLE IF EXISTS `t_schedule`;
CREATE TABLE IF NOT EXISTS `t_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `photographerId` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0有空 1有预约 2无档期3过期',
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photographerId` (`photographerId`),
  CONSTRAINT `t_schedule_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_schedule: ~6 rows (approximately)
/*!40000 ALTER TABLE `t_schedule` DISABLE KEYS */;
INSERT INTO `t_schedule` (`id`, `userId`, `photographerId`, `start`, `end`, `createTime`, `status`, `name`, `sex`, `tel`, `qq`, `remarks`) VALUES
	(20, 5, 10, '2017-03-10', '2017-03-10', '2017-03-03', 1, '测试', '男', '13539767578', '', ''),
	(21, 5, 12, '2017-03-03', '2017-03-03', '2017-03-03', NULL, '测试2', '男', '13111111111', '', ''),
	(22, 1, 10, '2017-03-11', '2017-03-13', '2017-03-03', 1, NULL, NULL, NULL, NULL, NULL),
	(23, 1, 11, '2017-03-09', '2017-03-13', '2017-03-03', 1, NULL, NULL, NULL, NULL, NULL),
	(24, 1, 10, '2019-10-17', '2019-10-17', '2019-10-11', NULL, '源码码头', '男', '13022502404', '1347845688', '啦啦啦'),
	(25, 1, 11, '2019-10-11', '2019-10-11', '2019-10-11', NULL, '张三', '男', '13022502404', '1347845688', '啦啦啦');
/*!40000 ALTER TABLE `t_schedule` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_spots
DROP TABLE IF EXISTS `t_spots`;
CREATE TABLE IF NOT EXISTS `t_spots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_spots: ~17 rows (approximately)
/*!40000 ALTER TABLE `t_spots` DISABLE KEYS */;
INSERT INTO `t_spots` (`id`, `name`, `content`, `path`, `createTime`, `status`) VALUES
	(9, '宫殿', '<p><img src="http://localhost:8080/Photo//uploads/spots/60dbb34d-92da-4492-a0fc-8f528481eb05.jpg"/></p>', '/uploads/spots/d69bccc6-690a-4e2c-b49a-316f1aa6feb5.jpg', '2017-03-03', 1),
	(10, '测试景点2', '测试景点2', '/uploads/spots/2ee9397a-c368-484d-aff9-175ed28a7e93.jpg', '2017-03-03', 1),
	(11, '测试景点3', '测试景点3', '/uploads/spots/d7953a3f-8d84-4a3d-89f9-4fdde4e642e2.jpg', '2017-03-03', 1),
	(12, '测试景点4', '测试景点4', '/uploads/spots/b852214b-5e13-4d9d-a8e8-e5c0ddc82adf.jpg', '2017-03-03', 1),
	(13, '测试景点5', '测试景点5', '/uploads/spots/e251217b-bed9-4475-a0d7-9d0c84ea1a48.jpg', '2017-03-03', 1),
	(14, '宫殿', '宫殿', '/uploads/spots/f370244e-46d2-4ca0-ad3c-8cfc2fb4e362.jpg', '2017-06-08', 1),
	(15, '教堂', '教堂', '', '2017-06-08', 1),
	(16, '教堂', '教堂', '/uploads/spots/6c56050e-cd2b-4db0-8c07-7be4b9f2a31c.jpg', '2017-06-08', 1),
	(17, '田野', '田野', '/uploads/spots/e515c8bf-f53a-4ce8-b1c7-ad34ba343027.jpg', '2017-06-08', 1),
	(18, '街道', '街道', '/uploads/spots/c5dfd514-2b3a-4f0e-a821-2914d448e11e.jpg', '2017-06-08', 1),
	(19, '城市', '城市', '/uploads/spots/3469b496-848b-4e72-be6d-0ba379f0853b.jpg', '2017-06-08', 1),
	(20, '碧海蓝天的心动', '碧海蓝天的心动', '/uploads/spots/0878c03e-cf32-407c-b7e4-e0a04150b9b7.jpg', '2017-06-08', 0),
	(21, '泰国普吉岛海景', '泰国普吉岛海景', '/uploads/spots/a75ecd34-633c-4766-9138-75447d3a49dc.JPG', '2017-06-08', 0),
	(22, '泰国普吉岛礁石', '泰国普吉岛礁石', '/uploads/spots/7e3afe59-0d09-426b-9101-753bcc21eb0c.JPG', '2017-06-08', 0),
	(23, '泰国普吉岛街景', '泰国普吉岛街景', '/uploads/spots/4f1eb8dc-bc57-4388-a707-1b1a3e310b9a.png', '2017-06-08', 0),
	(24, '泰国普吉岛夜景', '泰国普吉岛夜景', '/uploads/spots/35bc5588-ade3-4642-b61d-448a2ea874c6.png', '2017-06-08', 0),
	(25, '泰国沙滩普吉岛海景', '泰国沙滩普吉岛海景', '/uploads/spots/fe4a3b67-f058-499a-9653-de93db2fa13f.png', '2017-06-08', 0);
/*!40000 ALTER TABLE `t_spots` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_user
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_user: ~6 rows (approximately)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `name`, `password`, `tel`, `email`, `createTime`) VALUES
	(1, 'xiaozhang', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '1', '2017-02-13'),
	(5, '测试', 'e10adc3949ba59abbe56e057f20f883e', '13533333333', NULL, '2017-03-03'),
	(6, 'zzzdk', 'e10adc3949ba59abbe56e057f20f883e', '13936251458', NULL, '2017-06-07'),
	(7, 'yzddd', 'e10adc3949ba59abbe56e057f20f883e', '15013268027', NULL, '2017-06-08'),
	(8, 'dddd', 'e10adc3949ba59abbe56e057f20f883e', '15013268027', NULL, '2017-06-08'),
	(9, '11', 'e10adc3949ba59abbe56e057f20f883e', '13539767578', NULL, '2017-06-27');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

-- Dumping structure for table boot_gzgchzc.t_works
DROP TABLE IF EXISTS `t_works`;
CREATE TABLE IF NOT EXISTS `t_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `spotsId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `createTime` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `photographerId` (`photographerId`),
  KEY `spotsId` (`spotsId`),
  CONSTRAINT `t_works_ibfk_1` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`),
  CONSTRAINT `t_works_ibfk_2` FOREIGN KEY (`spotsId`) REFERENCES `t_spots` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_gzgchzc.t_works: ~11 rows (approximately)
/*!40000 ALTER TABLE `t_works` DISABLE KEYS */;
INSERT INTO `t_works` (`id`, `title`, `path`, `content`, `spotsId`, `photographerId`, `createTime`, `status`) VALUES
	(3, '测试作品1', '/uploads/images/1558171c-5ced-4bd7-be1b-05450fe40437.jpg', '测试作品1', 9, 10, '2017-03-03', 1),
	(4, '测试作品2', '/uploads/images/cc131e23-03eb-498c-bbd8-eb4d7722fb0c.jpg', '测试作品2', 10, 10, '2017-03-03', 1),
	(5, '测试作品A', '/uploads/images/f3cb9d30-c745-41c2-ab74-f01b8a33c58f.jpg', '测试使用', 11, 12, '2017-04-26', 1),
	(6, '宫殿拍摄图片1', NULL, '宫殿拍摄图片1', 14, 10, '2017-06-08', 1),
	(7, '碧海蓝天拍摄', '/uploads/images/b1837e73-99b3-402d-b787-67bf05d164b4.jpg', '碧海蓝天拍摄', 20, 10, '2017-06-08', 0),
	(8, '泰国普吉岛海景', '/uploads/images/c19e6214-b09e-4482-babb-ef152b2dc0f9.png', '泰国普吉岛海景', 21, 11, '2017-06-08', 0),
	(9, '泰国普吉岛礁石', '/uploads/images/aa30b10f-7b54-4a9e-95cf-54e0ee864f8a.png', '泰国普吉岛礁石', 22, 12, '2017-06-08', 0),
	(10, '泰国普吉岛街景', '/uploads/images/62f70d3a-51f1-4c33-a043-c02269e65aff.png', '泰国普吉岛街景', 23, 13, '2017-06-08', 0),
	(11, '泰国普吉岛夜景', '/uploads/images/7d42cc86-0d55-49ae-bb5e-26405210a9ca.png', '泰国普吉岛夜景', 24, 10, '2017-06-08', 0),
	(12, '泰国沙滩普吉岛海景', '/uploads/images/2b0a8740-19a4-4b18-9806-4aea714d719c.png', '泰国沙滩普吉岛海景', 25, 11, '2017-06-08', 0),
	(13, '111', NULL, '1', 20, 10, '2017-06-28', 1);
/*!40000 ALTER TABLE `t_works` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
