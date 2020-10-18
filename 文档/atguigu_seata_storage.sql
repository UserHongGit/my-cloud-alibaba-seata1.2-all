/*
Navicat MySQL Data Transfer

Source Server         : LocalMySqlmmJia
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : atguigu_seata_storage

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-10-14 14:29:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_storage
-- ----------------------------
DROP TABLE IF EXISTS `t_storage`;
CREATE TABLE `t_storage` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(11) DEFAULT NULL COMMENT '产品id',
  `total` int(11) DEFAULT NULL COMMENT '总库存',
  `used` int(11) DEFAULT NULL COMMENT '已用库存',
  `residue` int(11) DEFAULT NULL COMMENT '剩余库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_storage
-- ----------------------------
INSERT INTO `t_storage` VALUES ('1', '1', '100', '30', '70');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'increment id',
  `branch_id` bigint(20) NOT NULL COMMENT 'branch transaction id',
  `xid` varchar(100) NOT NULL COMMENT 'global transaction id',
  `context` varchar(128) NOT NULL COMMENT 'undo_log context,such as serialization',
  `rollback_info` longblob NOT NULL COMMENT 'rollback info',
  `log_status` int(11) NOT NULL COMMENT '0:normal status,1:defense status',
  `log_created` datetime NOT NULL COMMENT 'create datetime',
  `log_modified` datetime NOT NULL COMMENT 'modify datetime',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='AT transaction mode undo table';

-- ----------------------------
-- Records of undo_log
-- ----------------------------
INSERT INTO `undo_log` VALUES ('4', '2024842842', '10.254.136.166:8083:2024842958', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 13:58:40', '2020-10-14 13:58:40');
INSERT INTO `undo_log` VALUES ('8', '2024843099', '10.254.136.166:8083:2024843095', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 13:59:25', '2020-10-14 13:59:25');
INSERT INTO `undo_log` VALUES ('15', '2024843139', '10.254.136.166:8091:2024842997', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:01:47', '2020-10-14 14:01:47');
INSERT INTO `undo_log` VALUES ('16', '2024843137', '10.254.136.166:8091:2024842997', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:01:47', '2020-10-14 14:01:47');
INSERT INTO `undo_log` VALUES ('20', '2024843005', '10.254.136.166:8091:2024843003', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:02:00', '2020-10-14 14:02:00');
INSERT INTO `undo_log` VALUES ('22', '2024843048', '10.254.136.166:8091:2024843033', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:02:01', '2020-10-14 14:02:01');
INSERT INTO `undo_log` VALUES ('26', '2024843057', '10.254.136.166:8083:2024843218', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:02:14', '2020-10-14 14:02:14');
INSERT INTO `undo_log` VALUES ('27', '2024843055', '10.254.136.166:8083:2024843218', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:02:14', '2020-10-14 14:02:14');
INSERT INTO `undo_log` VALUES ('31', '2024843254', '10.254.136.166:8083:2024843247', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:12:57', '2020-10-14 14:12:57');
INSERT INTO `undo_log` VALUES ('32', '2024843252', '10.254.136.166:8083:2024843247', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:12:57', '2020-10-14 14:12:57');
INSERT INTO `undo_log` VALUES ('36', '2024843266', '10.254.136.166:8083:2024843260', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:13:04', '2020-10-14 14:13:04');
INSERT INTO `undo_log` VALUES ('37', '2024843264', '10.254.136.166:8083:2024843260', 'serializer=jackson', 0x7B7D, '1', '2020-10-14 14:13:04', '2020-10-14 14:13:04');

-- ----------------------------
-- Table structure for undo_log_copy
-- ----------------------------
DROP TABLE IF EXISTS `undo_log_copy`;
CREATE TABLE `undo_log_copy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of undo_log_copy
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
