/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : supernote

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-11-25 10:20:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_classify
-- ----------------------------
DROP TABLE IF EXISTS `t_classify`;
CREATE TABLE `t_classify` (
  `id` varchar(50) NOT NULL,
  `pid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_own_id` (`pid`),
  CONSTRAINT `t_own_id` FOREIGN KEY (`pid`) REFERENCES `t_classify` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classify
-- ----------------------------
INSERT INTO `t_classify` VALUES ('0', null, '我的文件', '2017-11-05 20:13:46', '2017-11-05 20:13:50');
INSERT INTO `t_classify` VALUES ('1', '0', 'java笔记', '2017-11-05 22:22:03', '2017-11-05 22:22:05');
INSERT INTO `t_classify` VALUES ('3', '0', '数据库笔记', '2017-11-05 20:15:13', '2017-11-05 20:15:16');

-- ----------------------------
-- Table structure for t_notes
-- ----------------------------
DROP TABLE IF EXISTS `t_notes`;
CREATE TABLE `t_notes` (
  `id` varchar(50) NOT NULL,
  `n_title` varchar(50) DEFAULT NULL,
  `n_content` varchar(5000) DEFAULT NULL,
  `n_author` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `classify_id` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_user_id` (`user_id`),
  KEY `t_classify_id` (`classify_id`),
  CONSTRAINT `t_classify_id` FOREIGN KEY (`classify_id`) REFERENCES `t_classify` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `t_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notes
-- ----------------------------
INSERT INTO `t_notes` VALUES ('15590f43-5a0e-428e-bf53-b0ff1a6db1c6', 'java', '<p>1111</p>\r\n\r\n<p>测试</p>\r\n\r\n<p>风动旛动</p>', 'admin', '8494529b-5a8b-4023-a7e7-f78f3a5d9b42', '1', '2017-11-05 22:34:25', '2017-11-05 22:34:25');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nick` varchar(30) DEFAULT NULL,
  `head_img` varchar(100) DEFAULT NULL COMMENT '头像地址',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `phone` varchar(10) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(100) DEFAULT NULL,
  `delete_flag` varchar(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('8494529b-5a8b-4023-a7e7-f78f3a5d9b42', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, null, null, null, '741047261@qq.com', null, null, null, null);
INSERT INTO `t_users` VALUES ('f2065918-359e-48a8-bb50-ca752021cd4d', 'pibigstar', '21232f297a57a5a743894a0e4a801fc3', null, null, null, null, '741047261@qq.com', null, null, null, null);
