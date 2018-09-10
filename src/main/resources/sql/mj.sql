/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : mj

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-09-10 16:26:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `code_type` varchar(20) DEFAULT NULL COMMENT '字典分类',
  `code_id` varchar(20) DEFAULT NULL COMMENT '字典id',
  `code_name` varchar(50) DEFAULT NULL COMMENT '字典名称',
  `sort` int(3) DEFAULT NULL COMMENT '排序',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------

-- ----------------------------
-- Table structure for travel_car
-- ----------------------------
DROP TABLE IF EXISTS `travel_car`;
CREATE TABLE `travel_car` (
  `id` varchar(32) NOT NULL,
  `destination_id` varchar(32) DEFAULT NULL COMMENT 'travel_destination主键',
  `origin` varchar(10) DEFAULT NULL COMMENT '始发地',
  `terminus` varchar(10) DEFAULT NULL COMMENT '终到地',
  `distance` double(10,0) DEFAULT NULL COMMENT '距离',
  `road_toll` decimal(10,0) DEFAULT NULL COMMENT '过路费',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_car
-- ----------------------------

-- ----------------------------
-- Table structure for travel_destination
-- ----------------------------
DROP TABLE IF EXISTS `travel_destination`;
CREATE TABLE `travel_destination` (
  `id` varchar(32) NOT NULL,
  `destination_name` varchar(50) DEFAULT NULL COMMENT '目的地名称',
  `start_date` datetime DEFAULT NULL COMMENT '开始时间',
  `total_day` int(11) DEFAULT NULL COMMENT '总天数',
  `vehicle_type` varchar(20) DEFAULT NULL COMMENT '出行工具',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_destination
-- ----------------------------

-- ----------------------------
-- Table structure for travel_food
-- ----------------------------
DROP TABLE IF EXISTS `travel_food`;
CREATE TABLE `travel_food` (
  `id` varchar(32) NOT NULL,
  `destination_id` varchar(32) DEFAULT NULL COMMENT 'travel_destination主键',
  `food_type` varchar(10) DEFAULT NULL COMMENT '食物类型',
  `restaurant_name` varchar(20) DEFAULT NULL COMMENT '餐厅名称',
  `price` decimal(20,0) DEFAULT NULL COMMENT '价钱',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_food
-- ----------------------------

-- ----------------------------
-- Table structure for travel_hotel
-- ----------------------------
DROP TABLE IF EXISTS `travel_hotel`;
CREATE TABLE `travel_hotel` (
  `id` varchar(32) NOT NULL,
  `destination_id` varchar(32) DEFAULT NULL COMMENT 'travel_destination主键',
  `hotel_name` varchar(50) DEFAULT NULL COMMENT '酒店名称',
  `hotel_type` varchar(10) DEFAULT NULL COMMENT '酒店类型',
  `start_date` datetime DEFAULT NULL COMMENT '入住时间',
  `count` int(11) DEFAULT NULL COMMENT '天数',
  `price` decimal(10,0) DEFAULT NULL COMMENT '单价',
  `mark` double DEFAULT NULL COMMENT '评分',
  `description` varchar(500) DEFAULT NULL COMMENT '详情描述',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_hotel
-- ----------------------------

-- ----------------------------
-- Table structure for travel_shopping
-- ----------------------------
DROP TABLE IF EXISTS `travel_shopping`;
CREATE TABLE `travel_shopping` (
  `id` varchar(32) NOT NULL,
  `destination_id` varchar(32) DEFAULT NULL COMMENT 'travel_destination主键',
  `shopping_type` varchar(10) DEFAULT NULL COMMENT '购物类型',
  `trade_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_shopping
-- ----------------------------

-- ----------------------------
-- Table structure for travel_tourist
-- ----------------------------
DROP TABLE IF EXISTS `travel_tourist`;
CREATE TABLE `travel_tourist` (
  `id` varchar(32) NOT NULL,
  `destination_id` varchar(32) DEFAULT NULL COMMENT 'travel_destination主键',
  `tourist_name` varchar(50) DEFAULT NULL COMMENT '景点名称',
  `tourist_star` varchar(10) DEFAULT NULL COMMENT '景点星级',
  `total_hours` double(10,0) DEFAULT NULL COMMENT '耗时',
  `date` date DEFAULT NULL COMMENT '日期',
  `price` decimal(10,0) DEFAULT NULL COMMENT '票价',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `mark` double(10,0) DEFAULT NULL COMMENT '评分',
  `description` varchar(500) DEFAULT NULL COMMENT '景点描述',
  `source` varchar(10) DEFAULT NULL COMMENT '来源',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_tourist
-- ----------------------------

-- ----------------------------
-- Table structure for travel_train
-- ----------------------------
DROP TABLE IF EXISTS `travel_train`;
CREATE TABLE `travel_train` (
  `id` varchar(32) NOT NULL,
  `destination_id` varchar(32) DEFAULT NULL COMMENT 'travel_destination主键',
  `train_num` varchar(10) DEFAULT NULL COMMENT '车次号',
  `origin` varchar(10) DEFAULT NULL COMMENT '始发地',
  `terminus` varchar(10) DEFAULT NULL COMMENT '终到地',
  `total_hours` double(10,0) DEFAULT NULL COMMENT '总时长',
  `price` decimal(10,0) DEFAULT NULL COMMENT '单价',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL,
  `create_user` varchar(20) DEFAULT NULL,
  `update_user` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_train
-- ----------------------------
