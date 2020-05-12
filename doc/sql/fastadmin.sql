/*
Navicat MySQL Data Transfer

Source Server         : liaoxx的服务器mysql 5.7
Source Server Version : 50730
Source Host           : 111.229.128.239:33061
Source Database       : fastadmin

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-05-08 11:20:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '843c10aa5e0e538a2c6acc4dc24a2cf8', '4f79e5', '/assets/img/avatar.png', 'admin@admin.com', '0', '1588847641', '220.173.59.205', '1492186163', '1588847641', '8a439822-0945-4f7a-8200-9e909f626173', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"435ed881abccab1e02d995ff9ac98c3c\",\"username\":\"fastadmin\",\"captcha\":\"vybf\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588352486');
INSERT INTO `fa_admin_log` VALUES ('2', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"4a6701f8cc7017e39c52b6a50f39acc0\",\"username\":\"admin\",\"captcha\":\"vybf\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588352494');
INSERT INTO `fa_admin_log` VALUES ('3', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"21404e7435ddeb4ad6b0d0b062e28551\",\"username\":\"admin\",\"captcha\":\"hgdi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588352506');
INSERT INTO `fa_admin_log` VALUES ('4', '1', 'admin', '/FacuqGBSRb.php/addon/install', '插件管理', '{\"name\":\"tinymce\",\"force\":\"0\",\"uid\":\"27104\",\"token\":\"fbbf6c19-b98e-4a63-8548-06ca61899ac2\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20200228_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354507');
INSERT INTO `fa_admin_log` VALUES ('5', '1', 'admin', '/FacuqGBSRb.php/addon/install', '插件管理', '{\"name\":\"tinymce\",\"force\":\"0\",\"uid\":\"27104\",\"token\":\"fbbf6c19-b98e-4a63-8548-06ca61899ac2\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20200228_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354520');
INSERT INTO `fa_admin_log` VALUES ('6', '1', 'admin', '/FacuqGBSRb.php/addon/install', '插件管理', '{\"name\":\"tinymce\",\"force\":\"0\",\"uid\":\"27104\",\"token\":\"fbbf6c19-b98e-4a63-8548-06ca61899ac2\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20200228_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354539');
INSERT INTO `fa_admin_log` VALUES ('7', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354541');
INSERT INTO `fa_admin_log` VALUES ('8', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php%2Faddon%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/FacuqGBSRb.php\\/addon?ref=addtabs\",\"__token__\":\"9f5d2cf11f49c88acfe7636cc839c5bf\",\"username\":\"admin\",\"captcha\":\"mxxw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354872');
INSERT INTO `fa_admin_log` VALUES ('9', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php%2Faddon%3Fref%3Daddtabs', '', '{\"url\":\"\\/FacuqGBSRb.php\\/addon?ref=addtabs\",\"__token__\":\"b0747923ebb17e8857d4eeafaf4bfac0\",\"username\":\"admin\",\"captcha\":\"mxxw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354880');
INSERT INTO `fa_admin_log` VALUES ('10', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php%2Faddon%3Fref%3Daddtabs', '', '{\"url\":\"\\/FacuqGBSRb.php\\/addon?ref=addtabs\",\"__token__\":\"d4bb4c8dd808ceb6893291b031d7af70\",\"username\":\"admin\",\"captcha\":\"ydfn\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354887');
INSERT INTO `fa_admin_log` VALUES ('11', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php%2Faddon%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/FacuqGBSRb.php\\/addon?ref=addtabs\",\"__token__\":\"67f32e45360cdf09462bd4d86ac1b45b\",\"username\":\"admin\",\"captcha\":\"ckyk\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588354896');
INSERT INTO `fa_admin_log` VALUES ('12', '1', 'admin', '/FacuqGBSRb.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"dbbeb2fb5f1a8bbcd8c70fec525055ec\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"jobhunter\",\"title\":\"\\u4eba\\u624d\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"weigh\":\"0\",\"condition\":\"148\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588362695');
INSERT INTO `fa_admin_log` VALUES ('13', '1', 'admin', '/FacuqGBSRb.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"b2fa368a56f162ed447e07a55912a9d4\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"jobhunter\",\"title\":\"\\u4eba\\u624d\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"weigh\":\"0\",\"condition\":\"155\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588362707');
INSERT INTO `fa_admin_log` VALUES ('14', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588362710');
INSERT INTO `fa_admin_log` VALUES ('15', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\",\"age\":\"\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588368115');
INSERT INTO `fa_admin_log` VALUES ('16', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\",\"age\":\"\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588368124');
INSERT INTO `fa_admin_log` VALUES ('17', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"dwdw\",\"age\":\"dwd\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"dwdwd\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588368854');
INSERT INTO `fa_admin_log` VALUES ('18', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"dwdw\",\"age\":\"dwd\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"dwdwd\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588368869');
INSERT INTO `fa_admin_log` VALUES ('19', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"dwdw\",\"age\":\"dwd\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"dwdwd\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588369035');
INSERT INTO `fa_admin_log` VALUES ('20', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"dwdw\",\"age\":\"dwd\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"dwdwd\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588369046');
INSERT INTO `fa_admin_log` VALUES ('21', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588369086');
INSERT INTO `fa_admin_log` VALUES ('22', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588369101');
INSERT INTO `fa_admin_log` VALUES ('23', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588369524');
INSERT INTO `fa_admin_log` VALUES ('24', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"0\",\"graduate_school\":\"0\",\"profession\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588369530');
INSERT INTO `fa_admin_log` VALUES ('25', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"bb3c9db3656459c02cf56472725376f2\",\"username\":\"admin\",\"captcha\":\"QTB7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '1588407712');
INSERT INTO `fa_admin_log` VALUES ('26', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"5f4e88ffea942f9099a962648765b0c0\",\"username\":\"admin\",\"captcha\":\"VDBK\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '1588407729');
INSERT INTO `fa_admin_log` VALUES ('27', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"fe6b7fc350d4ed46f0ee30265ab8141e\",\"username\":\"admin\",\"captcha\":\"W6VK\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', '1588407819');
INSERT INTO `fa_admin_log` VALUES ('28', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588408481');
INSERT INTO `fa_admin_log` VALUES ('29', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588408492');
INSERT INTO `fa_admin_log` VALUES ('30', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588408503');
INSERT INTO `fa_admin_log` VALUES ('31', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"dwdw\",\"age\":\"fe\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"-1\",\"profession_level\":\"0\",\"resume\":\"dwdw&amp;nbsp;\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588409180');
INSERT INTO `fa_admin_log` VALUES ('32', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"wfwf\",\"age\":\"45\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"dwd&amp;nbsp;\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588409348');
INSERT INTO `fa_admin_log` VALUES ('33', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"wfwf\",\"age\":\"45\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"dwd&amp;nbsp;\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588409380');
INSERT INTO `fa_admin_log` VALUES ('34', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"wfwf\",\"age\":\"45\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"dwd&amp;nbsp;\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588409407');
INSERT INTO `fa_admin_log` VALUES ('35', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"wfwf\",\"age\":\"18676666\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588409640');
INSERT INTO `fa_admin_log` VALUES ('36', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"wfwf\",\"age\":\"18676666\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588409668');
INSERT INTO `fa_admin_log` VALUES ('37', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431275');
INSERT INTO `fa_admin_log` VALUES ('38', '1', 'admin', '/FacuqGBSRb.php/ajax/upload', '', '{\"name\":\"B4DC48B4D622F895CEF38E153D798C4E.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431403');
INSERT INTO `fa_admin_log` VALUES ('39', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\\u6211\\u665a\\u70b9\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431441');
INSERT INTO `fa_admin_log` VALUES ('40', '1', 'admin', '/FacuqGBSRb.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"ac4095fbce21d996db91aab95371648f\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"profession\",\"title\":\"\\u5de5\\u79cd\\u7b49\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa fa-hourglass-start\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431648');
INSERT INTO `fa_admin_log` VALUES ('41', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431649');
INSERT INTO `fa_admin_log` VALUES ('42', '1', 'admin', '/FacuqGBSRb.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"5ac1b042434345679066a57b50201475\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"jobhunter\\/index\",\"title\":\"\\u4eba\\u624d\\u5217\\u8868\",\"icon\":\"fa fa-list-ol\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431716');
INSERT INTO `fa_admin_log` VALUES ('43', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431717');
INSERT INTO `fa_admin_log` VALUES ('44', '1', 'admin', '/FacuqGBSRb.php/auth/rule/edit/ids/87?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"c2bcce26b73a4841e9fdcbd741269b39\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"jobhunter\\/index\",\"title\":\"\\u4eba\\u624d\\u5217\\u8868\",\"icon\":\"fa fa-list-ol\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"87\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431738');
INSERT INTO `fa_admin_log` VALUES ('45', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431740');
INSERT INTO `fa_admin_log` VALUES ('46', '1', 'admin', '/FacuqGBSRb.php/auth/rule/edit/ids/86?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"48532021c2c9488798fe57daaac669e2\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"professionlevel\",\"title\":\"\\u5de5\\u79cd\\u7b49\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa fa-hourglass-start\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"86\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431779');
INSERT INTO `fa_admin_log` VALUES ('47', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431781');
INSERT INTO `fa_admin_log` VALUES ('48', '1', 'admin', '/FacuqGBSRb.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"4de8b3b8969914d178417f77b89ca93b\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"profession\",\"title\":\"\\u5de5\\u79cd\\u7ba1\\u7406\",\"icon\":\"fa fa-vcard-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431965');
INSERT INTO `fa_admin_log` VALUES ('49', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588431966');
INSERT INTO `fa_admin_log` VALUES ('50', '1', 'admin', '/FacuqGBSRb.php/auth/rule/del/ids/86', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"86\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588432657');
INSERT INTO `fa_admin_log` VALUES ('51', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588432658');
INSERT INTO `fa_admin_log` VALUES ('52', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/1?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"profession\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66\\/\\u8f6f\\u4ef6\\u5de5\\u7a0b\\/\",\"profession_level\":\"\\u5165\\u95e8\\/\\u719f\\u7ec3\\/\\u7cbe\\u901a\\/\\u4e13\\u4e1a\\/\\u5927\\u5e08\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588436349');
INSERT INTO `fa_admin_log` VALUES ('53', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/1?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"profession\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66\\/\\u8f6f\\u4ef6\\u5de5\\u7a0b\\/\",\"profession_level\":\"\\u5165\\u95e8\\/\\u719f\\u7ec3\\/\\u7cbe\\u901a\\/\\u4e13\\u4e1a\\/\\u5927\\u5e08\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588436362');
INSERT INTO `fa_admin_log` VALUES ('54', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/1?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"profession\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66\\/\\u8f6f\\u4ef6\\u5de5\\u7a0b\\/\",\"profession_level\":\"\\u5165\\u95e8\\/\\u719f\\u7ec3\\/\\u7cbe\\u901a\\/\\u4e13\\u4e1a\\/\\u5927\\u5e08\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588436447');
INSERT INTO `fa_admin_log` VALUES ('55', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/1?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"profession\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66&amp;\\u8f6f\\u4ef6\\u5de5\\u7a0b&amp;\",\"profession_level\":\"\\u5165\\u95e8&amp;\\u719f\\u7ec3&amp;\\u7cbe\\u901a&amp;\\u4e13\\u4e1a&amp;\\u5927\\u5e08\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588436693');
INSERT INTO `fa_admin_log` VALUES ('56', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/1?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"profession\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66&amp;\\u8f6f\\u4ef6\\u5de5\\u7a0b\",\"profession_level\":\"\\u5165\\u95e8&amp;\\u719f\\u7ec3&amp;\\u7cbe\\u901a&amp;\\u4e13\\u4e1a&amp;\\u5927\\u5e08\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588437312');
INSERT INTO `fa_admin_log` VALUES ('57', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"0\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588475334');
INSERT INTO `fa_admin_log` VALUES ('58', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/11?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"wfwf\",\"age\":\"45\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\\u5bf9\\u6211\\u7684\\u6211\\u7684\\u6211\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"dwd&amp;nbsp;\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588475700');
INSERT INTO `fa_admin_log` VALUES ('59', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"0ddw\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588475725');
INSERT INTO `fa_admin_log` VALUES ('60', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"0ddw\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588475758');
INSERT INTO `fa_admin_log` VALUES ('61', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"0ddw\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588475861');
INSERT INTO `fa_admin_log` VALUES ('62', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588476036');
INSERT INTO `fa_admin_log` VALUES ('63', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588476094');
INSERT INTO `fa_admin_log` VALUES ('64', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588476110');
INSERT INTO `fa_admin_log` VALUES ('65', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588476376');
INSERT INTO `fa_admin_log` VALUES ('66', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"3\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588476400');
INSERT INTO `fa_admin_log` VALUES ('67', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"2\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588476503');
INSERT INTO `fa_admin_log` VALUES ('68', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588478901');
INSERT INTO `fa_admin_log` VALUES ('69', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588478910');
INSERT INTO `fa_admin_log` VALUES ('70', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588478918');
INSERT INTO `fa_admin_log` VALUES ('71', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588479129');
INSERT INTO `fa_admin_log` VALUES ('72', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"18\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"2\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588479146');
INSERT INTO `fa_admin_log` VALUES ('73', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"25\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"1\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588479202');
INSERT INTO `fa_admin_log` VALUES ('74', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588479882');
INSERT INTO `fa_admin_log` VALUES ('75', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588479897');
INSERT INTO `fa_admin_log` VALUES ('76', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480001');
INSERT INTO `fa_admin_log` VALUES ('77', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480100');
INSERT INTO `fa_admin_log` VALUES ('78', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480121');
INSERT INTO `fa_admin_log` VALUES ('79', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"10\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480187');
INSERT INTO `fa_admin_log` VALUES ('80', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"10\",\"phone\":\"65656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480233');
INSERT INTO `fa_admin_log` VALUES ('81', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"65656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480240');
INSERT INTO `fa_admin_log` VALUES ('82', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"65656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480246');
INSERT INTO `fa_admin_log` VALUES ('83', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"65656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480254');
INSERT INTO `fa_admin_log` VALUES ('84', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"65656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480271');
INSERT INTO `fa_admin_log` VALUES ('85', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"65656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480385');
INSERT INTO `fa_admin_log` VALUES ('86', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"588565656556\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480392');
INSERT INTO `fa_admin_log` VALUES ('87', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480417');
INSERT INTO `fa_admin_log` VALUES ('88', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480432');
INSERT INTO `fa_admin_log` VALUES ('89', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480445');
INSERT INTO `fa_admin_log` VALUES ('90', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480455');
INSERT INTO `fa_admin_log` VALUES ('91', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480470');
INSERT INTO `fa_admin_log` VALUES ('92', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480639');
INSERT INTO `fa_admin_log` VALUES ('93', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480676');
INSERT INTO `fa_admin_log` VALUES ('94', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480766');
INSERT INTO `fa_admin_log` VALUES ('95', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480770');
INSERT INTO `fa_admin_log` VALUES ('96', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480786');
INSERT INTO `fa_admin_log` VALUES ('97', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480825');
INSERT INTO `fa_admin_log` VALUES ('98', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480837');
INSERT INTO `fa_admin_log` VALUES ('99', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"18676654888\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480882');
INSERT INTO `fa_admin_log` VALUES ('100', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/22?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"22\",\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"1867665488\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"22\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480892');
INSERT INTO `fa_admin_log` VALUES ('101', '1', 'admin', '/FacuqGBSRb.php/jobhunter/del/ids/22', '人才管理', '{\"action\":\"del\",\"ids\":\"22\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480931');
INSERT INTO `fa_admin_log` VALUES ('102', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u9664\\u975e\\u662f\\u8fd8\\u662f\",\"age\":\"16\",\"phone\":\"14245\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480956');
INSERT INTO `fa_admin_log` VALUES ('103', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"2532525\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480968');
INSERT INTO `fa_admin_log` VALUES ('104', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"2532525\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588480973');
INSERT INTO `fa_admin_log` VALUES ('105', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"2532525\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481056');
INSERT INTO `fa_admin_log` VALUES ('106', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"25325\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481068');
INSERT INTO `fa_admin_log` VALUES ('107', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"25325a\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481124');
INSERT INTO `fa_admin_log` VALUES ('108', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"25325a\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481266');
INSERT INTO `fa_admin_log` VALUES ('109', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"25325a\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481285');
INSERT INTO `fa_admin_log` VALUES ('110', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"25325a\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481313');
INSERT INTO `fa_admin_log` VALUES ('111', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/24?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"24\",\"full_name\":\"\\u7684\\u4f1f\\u5927\\u4f1f\\u5927\",\"age\":\"18\",\"phone\":\"25325a\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"24\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481519');
INSERT INTO `fa_admin_log` VALUES ('112', '1', 'admin', '/FacuqGBSRb.php/jobhunter/del/ids/24,23', '人才管理', '{\"action\":\"del\",\"ids\":\"24,23\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481559');
INSERT INTO `fa_admin_log` VALUES ('113', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481595');
INSERT INTO `fa_admin_log` VALUES ('114', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481621');
INSERT INTO `fa_admin_log` VALUES ('115', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481631');
INSERT INTO `fa_admin_log` VALUES ('116', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"\",\"phone\":\"2532525\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481764');
INSERT INTO `fa_admin_log` VALUES ('117', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"\",\"phone\":\"2532525\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481787');
INSERT INTO `fa_admin_log` VALUES ('118', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"\",\"phone\":\"56645691234\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481803');
INSERT INTO `fa_admin_log` VALUES ('119', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"\",\"phone\":\"56645691234\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481832');
INSERT INTO `fa_admin_log` VALUES ('120', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"18645552333\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481861');
INSERT INTO `fa_admin_log` VALUES ('121', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"18645552333\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588481865');
INSERT INTO `fa_admin_log` VALUES ('122', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"21\",\"full_name\":\"\\u6cd5\\u5916\\u72c2\\u5f92\\u5f20\\u4e09\",\"age\":\"16\",\"phone\":\"186766845\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588482210');
INSERT INTO `fa_admin_log` VALUES ('123', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/25?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"25\",\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"18645552333\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\"},\"ids\":\"25\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588482218');
INSERT INTO `fa_admin_log` VALUES ('124', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/25?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"25\",\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"18645552333\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"0\",\"profession_level\":\"0\",\"resume\":\"\\u4e39\\u53c2\\u6ef4\\u4e38\"},\"ids\":\"25\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588482237');
INSERT INTO `fa_admin_log` VALUES ('125', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"cf823a150348aa6855ad4ab5eec5b906\",\"username\":\"admin\",\"captcha\":\"7QEN\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1588492162');
INSERT INTO `fa_admin_log` VALUES ('126', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php%2Fjobhunter%2Fadd%2Fids%2F1%3Fdialog%3D1', '登录', '{\"url\":\"\\/FacuqGBSRb.php\\/jobhunter\\/add\\/ids\\/1?dialog=1\",\"__token__\":\"81345183bfe7b69c570fe73a069bd103\",\"username\":\"admin\",\"captcha\":\"tcd8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588494799');
INSERT INTO `fa_admin_log` VALUES ('127', '1', 'admin', '/FacuqGBSRb.php/profession/add?addtabs=1', '工种管理', '{\"addtabs\":\"1\",\"row\":{\"name\":\"\\u7269\\u6d41\",\"summary\":\"\\u9001\\u5feb\\u9012\\u7684\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588497411');
INSERT INTO `fa_admin_log` VALUES ('128', '1', 'admin', '/FacuqGBSRb.php/profession/add?addtabs=1', '工种管理', '{\"addtabs\":\"1\",\"row\":{\"name\":\"\\u8ba1\\u7b97\\u673a\\u79d1\\u5b66\",\"summary\":\"\\u4fee\\u7535\\u8111\\u7684\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588497438');
INSERT INTO `fa_admin_log` VALUES ('129', '1', 'admin', '/FacuqGBSRb.php/profession/add?addtabs=1', '工种管理', '{\"addtabs\":\"1\",\"row\":{\"name\":\"\\u9053\\u8def\\u5efa\\u7b51\",\"summary\":\"\\u642c\\u7816\\u7684\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588497500');
INSERT INTO `fa_admin_log` VALUES ('130', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/3?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"3\",\"name\":\"\\u9053\\u8def\\u5efa\\u7b51\",\"summary\":\"\\u642c\\u7816\\u7684\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498271');
INSERT INTO `fa_admin_log` VALUES ('131', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/3?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"3\",\"name\":\"\\u9053\\u8def\\u5efa\\u7b51\\u8ba2\\u5355\",\"summary\":\"\\u642c\\u7816\\u7684\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498278');
INSERT INTO `fa_admin_log` VALUES ('132', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/3?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"3\",\"name\":\"\\u9053\\u8def\\u5efa\\u7b51\",\"summary\":\"\\u642c\\u7816\\u7684\\u554a\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498288');
INSERT INTO `fa_admin_log` VALUES ('133', '1', 'admin', '/FacuqGBSRb.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"f8da416a442202fb00cfcb644b5b82d6\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"professionlevel\",\"title\":\"\\u5de5\\u79cd\\u7b49\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa fa-angle-double-up\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498586');
INSERT INTO `fa_admin_log` VALUES ('134', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498587');
INSERT INTO `fa_admin_log` VALUES ('135', '1', 'admin', '/FacuqGBSRb.php/auth/rule/edit/ids/89?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"870c382cee1019553d9db72eabe478a2\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"professionlevel\",\"title\":\"\\u5de5\\u79cd\\u7b49\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa fa-angle-double-up\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"89\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498609');
INSERT INTO `fa_admin_log` VALUES ('136', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588498611');
INSERT INTO `fa_admin_log` VALUES ('137', '1', 'admin', '/FacuqGBSRb.php/auth/rule/edit/ids/89?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"25cc498467d81aa552bce06a04138aef\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"professionlevell\",\"title\":\"\\u5de5\\u79cd\\u7b49\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa fa-angle-double-up\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"89\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588499429');
INSERT INTO `fa_admin_log` VALUES ('138', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588499431');
INSERT INTO `fa_admin_log` VALUES ('139', '1', 'admin', '/FacuqGBSRb.php/auth/rule/edit/ids/89?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"9bd490655885fa210c56bb6595a35157\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"professionlevel\",\"title\":\"\\u5de5\\u79cd\\u7b49\\u7ea7\\u7ba1\\u7406\",\"icon\":\"fa fa-angle-double-up\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"89\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588499474');
INSERT INTO `fa_admin_log` VALUES ('140', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588499476');
INSERT INTO `fa_admin_log` VALUES ('141', '1', 'admin', '/FacuqGBSRb.php/profession/add?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"professionlevel\",\"summary\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588499525');
INSERT INTO `fa_admin_log` VALUES ('142', '1', 'admin', '/FacuqGBSRb.php/professionlevel/add?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u7cbe\\u901a\",\"profession_id\":\"1\",\"summary\":\"\\u53ef\\u4ee5\\u5439\\u6c34\\u4e86\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588503897');
INSERT INTO `fa_admin_log` VALUES ('143', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/2?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"2\",\"name\":\"\\u719f\\u7ec3\",\"profession_id\":\"1\",\"summary\":\"\\u80fd\\u7528\\u7ea7\\u522b\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588504932');
INSERT INTO `fa_admin_log` VALUES ('144', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/2?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"2\",\"name\":\"\\u719f\\u7ec3\",\"profession_id\":\"2\",\"summary\":\"\\u80fd\\u7528\\u7ea7\\u522b\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588504941');
INSERT INTO `fa_admin_log` VALUES ('145', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/3?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"3\",\"name\":\"\\u7cbe\\u901a\",\"profession_id\":\"0\",\"summary\":\"\\u53ef\\u4ee5\\u5439\\u6c34\\u4e86\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588505056');
INSERT INTO `fa_admin_log` VALUES ('146', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/3?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"3\",\"name\":\"\\u7cbe\\u901a\",\"profession_id\":\"2\",\"summary\":\"\\u53ef\\u4ee5\\u5439\\u6c34\\u4e86\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588505236');
INSERT INTO `fa_admin_log` VALUES ('147', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/1?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"name\":\"\\u5165\\u95e8\",\"profession_id\":\"4\",\"summary\":\"\\u83dc\\u9e21\\u7ea7\\u522b\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588505245');
INSERT INTO `fa_admin_log` VALUES ('148', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/25?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"25\",\"full_name\":\"\\u674e\\u56db\",\"age\":\"18\",\"phone\":\"18645552333\",\"gender\":\"0\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u9644\\u5c0f\",\"profession\":\"3\",\"profession_level\":\"1\",\"resume\":\"2019.06&amp;nbsp;\\u6bd5\\u4e1a\"},\"ids\":\"25\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588518626');
INSERT INTO `fa_admin_log` VALUES ('149', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"acb62626914e0d8b89cfec14ab71871f\",\"username\":\"admin\",\"captcha\":\"kcfe\",\"keeplogin\":\"1\"}', '116.1.242.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588522887');
INSERT INTO `fa_admin_log` VALUES ('150', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"1a87f1426a99e17b72e98c7200d45ac7\",\"username\":\"admin\",\"captcha\":\"rjm3\",\"keeplogin\":\"1\"}', '116.1.242.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588522900');
INSERT INTO `fa_admin_log` VALUES ('151', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/4?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"4\",\"name\":\"\\u673a\\u68b0\\u81ea\\u52a8\\u5316\",\"summary\":\"\\u62e7\\u87ba\\u4e1d\\u7684\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588529972');
INSERT INTO `fa_admin_log` VALUES ('152', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"1f31d76cce6f5fd4c7c3ae8b85581279\",\"username\":\"admin\",\"captcha\":\"xgei\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588562845');
INSERT INTO `fa_admin_log` VALUES ('153', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"10309ffac5f0acde6fe7708e2ecd3bc0\",\"username\":\"admin\",\"captcha\":\"xgei\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588562855');
INSERT INTO `fa_admin_log` VALUES ('154', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"55be368dab88eb841db03d77e938b59b\",\"username\":\"admin\",\"captcha\":\"uxui\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588562862');
INSERT INTO `fa_admin_log` VALUES ('155', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"0d82e3d4ac576d701e627e44d881453c\",\"username\":\"admin\",\"captcha\":\"rtdy\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588562873');
INSERT INTO `fa_admin_log` VALUES ('156', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"aad8f93085857d5630bb4e2b1f0a201f\",\"username\":\"admin\",\"captcha\":\"elfp\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588562888');
INSERT INTO `fa_admin_log` VALUES ('157', '1', 'admin', '/FacuqGBSRb.php/professionlevel/add?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5165\\u95e8\",\"profession_id\":\"1\",\"summary\":\"\\u5165\\u95e8\\u5165\\u95e8\\u5165\\u95e8\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588569535');
INSERT INTO `fa_admin_log` VALUES ('158', '1', 'admin', '/FacuqGBSRb.php/professionlevel/add?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5927\\u5e08\",\"profession_id\":\"1\",\"summary\":\"\\u5927\\u5e08master\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588569554');
INSERT INTO `fa_admin_log` VALUES ('159', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/1?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"name\":\"\\u5165\\u95e8\",\"profession_id\":\"2\",\"summary\":\"\\u83dc\\u9e21\\u7ea7\\u522b\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588569569');
INSERT INTO `fa_admin_log` VALUES ('160', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/5?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"5\",\"name\":\"\\u5927\\u5e08\",\"summary\":\"\\u5927\\u5e08master\"},\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588580518');
INSERT INTO `fa_admin_log` VALUES ('161', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/4?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"4\",\"name\":\"\\u5165\\u95e8\",\"summary\":\"\\u5165\\u95e8\\u5165\\u95e8\\u5165\\u95e8 green hand\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588580540');
INSERT INTO `fa_admin_log` VALUES ('162', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"39fb75f8c905c2663ea6efd8d977dce0\",\"username\":\"admin\",\"captcha\":\"dnfe\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588602800');
INSERT INTO `fa_admin_log` VALUES ('163', '1', 'admin', '/FacuqGBSRb.php/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"nickname\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"mobile\":\"13888888888\",\"avatar\":\"\\/uploads\\/20200502\\/b4dc48b4d622f895cef38e153d798c4e.jpg\",\"level\":\"0\",\"gender\":\"0\",\"birthday\":\"2017-04-15\",\"bio\":\"\",\"money\":\"0.00\",\"score\":\"0\",\"successions\":\"1\",\"maxsuccessions\":\"1\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588603184');
INSERT INTO `fa_admin_log` VALUES ('164', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"ddd4d23cdb6575990261b1e39413a0e3\",\"username\":\"admin\",\"captcha\":\"4fin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1588611152');
INSERT INTO `fa_admin_log` VALUES ('165', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"e8167134defeece15ee9d9f28d1789a4\",\"username\":\"admin\",\"captcha\":\"BBZB\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '1588611160');
INSERT INTO `fa_admin_log` VALUES ('166', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"dwd\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588616781');
INSERT INTO `fa_admin_log` VALUES ('167', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\\u674e\\u56db\",\"age\":\"12\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588616788');
INSERT INTO `fa_admin_log` VALUES ('168', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/26?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6\",\"age\":\"25\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588616909');
INSERT INTO `fa_admin_log` VALUES ('169', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/26?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed666\",\"age\":\"25\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588616922');
INSERT INTO `fa_admin_log` VALUES ('170', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/26?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6663\",\"age\":\"25\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"26\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588616964');
INSERT INTO `fa_admin_log` VALUES ('171', '1', 'admin', '/FacuqGBSRb.php/jobhunter/del/ids/26,25', '人才管理', '{\"action\":\"del\",\"ids\":\"26,25\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588617581');
INSERT INTO `fa_admin_log` VALUES ('172', '1', 'admin', '/FacuqGBSRb.php/jobhunter/del/ids/26,25', '人才管理', '{\"action\":\"del\",\"ids\":\"26,25\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588617959');
INSERT INTO `fa_admin_log` VALUES ('173', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed6663\",\"age\":\"25\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588617987');
INSERT INTO `fa_admin_log` VALUES ('174', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/1?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed66633\",\"age\":\"25\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588617996');
INSERT INTO `fa_admin_log` VALUES ('175', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"3ac761179600b7cc6901f6b53fc1a0a7\",\"username\":\"admin\",\"captcha\":\"fnip\",\"keeplogin\":\"1\"}', '116.1.242.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588618383');
INSERT INTO `fa_admin_log` VALUES ('176', '1', 'admin', '/FacuqGBSRb.php/auth/rule/edit/ids/87?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"5d53c9b1e638f8e13664c3a248e81119\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"jobhunter\\/index\",\"title\":\"\\u7b80\\u5386\\u5217\\u8868\",\"icon\":\"fa fa-list-ol\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"87\"}', '116.1.242.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588618432');
INSERT INTO `fa_admin_log` VALUES ('177', '1', 'admin', '/FacuqGBSRb.php/index/index', '', '{\"action\":\"refreshmenu\"}', '116.1.242.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588618432');
INSERT INTO `fa_admin_log` VALUES ('178', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/ids/21?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed66633\",\"age\":\"26\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"},\"ids\":\"21\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588649632');
INSERT INTO `fa_admin_log` VALUES ('179', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"9c9d80453109cef3e55ebacf5c359b84\",\"username\":\"admin\",\"captcha\":\"ekai\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '1588692110');
INSERT INTO `fa_admin_log` VALUES ('180', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"872c48b4bd3f4a3a3ea200ab7071df81\",\"username\":\"admin\",\"captcha\":\"fxpf\",\"keeplogin\":\"1\"}', '116.1.242.161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '1588702270');
INSERT INTO `fa_admin_log` VALUES ('181', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"4d86a4e39e89e3643209f32c8c9541db\",\"username\":\"admin\",\"captcha\":\"x2ue\"}', '116.8.59.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588760062');
INSERT INTO `fa_admin_log` VALUES ('182', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"bb221aa5c4f783ee710316e2e4f426db\",\"username\":\"admin\",\"captcha\":\"tyqy\"}', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '1588823432');
INSERT INTO `fa_admin_log` VALUES ('183', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"e5b1c43ee6ff6d576569ed12c8bb05ed\",\"username\":\"admin\",\"captcha\":\"tyqy\"}', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '1588823440');
INSERT INTO `fa_admin_log` VALUES ('184', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"021842949e096084b1bca30c77d86926\",\"username\":\"admin\",\"captcha\":\"malb\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '1588823451');
INSERT INTO `fa_admin_log` VALUES ('185', '1', 'admin', '/FacuqGBSRb.php/profession/add?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u91d1\\u878d\\u5de5\\u7a0b\",\"summary\":\"\\u5356\\u4fdd\\u9669\\u7684\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588823870');
INSERT INTO `fa_admin_log` VALUES ('186', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/5?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"5\",\"name\":\"\\u91d1\\u878d\\u5de5\\u7a0b\",\"summary\":\"\\u5356\\u4fdd\\u9669\\u7684\"},\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588823982');
INSERT INTO `fa_admin_log` VALUES ('187', '1', 'admin', '/FacuqGBSRb.php/professionlevel/add?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5634\\u5f3a\\u738b\\u8005\",\"summary\":\"\\u5634\\u5f3a\\u738b\\u8005\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588824262');
INSERT INTO `fa_admin_log` VALUES ('188', '1', 'admin', '/FacuqGBSRb.php/professionlevel/add?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u9752\\u94dc\",\"summary\":\"\\u9752\\u94dc\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588824536');
INSERT INTO `fa_admin_log` VALUES ('189', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/7?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"7\",\"name\":\"\\u9752\\u94dc\",\"summary\":\"\\u9752\\u94dc\"},\"ids\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588824828');
INSERT INTO `fa_admin_log` VALUES ('190', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/5?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"5\",\"name\":\"\\u5927\\u5e08\",\"summary\":\"\\u5927\\u5e08master\"},\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588826273');
INSERT INTO `fa_admin_log` VALUES ('191', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588831980');
INSERT INTO `fa_admin_log` VALUES ('192', '1', 'admin', '/FacuqGBSRb.php/user/user/edit/ids/11?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"liaoxx\",\"nickname\":\"liao12\",\"password\":\"\",\"email\":\"993501756@qq.com\",\"mobile\":\"18676684597\",\"avatar\":\"\\/uploads\\/20200505\\/b4dc48b4d622f895cef38e153d798c4e.jpg\",\"level\":\"1\",\"gender\":\"0\",\"birthday\":\"2020-05-06\",\"bio\":\"\\u6211\\u52d2\\u4e2a\\u8349\",\"money\":\"0.00\",\"score\":\"0\",\"successions\":\"2\",\"maxsuccessions\":\"2\",\"prevtime\":\"2020-05-05 20:38:49\",\"logintime\":\"2020-05-06 00:13:25\",\"loginip\":\"116.1.242.161\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2020-05-05 01:24:44\",\"status\":\"normal\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588832344');
INSERT INTO `fa_admin_log` VALUES ('193', '1', 'admin', '/FacuqGBSRb.php/user/user/edit/ids/10?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"liaoxx\",\"nickname\":\"liao13\",\"password\":\"\",\"email\":\"993501756@qq.com\",\"mobile\":\"18676684597\",\"avatar\":\"\\/uploads\\/20200505\\/b4dc48b4d622f895cef38e153d798c4e.jpg\",\"level\":\"1\",\"gender\":\"0\",\"birthday\":\"2020-05-06\",\"bio\":\"\\u6211\\u52d2\\u4e2a\\u8349\",\"money\":\"0.00\",\"score\":\"0\",\"successions\":\"2\",\"maxsuccessions\":\"2\",\"prevtime\":\"2020-05-05 20:38:49\",\"logintime\":\"2020-05-06 00:13:25\",\"loginip\":\"116.1.242.161\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2020-05-05 01:24:44\",\"status\":\"normal\"},\"ids\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588832361');
INSERT INTO `fa_admin_log` VALUES ('194', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"436164ae4ab6e3e9ffe55090569338d2\",\"username\":\"admin\",\"captcha\":\"uans\"}', '220.173.59.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588834401');
INSERT INTO `fa_admin_log` VALUES ('195', '1', 'admin', '/FacuqGBSRb.php/user/user/edit/ids/11?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"liaoxx\",\"nickname\":\"liao12\",\"password\":\"\",\"email\":\"993501756@qq.com\",\"mobile\":\"18676684597\",\"avatar\":\"\\/uploads\\/20200505\\/4f722fb4a6d86dfd50a1d6cdafa8b760.jpg\",\"level\":\"1\",\"gender\":\"0\",\"birthday\":\"2020-05-06\",\"bio\":\"\\u6211\\u52d2\\u4e2a\\u8349\",\"money\":\"0.00\",\"score\":\"0\",\"successions\":\"2\",\"maxsuccessions\":\"2\",\"prevtime\":\"2020-05-05 20:38:49\",\"logintime\":\"2020-05-06 00:13:25\",\"loginip\":\"116.1.242.161\",\"loginfailure\":\"0\",\"joinip\":\"127.0.0.1\",\"jointime\":\"2020-05-05 01:24:44\",\"status\":\"normal\"},\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588834543');
INSERT INTO `fa_admin_log` VALUES ('196', '1', 'admin', '/FacuqGBSRb.php/jobhunter/resume/ids/11', '人才管理', '{\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588835964');
INSERT INTO `fa_admin_log` VALUES ('197', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/', '人才管理', '{\"row\":{\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588836001');
INSERT INTO `fa_admin_log` VALUES ('198', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588839384');
INSERT INTO `fa_admin_log` VALUES ('199', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588839412');
INSERT INTO `fa_admin_log` VALUES ('200', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588839418');
INSERT INTO `fa_admin_log` VALUES ('201', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588839439');
INSERT INTO `fa_admin_log` VALUES ('202', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588839911');
INSERT INTO `fa_admin_log` VALUES ('203', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588841335');
INSERT INTO `fa_admin_log` VALUES ('204', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"1\",\"full_name\":\"\",\"age\":\"\",\"phone\":\"\",\"gender\":\"1\",\"graduate_school\":\"\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588843145');
INSERT INTO `fa_admin_log` VALUES ('205', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"4\",\"full_name\":\"\\u5ed6\\u53c9\\u53c9\",\"age\":\"28\",\"phone\":\"186767555544\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\\u5fd8\\u4e86\"}}', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '1588844696');
INSERT INTO `fa_admin_log` VALUES ('206', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add?dialog=1', '人才管理', '{\"dialog\":\"1\",\"row\":{\"user_id\":\"4\",\"full_name\":\"\\u5ed6\\u53c9\\u53c9\",\"age\":\"28\",\"phone\":\"18645558888\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"\\u5fd8\\u4e86\"}}', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '1588844710');
INSERT INTO `fa_admin_log` VALUES ('207', '1', 'admin', '/FacuqGBSRb.php/jobhunter/add/?userId=11', '人才管理', '{\"userId\":\"11\",\"row\":{\"user_id\":\"11\",\"full_name\":\"\\u5ed6\\u53c9x\",\"age\":\"18\",\"phone\":\"13355667533\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"ggg\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588845176');
INSERT INTO `fa_admin_log` VALUES ('208', '1', 'admin', '/FacuqGBSRb.php/jobhunter/edit/?userId=11', '人才管理', '{\"userId\":\"11\",\"row\":{\"id\":\"1\",\"full_name\":\"\\u5ed66633\",\"age\":\"26\",\"phone\":\"18676684597\",\"gender\":\"1\",\"graduate_school\":\"\\u4e94\\u9053\\u53e3\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\",\"profession_id\":\"1\",\"profession_level_id\":\"1\",\"resume\":\"2000\\u5e74\\u5165\\u5b66\\r\\n2016\\u5e74\\u6bd5\\u4e1a\\r\\n2016\\u5e74\\u5de5\\u4f5c\\r\\n2017\\u5e74\\u5de5\\u4f5c\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588845267');
INSERT INTO `fa_admin_log` VALUES ('209', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"0ea415b58d17baed5e9081e975283421\",\"username\":\"admin\",\"captcha\":\"jw5w\"}', '116.8.57.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588845971');
INSERT INTO `fa_admin_log` VALUES ('210', '0', 'Unknown', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"c915fd265f00210fe6d442ba4e7a35fb\",\"username\":\"admin\",\"captcha\":\"mlfw\"}', '116.8.57.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588845978');
INSERT INTO `fa_admin_log` VALUES ('211', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"d2a49f789450611491e08a6b58b01736\",\"username\":\"admin\",\"captcha\":\"jy3c\"}', '116.8.57.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588845991');
INSERT INTO `fa_admin_log` VALUES ('212', '1', 'admin', '/FacuqGBSRb.php/profession/edit/ids/4?dialog=1', '工种管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"4\",\"name\":\"\\u673a\\u68b0\\u81ea\\u52a8\\u5316\",\"summary\":\"\\u62e7\\u87ba\\u4e1d\\u768412121\"},\"ids\":\"4\"}', '220.173.59.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588846309');
INSERT INTO `fa_admin_log` VALUES ('213', '1', 'admin', '/FacuqGBSRb.php/professionlevel/edit/ids/2?dialog=1', '工种等级管理', '{\"dialog\":\"1\",\"row\":{\"id\":\"2\",\"name\":\"\\u719f\\u7ec3\",\"summary\":\"\\u80fd\\u7528\\u7ea7\\u522b234123412\"},\"ids\":\"2\"}', '220.173.59.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588846321');
INSERT INTO `fa_admin_log` VALUES ('214', '1', 'admin', '/FacuqGBSRb.php/index/login?url=%2FFacuqGBSRb.php', '登录', '{\"url\":\"\\/FacuqGBSRb.php\",\"__token__\":\"367c74048e5305c8962ab41c53adf9f9\",\"username\":\"admin\",\"captcha\":\"ut3d\"}', '220.173.59.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1588847642');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES ('2', '1', '0', '/uploads/20200502/b4dc48b4d622f895cef38e153d798c4e.jpg', '1896', '2528', 'jpg', '0', '965808', 'image/jpeg', '{\"name\":\"B4DC48B4D622F895CEF38E153D798C4E.jpg\"}', '1588431403', '1588431403', '1588431403', 'local', 'db85d3e48b6bfb6cfef4a3f545cbdb6c55c9e7d6');
INSERT INTO `fa_attachment` VALUES ('3', '0', '4', '/uploads/20200505/4f722fb4a6d86dfd50a1d6cdafa8b760.jpg', '980', '735', 'jpg', '0', '37545', 'image/jpeg', '', '1588690793', '1588690793', '1588690793', 'local', '02f625020cae2b9bf9550313c6b07c18abbb091e');
INSERT INTO `fa_attachment` VALUES ('4', '0', '4', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1896', '2528', 'jpg', '0', '965808', 'image/jpeg', '', '1588691110', '1588691110', '1588691110', 'local', 'db85d3e48b6bfb6cfef4a3f545cbdb6c55c9e7d6');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-leaf', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('66', 'file', '0', 'user', 'User', 'fa fa-list', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('85', 'file', '0', 'jobhunter', '人才管理', 'fa fa-user', '155', '', '1', '1588362707', '1588362707', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('87', 'file', '85', 'jobhunter/index', '简历列表', 'fa fa-list-ol', '', '', '1', '1588431715', '1588618432', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('88', 'file', '85', 'profession', '工种管理', 'fa fa-vcard-o', '', '', '1', '1588431964', '1588431964', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('89', 'file', '85', 'professionlevel', '工种等级管理', 'fa fa-angle-double-up', '', '', '1', '1588498585', '1588499474', '0', 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'fast', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for fa_job_hunter
-- ----------------------------
DROP TABLE IF EXISTS `fa_job_hunter`;
CREATE TABLE `fa_job_hunter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(16) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '用户名',
  `full_name` varchar(16) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '全名',
  `age` int(3) NOT NULL DEFAULT '18' COMMENT '年龄',
  `phone` varchar(11) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '手机',
  `gender` tinyint(1) DEFAULT '1' COMMENT '0: 女 ，1：男',
  `graduate_school` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '毕业院校',
  `profession_id` int(11) DEFAULT NULL COMMENT '工种',
  `profession_level_id` int(11) DEFAULT '0' COMMENT '工种等级',
  `resume` text CHARACTER SET utf8mb4 COMMENT '履历',
  `createtime` int(11) DEFAULT '0' COMMENT 'create_time ',
  `updatetime` int(11) DEFAULT '0' COMMENT 'create_time ',
  PRIMARY KEY (`id`,`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_job_hunter
-- ----------------------------
INSERT INTO `fa_job_hunter` VALUES ('1', '1', '廖', '廖6633', '26', '18676684597', '1', '五道口职业技术学院', '1', '1', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">2000年入学</span></p>\r\n<p style=\"text-align: center;\">2016年毕业</p>\r\n<p style=\"text-align: center;\">2016年工作</p>\r\n<p style=\"text-align: center;\">2017年工作</p>', '1588409179', '1588845266');
INSERT INTO `fa_job_hunter` VALUES ('21', '2', '', '张三三', '16', '186766845', '0', '五道口职业技术学院附小', '2', '1', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">2000年入学</span></p>\r\n<p style=\"text-align: center;\">2016年毕业</p>', '1588480469', '1588482209');
INSERT INTO `fa_job_hunter` VALUES ('27', '3', 'liaoxx', '廖13', '25', '18676684597', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588691122');
INSERT INTO `fa_job_hunter` VALUES ('29', '5', '', '张三三', '16', '186766845', '0', '五道口职业技术学院附小', '2', '1', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">2000年入学</span></p>\r\n<p style=\"text-align: center;\">2016年毕业</p>', '1588480469', '1588482209');
INSERT INTO `fa_job_hunter` VALUES ('28', '4', 'liaoxx', '廖11', '25', '18676684597', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588701854');
INSERT INTO `fa_job_hunter` VALUES ('30', '6', 'liaoxx', '廖12', '25', '18676684597', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588691122');
INSERT INTO `fa_job_hunter` VALUES ('31', '7', 'liaoxx', '廖14', '25', '18676684597', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588701854');
INSERT INTO `fa_job_hunter` VALUES ('32', '88', '廖', '廖6', '26', '18676684597', '1', '五道口职业技术学院', '1', '1', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">2000年入学</span></p>\r\n<p style=\"text-align: center;\">2016年毕业</p>\r\n<p style=\"text-align: center;\">2016年工作</p>\r\n<p style=\"text-align: center;\">2017年工作</p>', '1588409179', '1588649632');
INSERT INTO `fa_job_hunter` VALUES ('33', '9', '', '廖15', '16', '186766845', '0', '五道口职业技术学院附小', '2', '1', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">2000年入学</span></p>\r\n<p style=\"text-align: center;\">2016年毕业</p>', '1588480469', '1588482209');
INSERT INTO `fa_job_hunter` VALUES ('34', '100', 'liaoxx', '廖16', '25', '18676684597', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588691122');
INSERT INTO `fa_job_hunter` VALUES ('35', '111', '', '廖17', '16', '186766845', '0', '五道口职业技术学院附小', '2', '1', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">2000年入学</span></p>\r\n<p style=\"text-align: center;\">2016年毕业</p>', '1588480469', '1588482209');
INSERT INTO `fa_job_hunter` VALUES ('36', '222', 'liaoxx', '廖18', '25', '18676684597', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588701854');
INSERT INTO `fa_job_hunter` VALUES ('37', '13', 'liaoxx', '廖19', '25', '18633333333', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588691122');
INSERT INTO `fa_job_hunter` VALUES ('38', '14', 'liaoxx', '廖20', '25', '18633333333', '1', '广西大学', '1', '1', '<p style=\"text-align: center;\">今年18岁.</p>\r\n<p>非著名菜鸡程序员</p>\r\n<p>退堂鼓10级选手</p>', '1588682407', '1588701854');
INSERT INTO `fa_job_hunter` VALUES ('39', '4', '', '廖叉叉', '28', '18645558888', '1', '五道口职业技术学院', '1', '1', '<p style=\"text-align: center;\">忘了</p>', '1588844710', '1588844710');
INSERT INTO `fa_job_hunter` VALUES ('40', '11', '', '廖叉x', '18', '13355667533', '1', '五道口职业技术学院', '1', '1', '<p style=\"text-align: center;\">ggg</p>', '1588845175', '1588845175');

-- ----------------------------
-- Table structure for fa_profession
-- ----------------------------
DROP TABLE IF EXISTS `fa_profession`;
CREATE TABLE `fa_profession` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(16) NOT NULL COMMENT '工种名称',
  `summary` varchar(255) NOT NULL COMMENT '工种的简述',
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fa_profession
-- ----------------------------
INSERT INTO `fa_profession` VALUES ('1', '物流', '送快递的', '1588497411', '1588497411');
INSERT INTO `fa_profession` VALUES ('2', '计算机科学', '修电脑的啊', '1588497438', '1588497438');
INSERT INTO `fa_profession` VALUES ('3', '道路建筑', '搬砖的啊', '1588497499', '1588498288');
INSERT INTO `fa_profession` VALUES ('4', '机械自动化', '拧螺丝的12121', '1588499525', '1588846309');
INSERT INTO `fa_profession` VALUES ('5', '金融工程', '<p style=\"text-align: center;\"><span style=\"color: #008000;\"><strong>卖<span style=\"color: #ff0000;\">保险</span>的</strong></span></p>', '1588823870', '1588823982');

-- ----------------------------
-- Table structure for fa_profession_level
-- ----------------------------
DROP TABLE IF EXISTS `fa_profession_level`;
CREATE TABLE `fa_profession_level` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(16) NOT NULL COMMENT '工种json',
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) NOT NULL,
  `summary` varchar(255) NOT NULL COMMENT '工种等级简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fa_profession_level
-- ----------------------------
INSERT INTO `fa_profession_level` VALUES ('1', '入门', '1588436693', '1588569569', '菜鸡级别');
INSERT INTO `fa_profession_level` VALUES ('2', '熟练', '0', '1588846321', '能用级别234123412');
INSERT INTO `fa_profession_level` VALUES ('3', '精通', '1588503897', '1588505236', '可以吹水了');
INSERT INTO `fa_profession_level` VALUES ('4', '入门 ', '1588569535', '1588580540', '入门入门入门 green hand');
INSERT INTO `fa_profession_level` VALUES ('5', '大师', '1588569554', '1588826273', '<p><strong>大师master</strong></p>');
INSERT INTO `fa_profession_level` VALUES ('6', '嘴强王者', '1588824262', '1588824262', '<p style=\"text-align: center;\"><span style=\"color: #339966;\">嘴强王者</span></p>');
INSERT INTO `fa_profession_level` VALUES ('7', '青铜', '1588824535', '1588824827', '<p style=\"text-align: center;\"><span style=\"color: #008080;\"><strong>青铜</strong></span></p>');

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信验证码表';

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', null, '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/uploads/20200502/b4dc48b4d622f895cef38e153d798c4e.jpg', '0', '0', '2017-04-15', '', '0.00', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1588603183', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('2', '0', 'zhouyujun', 'zhouyujun', '2da1397ee0f9ffa18cd8a8a7ee77d1eb', 'ZHxhUE', 'admin123@admin.com', '18666666666', '', '1', '0', null, 'asd', '0.00', '0', '1', '1', '1588571837', '1588571837', '127.0.0.1', '0', '127.0.0.1', '1588571837', '1588571837', '1588612276', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('3', '0', 'jack123', 'jack123', '712aa33639667b676e20d27edd4e22d4', 'BISn7f', 'fast123@fast.com', '18888888888', '', '1', '0', null, '', '0.00', '0', '1', '1', '1588612609', '1588612764', '127.0.0.1', '0', '127.0.0.1', '1588612609', '1588612609', '1588612764', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('4', '0', 'liaox我单位', 'liaoxx', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', null, '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588695205', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('5', '0', 'liao对我的', 'liaoxx', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588695205', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('6', '0', 'liao都无法回家后', 'liaoxx', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588695205', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('7', '0', 'liao该如何', 'liaoxx', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588695205', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('8', '0', 'lia很健康', 'liaoxx', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588695205', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('9', '0', 'liaoxxddd', 'liaoxx', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588695205', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('10', '1', 'liaoxx', 'liao13', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/b4dc48b4d622f895cef38e153d798c4e.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '1', '2', '1588695205', '1588870289', '112.97.51.105', '0', '127.0.0.1', '1588613084', '1588613084', '1588870289', '', 'normal', '');
INSERT INTO `fa_user` VALUES ('11', '1', 'liaoxx', 'liao12', '01481cb1d8debdd845bc080c2299c751', '3HUPJl', '993501756@qq.com', '18676684597', '/uploads/20200505/4f722fb4a6d86dfd50a1d6cdafa8b760.jpg', '1', '0', '2020-05-06', '我勒个草', '0.00', '0', '2', '2', '1588682329', '1588695205', '116.1.242.161', '0', '127.0.0.1', '1588613084', '1588613084', '1588834543', '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员余额变动表';

-- ----------------------------
-- Records of fa_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员规则表';

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `fa_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `fa_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `fa_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `fa_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `fa_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `fa_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `fa_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `fa_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `fa_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `fa_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `fa_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员积分变动表';

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------
INSERT INTO `fa_user_score_log` VALUES ('1', '1', '0', '0', '0', '管理员变更积分', '1588603183');
INSERT INTO `fa_user_score_log` VALUES ('2', '11', '0', '0', '0', '管理员变更积分', '1588832344');
INSERT INTO `fa_user_score_log` VALUES ('3', '10', '0', '0', '0', '管理员变更积分', '1588832360');
INSERT INTO `fa_user_score_log` VALUES ('4', '11', '0', '0', '0', '管理员变更积分', '1588834542');

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员Token表';

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------
INSERT INTO `fa_user_token` VALUES ('140b86d454f1acbf24e605979c2f3fe0b7185c7c', '3', '1588612609', '1591204609');
INSERT INTO `fa_user_token` VALUES ('4eeaf2e157bb138c0e0c7c9894253b241a046934', '4', '1588613085', '1591205085');
INSERT INTO `fa_user_token` VALUES ('75d72a3461be93d775fdaab3391590efdd5569e2', '3', '1588612764', '1591204764');
INSERT INTO `fa_user_token` VALUES ('ba8bc68f221b4c54854be075aaed59c30541e507', '4', '1588682329', '1591274329');
INSERT INTO `fa_user_token` VALUES ('ea807cfa385c0214196f20903d6089935e89fc81', '4', '1588695205', '1591287205');
INSERT INTO `fa_user_token` VALUES ('f08882267f29720302ad6754d98368bd2f976e5e', '10', '1588870289', '1591462289');
