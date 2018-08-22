/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.10
Source Server Version : 50722
Source Host           : 192.168.10.10:3306
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-14 19:50:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '会员管理', 'fa-user-secret', 'users', '2018-08-14 06:48:03', '2018-08-14 07:50:49');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', '文章管理', 'fa-align-justify', 'article', '2018-08-14 07:46:48', '2018-08-14 07:51:04');
INSERT INTO `admin_menu` VALUES ('10', '9', '0', '文章列表', 'fa-align-left', 'article', '2018-08-14 08:05:32', '2018-08-14 08:05:32');
INSERT INTO `admin_menu` VALUES ('11', '9', '0', '文章分类', 'fa-align-right', 'category', '2018-08-14 08:06:11', '2018-08-14 08:06:11');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:35:43', '2018-08-14 06:35:43');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:35:57', '2018-08-14 06:35:57');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:36:00', '2018-08-14 06:36:00');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:36:02', '2018-08-14 06:36:02');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:36:04', '2018-08-14 06:36:04');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:36:33', '2018-08-14 06:36:33');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:36:38', '2018-08-14 06:36:38');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.10.1', '[]', '2018-08-14 06:38:01', '2018-08-14 06:38:01');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:38:11', '2018-08-14 06:38:11');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:38:21', '2018-08-14 06:38:21');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:38:34', '2018-08-14 06:38:34');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/permissions', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:38:38', '2018-08-14 06:38:38');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:38:57', '2018-08-14 06:38:57');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:38:58', '2018-08-14 06:38:58');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:39:00', '2018-08-14 06:39:00');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:39:01', '2018-08-14 06:39:01');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:39:07', '2018-08-14 06:39:07');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2018-08-14 06:44:15', '2018-08-14 06:44:15');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:44:19', '2018-08-14 06:44:19');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 06:45:13', '2018-08-14 06:45:13');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:46:05', '2018-08-14 06:46:05');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"6\",\"title\":\"\\u4f1a\\u5458\\u5217\\u8868\",\"icon\":\"fa-user-secret\",\"uri\":\"users\\/index\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 06:48:03', '2018-08-14 06:48:03');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 06:48:04', '2018-08-14 06:48:04');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 06:48:09', '2018-08-14 06:48:09');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:48:19', '2018-08-14 06:48:19');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:48:20', '2018-08-14 06:48:20');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:48:31', '2018-08-14 06:48:31');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:48:31', '2018-08-14 06:48:31');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:52:28', '2018-08-14 06:52:28');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:52:38', '2018-08-14 06:52:38');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:52:38', '2018-08-14 06:52:38');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:28', '2018-08-14 06:59:28');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:35', '2018-08-14 06:59:35');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:36', '2018-08-14 06:59:36');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:38', '2018-08-14 06:59:38');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:39', '2018-08-14 06:59:39');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:39', '2018-08-14 06:59:39');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:40', '2018-08-14 06:59:40');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:40', '2018-08-14 06:59:40');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:40', '2018-08-14 06:59:40');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:40', '2018-08-14 06:59:40');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:41', '2018-08-14 06:59:41');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:46', '2018-08-14 06:59:46');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:59:46', '2018-08-14 06:59:46');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:47', '2018-08-14 06:59:47');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:59:48', '2018-08-14 06:59:48');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:48', '2018-08-14 06:59:48');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 06:59:49', '2018-08-14 06:59:49');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 06:59:50', '2018-08-14 06:59:50');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 06:59:56', '2018-08-14 06:59:56');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 06:59:57', '2018-08-14 06:59:57');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:01:11', '2018-08-14 07:01:11');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:01:11', '2018-08-14 07:01:11');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:01:12', '2018-08-14 07:01:12');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:01:12', '2018-08-14 07:01:12');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:01:14', '2018-08-14 07:01:14');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:01:14', '2018-08-14 07:01:14');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:03:11', '2018-08-14 07:03:11');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 07:03:11', '2018-08-14 07:03:11');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:03:13', '2018-08-14 07:03:13');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 07:03:13', '2018-08-14 07:03:13');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:03:32', '2018-08-14 07:03:32');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:03:32', '2018-08-14 07:03:32');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:24:55', '2018-08-14 07:24:55');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:25:03', '2018-08-14 07:25:03');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:25:03', '2018-08-14 07:25:03');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-justify\",\"uri\":\"article\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 07:46:48', '2018-08-14 07:46:48');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:46:49', '2018-08-14 07:46:49');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:46:51', '2018-08-14 07:46:51');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:46:56', '2018-08-14 07:46:56');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:46:58', '2018-08-14 07:46:58');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:47:23', '2018-08-14 07:47:23');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:47:25', '2018-08-14 07:47:25');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:47:26', '2018-08-14 07:47:26');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:47:47', '2018-08-14 07:47:47');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 07:47:47', '2018-08-14 07:47:47');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:48:01', '2018-08-14 07:48:01');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:48:02', '2018-08-14 07:48:02');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:48:06', '2018-08-14 07:48:06');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:48:16', '2018-08-14 07:48:16');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin', 'GET', '192.168.10.1', '[]', '2018-08-14 07:48:16', '2018-08-14 07:48:16');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:48:33', '2018-08-14 07:48:33');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/users/index', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:48:38', '2018-08-14 07:48:38');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:48:38', '2018-08-14 07:48:38');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:48:44', '2018-08-14 07:48:44');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/menu/8', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f1a\\u5458\\u5217\\u8868\",\"icon\":\"fa-user-secret\",\"uri\":\"users\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/auth\\/menu\"}', '2018-08-14 07:49:07', '2018-08-14 07:49:07');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:49:08', '2018-08-14 07:49:08');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:49:11', '2018-08-14 07:49:11');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:23', '2018-08-14 07:50:23');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:24', '2018-08-14 07:50:24');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:25', '2018-08-14 07:50:25');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:26', '2018-08-14 07:50:26');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:32', '2018-08-14 07:50:32');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:38', '2018-08-14 07:50:38');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:42', '2018-08-14 07:50:42');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu/8', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-user-secret\",\"uri\":\"users\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/auth\\/menu\"}', '2018-08-14 07:50:49', '2018-08-14 07:50:49');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:50:50', '2018-08-14 07:50:50');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:52', '2018-08-14 07:50:52');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:56', '2018-08-14 07:50:56');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:50:58', '2018-08-14 07:50:58');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/menu/9', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-align-justify\",\"uri\":\"article\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/auth\\/menu\"}', '2018-08-14 07:51:04', '2018-08-14 07:51:04');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 07:51:04', '2018-08-14 07:51:04');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:51:07', '2018-08-14 07:51:07');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:51:09', '2018-08-14 07:51:09');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:51:19', '2018-08-14 07:51:19');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:51:24', '2018-08-14 07:51:24');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:51:30', '2018-08-14 07:51:30');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 07:51:31', '2018-08-14 07:51:31');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:03:53', '2018-08-14 08:03:53');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:05:06', '2018-08-14 08:05:06');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"9\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-align-left\",\"uri\":\"article\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 08:05:31', '2018-08-14 08:05:31');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 08:05:32', '2018-08-14 08:05:32');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"9\",\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"icon\":\"fa-align-right\",\"uri\":\"category\",\"roles\":[\"1\",null],\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 08:06:11', '2018-08-14 08:06:11');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 08:06:11', '2018-08-14 08:06:11');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2018-08-14 08:06:17', '2018-08-14 08:06:17');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:06:24', '2018-08-14 08:06:24');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:06:57', '2018-08-14 08:06:57');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:00', '2018-08-14 08:07:00');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:01', '2018-08-14 08:07:01');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:02', '2018-08-14 08:07:02');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:03', '2018-08-14 08:07:03');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:04', '2018-08-14 08:07:04');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:05', '2018-08-14 08:07:05');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:06', '2018-08-14 08:07:06');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:17', '2018-08-14 08:07:17');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:07:20', '2018-08-14 08:07:20');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:08:18', '2018-08-14 08:08:18');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:08:23', '2018-08-14 08:08:23');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:08:24', '2018-08-14 08:08:24');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:20', '2018-08-14 08:10:20');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:21', '2018-08-14 08:10:21');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:23', '2018-08-14 08:10:23');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:24', '2018-08-14 08:10:24');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:25', '2018-08-14 08:10:25');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:26', '2018-08-14 08:10:26');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:28', '2018-08-14 08:10:28');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:29', '2018-08-14 08:10:29');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:10:39', '2018-08-14 08:10:39');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:17:41', '2018-08-14 08:17:41');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:17:55', '2018-08-14 08:17:55');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:17:56', '2018-08-14 08:17:56');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 08:18:00', '2018-08-14 08:18:00');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:18:07', '2018-08-14 08:18:07');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:18:09', '2018-08-14 08:18:09');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:21:08', '2018-08-14 08:21:08');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:21:14', '2018-08-14 08:21:14');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:21:15', '2018-08-14 08:21:15');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:21:17', '2018-08-14 08:21:17');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:21:35', '2018-08-14 08:21:35');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:24:58', '2018-08-14 08:24:58');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:26:40', '2018-08-14 08:26:40');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:26:44', '2018-08-14 08:26:44');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:28:54', '2018-08-14 08:28:54');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:29:00', '2018-08-14 08:29:00');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:29:01', '2018-08-14 08:29:01');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:29:49', '2018-08-14 08:29:49');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:29:54', '2018-08-14 08:29:54');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/category/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:31:11', '2018-08-14 08:31:11');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:32:18', '2018-08-14 08:32:18');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:34:17', '2018-08-14 08:34:17');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:36:55', '2018-08-14 08:36:55');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:39:41', '2018-08-14 08:39:41');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:39:44', '2018-08-14 08:39:44');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:39:48', '2018-08-14 08:39:48');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:41:21', '2018-08-14 08:41:21');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:41:44', '2018-08-14 08:41:44');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 08:41:46', '2018-08-14 08:41:46');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/category', 'POST', '192.168.10.1', '{\"name\":\"\\u7537\\u88c5\",\"sort\":\"1\",\"is_del\":\"on\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 08:42:20', '2018-08-14 08:42:20');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 08:42:21', '2018-08-14 08:42:21');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/category/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:42:30', '2018-08-14 08:42:30');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:42:37', '2018-08-14 08:42:37');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:43:08', '2018-08-14 08:43:08');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/category/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:43:29', '2018-08-14 08:43:29');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/category/1', 'GET', '192.168.10.1', '[]', '2018-08-14 08:45:34', '2018-08-14 08:45:34');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/category/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:45:41', '2018-08-14 08:45:41');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/category/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:45:55', '2018-08-14 08:45:55');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/category/1', 'GET', '192.168.10.1', '[]', '2018-08-14 08:46:34', '2018-08-14 08:46:34');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/category/1', 'GET', '192.168.10.1', '[]', '2018-08-14 08:46:54', '2018-08-14 08:46:54');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/category/1', 'GET', '192.168.10.1', '[]', '2018-08-14 08:48:11', '2018-08-14 08:48:11');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/category/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:17', '2018-08-14 08:48:17');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/category/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:23', '2018-08-14 08:48:23');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/category/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:26', '2018-08-14 08:48:26');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:44', '2018-08-14 08:48:44');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:45', '2018-08-14 08:48:45');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:46', '2018-08-14 08:48:46');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 08:48:48', '2018-08-14 08:48:48');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:04:55', '2018-08-14 09:04:55');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:04:56', '2018-08-14 09:04:56');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:04:57', '2018-08-14 09:04:57');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:05:00', '2018-08-14 09:05:00');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:05:57', '2018-08-14 09:05:57');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:05:57', '2018-08-14 09:05:57');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:05:58', '2018-08-14 09:05:58');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:05:59', '2018-08-14 09:05:59');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:01', '2018-08-14 09:06:01');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:02', '2018-08-14 09:06:02');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:03', '2018-08-14 09:06:03');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:04', '2018-08-14 09:06:04');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:44', '2018-08-14 09:06:44');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:47', '2018-08-14 09:06:47');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:48', '2018-08-14 09:06:48');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:06:50', '2018-08-14 09:06:50');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:07:45', '2018-08-14 09:07:45');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:07:46', '2018-08-14 09:07:46');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:07:48', '2018-08-14 09:07:48');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:16:09', '2018-08-14 09:16:09');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:19:35', '2018-08-14 09:19:35');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:19:50', '2018-08-14 09:19:50');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 09:19:51', '2018-08-14 09:19:51');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:20:01', '2018-08-14 09:20:01');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:24:08', '2018-08-14 09:24:08');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:24:13', '2018-08-14 09:24:13');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:25:14', '2018-08-14 09:25:14');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:28:26', '2018-08-14 09:28:26');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:29:10', '2018-08-14 09:29:10');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 09:29:32', '2018-08-14 09:29:32');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:37:00', '2018-08-14 10:37:00');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":\"\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\",\"desc\":\"\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\",\"sort\":\"0\",\"centent\":\"<p>\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae\\u7528\\u6237\\u6ce8\\u518c\\u534f\\u8bae<\\/p>\",\"is_del\":\"on\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 10:37:36', '2018-08-14 10:37:36');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:37:37', '2018-08-14 10:37:37');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:39:47', '2018-08-14 10:39:47');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:40:46', '2018-08-14 10:40:46');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:50:22', '2018-08-14 10:50:22');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/article/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:50:23', '2018-08-14 10:50:23');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:51:00', '2018-08-14 10:51:00');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/article/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:51:01', '2018-08-14 10:51:01');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:51:27', '2018-08-14 10:51:27');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/article/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:51:28', '2018-08-14 10:51:28');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:51:49', '2018-08-14 10:51:49');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:53:20', '2018-08-14 10:53:20');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:53:41', '2018-08-14 10:53:41');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:53:42', '2018-08-14 10:53:42');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:54:06', '2018-08-14 10:54:06');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:54:07', '2018-08-14 10:54:07');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 10:54:23', '2018-08-14 10:54:23');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 10:54:24', '2018-08-14 10:54:24');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:14:26', '2018-08-14 11:14:26');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:14:27', '2018-08-14 11:14:27');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:15:57', '2018-08-14 11:15:57');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:15:58', '2018-08-14 11:15:58');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:18:27', '2018-08-14 11:18:27');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:18:28', '2018-08-14 11:18:28');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:20:50', '2018-08-14 11:20:50');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:20:51', '2018-08-14 11:20:51');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:22:39', '2018-08-14 11:22:39');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:22:40', '2018-08-14 11:22:40');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:23:06', '2018-08-14 11:23:06');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:23:06', '2018-08-14 11:23:06');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":\"\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\",\"desc\":\"\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\",\"sort\":\"1\",\"centent\":\"<p>\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898\\u6d4b\\u8bd5\\u6587\\u7ae0\\u6807\\u9898<\\/p>\",\"category_id\":\"1\",\"is_del\":\"on\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 11:24:22', '2018-08-14 11:24:22');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:24:22', '2018-08-14 11:24:22');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:24:27', '2018-08-14 11:24:27');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:24:30', '2018-08-14 11:24:30');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:24:34', '2018-08-14 11:24:34');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:24:36', '2018-08-14 11:24:36');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:24:37', '2018-08-14 11:24:37');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:26:19', '2018-08-14 11:26:19');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:26:28', '2018-08-14 11:26:28');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:30', '2018-08-14 11:26:30');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:26:31', '2018-08-14 11:26:31');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:34', '2018-08-14 11:26:34');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:35', '2018-08-14 11:26:35');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:36', '2018-08-14 11:26:36');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:38', '2018-08-14 11:26:38');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:39', '2018-08-14 11:26:39');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:40', '2018-08-14 11:26:40');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:26:41', '2018-08-14 11:26:41');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 11:27:34', '2018-08-14 11:27:34');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:27:36', '2018-08-14 11:27:36');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:28:15', '2018-08-14 11:28:15');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:28:54', '2018-08-14 11:28:54');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/article/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:29:15', '2018-08-14 11:29:15');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/article/1', 'GET', '192.168.10.1', '[]', '2018-08-14 11:29:30', '2018-08-14 11:29:30');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/article/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:29:33', '2018-08-14 11:29:33');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:29:34', '2018-08-14 11:29:34');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:29:52', '2018-08-14 11:29:52');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:29:54', '2018-08-14 11:29:54');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:29:59', '2018-08-14 11:29:59');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:29:59', '2018-08-14 11:29:59');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":null,\"desc\":null,\"sort\":\"0\",\"centent\":null,\"category_id\":null,\"is_del\":\"off\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/article\"}', '2018-08-14 11:30:04', '2018-08-14 11:30:04');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:30:04', '2018-08-14 11:30:04');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:30:05', '2018-08-14 11:30:05');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:30', '2018-08-14 11:32:30');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:31', '2018-08-14 11:32:31');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":null,\"desc\":null,\"sort\":\"0\",\"centent\":null,\"category_id\":null,\"is_del\":\"off\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/article\\/1\"}', '2018-08-14 11:32:34', '2018-08-14 11:32:34');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:34', '2018-08-14 11:32:34');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:35', '2018-08-14 11:32:35');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:54', '2018-08-14 11:32:54');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:54', '2018-08-14 11:32:54');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":null,\"desc\":null,\"sort\":\"0\",\"centent\":null,\"category_id\":null,\"is_del\":\"off\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 11:32:56', '2018-08-14 11:32:56');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:56', '2018-08-14 11:32:56');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:32:56', '2018-08-14 11:32:56');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:33:31', '2018-08-14 11:33:31');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:33:32', '2018-08-14 11:33:32');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":null,\"desc\":null,\"sort\":\"0\",\"centent\":null,\"category_id\":null,\"is_del\":\"off\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 11:33:34', '2018-08-14 11:33:34');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:33:34', '2018-08-14 11:33:34');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:33:34', '2018-08-14 11:33:34');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:34:17', '2018-08-14 11:34:17');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:34:18', '2018-08-14 11:34:18');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":null,\"desc\":null,\"sort\":\"0\",\"centent\":null,\"category_id\":null,\"is_del\":\"off\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 11:34:20', '2018-08-14 11:34:20');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:34:20', '2018-08-14 11:34:20');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:34:20', '2018-08-14 11:34:20');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:31', '2018-08-14 11:35:31');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/article/1', 'DELETE', '192.168.10.1', '{\"_method\":\"delete\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\"}', '2018-08-14 11:35:39', '2018-08-14 11:35:39');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:39', '2018-08-14 11:35:39');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:46', '2018-08-14 11:35:46');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:47', '2018-08-14 11:35:47');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:49', '2018-08-14 11:35:49');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:52', '2018-08-14 11:35:52');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/category/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:35:54', '2018-08-14 11:35:54');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/category', 'POST', '192.168.10.1', '{\"name\":\"\\u5973\\u88c5\",\"sort\":\"1\",\"is_del\":\"on\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/category\"}', '2018-08-14 11:36:17', '2018-08-14 11:36:17');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 11:36:17', '2018-08-14 11:36:17');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/category/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:37:07', '2018-08-14 11:37:07');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/category', 'POST', '192.168.10.1', '{\"name\":\"\\u51ac\\u88c5\",\"sort\":\"2\",\"is_del\":\"on\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/category\"}', '2018-08-14 11:37:32', '2018-08-14 11:37:32');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/category', 'GET', '192.168.10.1', '[]', '2018-08-14 11:37:32', '2018-08-14 11:37:32');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:37:38', '2018-08-14 11:37:38');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:37:40', '2018-08-14 11:37:40');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:37:41', '2018-08-14 11:37:41');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/article', 'POST', '192.168.10.1', '{\"title\":\"\\u5973\\u88c51\",\"desc\":\"\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51\",\"sort\":\"1\",\"centent\":\"<p>\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51\\u5973\\u88c51<\\/p>\",\"category_id\":\"2\",\"is_del\":\"on\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/article\"}', '2018-08-14 11:38:06', '2018-08-14 11:38:06');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:38:07', '2018-08-14 11:38:07');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:14', '2018-08-14 11:38:14');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:16', '2018-08-14 11:38:16');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:20', '2018-08-14 11:38:20');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:22', '2018-08-14 11:38:22');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:40', '2018-08-14 11:38:40');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:41', '2018-08-14 11:38:41');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:46', '2018-08-14 11:38:46');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:38:49', '2018-08-14 11:38:49');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:39:18', '2018-08-14 11:39:18');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:39:18', '2018-08-14 11:39:18');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/category/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:39:20', '2018-08-14 11:39:20');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/category', 'POST', '192.168.10.1', '{\"name\":null,\"sort\":\"0\",\"is_del\":\"off\",\"_token\":\"jktccrZDHi3LFYCLOFvpdKwKci7vclqNSIEvxBOR\",\"_previous_\":\"http:\\/\\/www.liubbs.com\\/admin\\/category\"}', '2018-08-14 11:39:22', '2018-08-14 11:39:22');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:39:22', '2018-08-14 11:39:22');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/category/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:41:51', '2018-08-14 11:41:51');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:41:57', '2018-08-14 11:41:57');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:42:00', '2018-08-14 11:42:00');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:42:11', '2018-08-14 11:42:11');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:42:41', '2018-08-14 11:42:41');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:42:52', '2018-08-14 11:42:52');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:44:28', '2018-08-14 11:44:28');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:44:36', '2018-08-14 11:44:36');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/article/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:44:37', '2018-08-14 11:44:37');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:44:38', '2018-08-14 11:44:38');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:44:41', '2018-08-14 11:44:41');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/article', 'GET', '192.168.10.1', '[]', '2018-08-14 11:44:47', '2018-08-14 11:44:47');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/article/create', 'GET', '192.168.10.1', '[]', '2018-08-14 11:44:54', '2018-08-14 11:44:54');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/AjaxCategory', 'GET', '192.168.10.1', '[]', '2018-08-14 11:44:54', '2018-08-14 11:44:54');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:45:02', '2018-08-14 11:45:02');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:45:06', '2018-08-14 11:45:06');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:45:12', '2018-08-14 11:45:12');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/article', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-14 11:45:16', '2018-08-14 11:45:16');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '10', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-08-14 06:35:22', '2018-08-14 06:35:22');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$wbIghIdNex3QW.i9hIuYCOngkINQ4Ha3CK.GKVgQ5DSRWT3JqGKp2', 'Administrator', null, null, '2018-08-14 06:35:22', '2018-08-14 06:35:22');

-- ----------------------------
-- Table structure for article_categorys
-- ----------------------------
DROP TABLE IF EXISTS `article_categorys`;
CREATE TABLE `article_categorys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '分类名称',
  `icon` varchar(255) NOT NULL COMMENT '分类icon',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `is_del` tinyint(2) unsigned NOT NULL COMMENT '是否正常1,正常；0，禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_categorys
-- ----------------------------
INSERT INTO `article_categorys` VALUES ('1', '男装', 'public/upload/image//5b3c3ec8Nbb06c73c.jpg', '2018-08-14 08:42:20', '2018-08-14 08:42:20', '1', '1');
INSERT INTO `article_categorys` VALUES ('2', '女装', 'public/upload/image//31711d0233587be4aacaa9da582d767f.jpg', '2018-08-14 11:36:17', '2018-08-14 11:36:17', '1', '1');
INSERT INTO `article_categorys` VALUES ('3', '冬装', 'public/upload/image//5b3c3ec9Nbe2c1841.jpg', '2018-08-14 11:37:32', '2018-08-14 11:37:32', '2', '1');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_del` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '是否删除，1，正常；0，禁用；',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `desc` varchar(255) NOT NULL COMMENT '文章简介',
  `centent` mediumtext COMMENT '文章内容',
  `category_id` int(10) unsigned NOT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='文章列表';

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('2', '女装1', '2018-08-14 11:38:06', '2018-08-14 11:38:06', '1', '1', '女装1女装1女装1女装1', '<p>女装1女装1女装1女装1女装1女装1女装1</p>', '2');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
