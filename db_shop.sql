/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : db_shop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-04 22:44:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(20) DEFAULT NULL,
  `password1` varchar(20) DEFAULT NULL,
  `password2` varchar(20) DEFAULT NULL,
  `money` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'java', '1234', '1234', '269.623');
INSERT INTO `t_customer` VALUES ('6', 'buy', '1234', '1234', '100');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(20) DEFAULT NULL,
  `productTime` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `productDesc` varchar(20) DEFAULT NULL,
  `productTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_product` (`productTypeId`),
  CONSTRAINT `FK_t_product` FOREIGN KEY (`productTypeId`) REFERENCES `t_producttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '火腿肠', '2018.6.4', '2', '雨润火腿肠', '8');
INSERT INTO `t_product` VALUES ('2', 'java程序设计', '2018.1.1', '30', 'java', '9');

-- ----------------------------
-- Table structure for t_productchosen
-- ----------------------------
DROP TABLE IF EXISTS `t_productchosen`;
CREATE TABLE `t_productchosen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(20) DEFAULT NULL,
  `productTime` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `productDesc` varchar(20) DEFAULT NULL,
  `productTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_product` (`productTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_productchosen
-- ----------------------------
INSERT INTO `t_productchosen` VALUES ('1', '科技书', '2012', '15.3', '益智', '3');
INSERT INTO `t_productchosen` VALUES ('2', 'java程序设计', '2018.1.1', '30', 'java', '9');

-- ----------------------------
-- Table structure for t_producttype
-- ----------------------------
DROP TABLE IF EXISTS `t_producttype`;
CREATE TABLE `t_producttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productTypeName` varchar(20) DEFAULT NULL,
  `productTypeDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_producttype
-- ----------------------------
INSERT INTO `t_producttype` VALUES ('8', '食品', '可食用');
INSERT INTO `t_producttype` VALUES ('9', '书本', '可阅读');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'java', '1234');
