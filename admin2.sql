/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 50722
Source Host           : 127.0.0.1:33060
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-08-19 23:40:41
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_menu` VALUES ('12', '0', '0', '商品管理', 'fa-area-chart', 'goods', '2018-08-19 10:29:56', '2018-08-19 10:29:56');
INSERT INTO `admin_menu` VALUES ('13', '12', '0', '商品列表', 'fa-align-justify', 'goods', '2018-08-19 10:30:24', '2018-08-19 10:30:24');
INSERT INTO `admin_menu` VALUES ('14', '12', '0', '商品分类', 'fa-align-left', 'GoodsCategory', '2018-08-19 11:02:06', '2018-08-19 11:02:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-18 18:03:29', '2018-08-18 18:03:29');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:03:35', '2018-08-18 18:03:35');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:03:37', '2018-08-18 18:03:37');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:03:40', '2018-08-18 18:03:40');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:03:44', '2018-08-18 18:03:44');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/category/1', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:03:50', '2018-08-18 18:03:50');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:03:55', '2018-08-18 18:03:55');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:04:01', '2018-08-18 18:04:01');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"sort\",\"type\":\"desc\"}}', '2018-08-18 18:04:02', '2018-08-18 18:04:02');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"sort\",\"type\":\"asc\"}}', '2018-08-18 18:04:05', '2018-08-18 18:04:05');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/article/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:04:11', '2018-08-18 18:04:11');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/AjaxCategory', 'GET', '192.168.33.1', '[]', '2018-08-18 18:04:11', '2018-08-18 18:04:11');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-18 18:04:18', '2018-08-18 18:04:18');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2018-08-18 18:04:35', '2018-08-18 18:04:35');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/users', 'GET', '192.168.33.1', '[]', '2018-08-19 05:11:47', '2018-08-19 05:11:47');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:11:51', '2018-08-19 05:11:51');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:11:53', '2018-08-19 05:11:53');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:11:58', '2018-08-19 05:11:58');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/auth/users', 'POST', '192.168.33.1', '{\"username\":\"liuhuanguang\",\"name\":\"\\u540e\\u53f0\\u7ba1\\u7406\\u5458\",\"password\":\"liu19931012\",\"password_confirmation\":\"liu19931012\",\"roles\":[\"1\",null],\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"kX1AnEkWl4udpKNX7uUsyuFzdJvwVNhmao1DKwf4\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/users\"}', '2018-08-19 05:13:34', '2018-08-19 05:13:34');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '[]', '2018-08-19 05:13:34', '2018-08-19 05:13:34');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:13:43', '2018-08-19 05:13:43');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:13:49', '2018-08-19 05:13:49');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/auth/roles/1', 'PUT', '192.168.33.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"kX1AnEkWl4udpKNX7uUsyuFzdJvwVNhmao1DKwf4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 05:14:13', '2018-08-19 05:14:13');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 05:14:13', '2018-08-19 05:14:13');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:14:29', '2018-08-19 05:14:29');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:14:36', '2018-08-19 05:14:36');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:14:40', '2018-08-19 05:14:40');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/auth/roles/1', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:14:45', '2018-08-19 05:14:45');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 05:14:45', '2018-08-19 05:14:45');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:14:54', '2018-08-19 05:14:54');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:15:02', '2018-08-19 05:15:02');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:15:15', '2018-08-19 05:15:15');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:15:28', '2018-08-19 05:15:28');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/auth/permissions/5/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:15:36', '2018-08-19 05:15:36');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:29:14', '2018-08-19 05:29:14');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:29:16', '2018-08-19 05:29:16');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:30:05', '2018-08-19 05:30:05');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:30:07', '2018-08-19 05:30:07');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/auth/permissions/4/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:30:13', '2018-08-19 05:30:13');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:30:35', '2018-08-19 05:30:35');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:30:47', '2018-08-19 05:30:47');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/auth/permissions', 'POST', '192.168.33.1', '{\"slug\":\"Article\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/admin\\/article\\/index\",\"_token\":\"kX1AnEkWl4udpKNX7uUsyuFzdJvwVNhmao1DKwf4\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/permissions\"}', '2018-08-19 05:31:42', '2018-08-19 05:31:42');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2018-08-19 05:31:42', '2018-08-19 05:31:42');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/auth/permissions/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:31:56', '2018-08-19 05:31:56');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/auth/permissions/6', 'PUT', '192.168.33.1', '{\"slug\":\"article.index\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/admin\\/article\\/index\",\"_token\":\"kX1AnEkWl4udpKNX7uUsyuFzdJvwVNhmao1DKwf4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/permissions\"}', '2018-08-19 05:32:09', '2018-08-19 05:32:09');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2018-08-19 05:32:09', '2018-08-19 05:32:09');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:32:24', '2018-08-19 05:32:24');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:32:28', '2018-08-19 05:32:28');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '[]', '2018-08-19 05:32:58', '2018-08-19 05:32:58');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:02', '2018-08-19 05:33:02');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:07', '2018-08-19 05:33:07');
INSERT INTO `admin_operation_log` VALUES ('401', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 05:33:20', '2018-08-19 05:33:20');
INSERT INTO `admin_operation_log` VALUES ('402', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:25', '2018-08-19 05:33:25');
INSERT INTO `admin_operation_log` VALUES ('403', '2', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:29', '2018-08-19 05:33:29');
INSERT INTO `admin_operation_log` VALUES ('404', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:30', '2018-08-19 05:33:30');
INSERT INTO `admin_operation_log` VALUES ('405', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:32', '2018-08-19 05:33:32');
INSERT INTO `admin_operation_log` VALUES ('406', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:33', '2018-08-19 05:33:33');
INSERT INTO `admin_operation_log` VALUES ('407', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:34', '2018-08-19 05:33:34');
INSERT INTO `admin_operation_log` VALUES ('408', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:35', '2018-08-19 05:33:35');
INSERT INTO `admin_operation_log` VALUES ('409', '2', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:36', '2018-08-19 05:33:36');
INSERT INTO `admin_operation_log` VALUES ('410', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:39', '2018-08-19 05:33:39');
INSERT INTO `admin_operation_log` VALUES ('411', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:46', '2018-08-19 05:33:46');
INSERT INTO `admin_operation_log` VALUES ('412', '2', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:33:51', '2018-08-19 05:33:51');
INSERT INTO `admin_operation_log` VALUES ('413', '2', 'admin/auth/roles/1', 'PUT', '192.168.33.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",null],\"_token\":\"PuuMfTQL7rXiAlCsAf3K6w4a3RHkvA8Pof2HKMxi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 05:34:05', '2018-08-19 05:34:05');
INSERT INTO `admin_operation_log` VALUES ('414', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 05:34:05', '2018-08-19 05:34:05');
INSERT INTO `admin_operation_log` VALUES ('415', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 05:34:08', '2018-08-19 05:34:08');
INSERT INTO `admin_operation_log` VALUES ('416', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:34:11', '2018-08-19 05:34:11');
INSERT INTO `admin_operation_log` VALUES ('417', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 05:34:12', '2018-08-19 05:34:12');
INSERT INTO `admin_operation_log` VALUES ('418', '2', 'admin/article', 'GET', '192.168.33.1', '[]', '2018-08-19 06:02:42', '2018-08-19 06:02:42');
INSERT INTO `admin_operation_log` VALUES ('419', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:02:46', '2018-08-19 06:02:46');
INSERT INTO `admin_operation_log` VALUES ('420', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:02:48', '2018-08-19 06:02:48');
INSERT INTO `admin_operation_log` VALUES ('421', '2', 'admin/article', 'GET', '192.168.33.1', '[]', '2018-08-19 06:03:13', '2018-08-19 06:03:13');
INSERT INTO `admin_operation_log` VALUES ('422', '2', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:08:13', '2018-08-19 06:08:13');
INSERT INTO `admin_operation_log` VALUES ('423', '2', 'admin/auth/permissions/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:08:31', '2018-08-19 06:08:31');
INSERT INTO `admin_operation_log` VALUES ('424', '2', 'admin/auth/permissions/6', 'PUT', '192.168.33.1', '{\"slug\":\"article.index\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/article\\/index\",\"_token\":\"PuuMfTQL7rXiAlCsAf3K6w4a3RHkvA8Pof2HKMxi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/permissions\"}', '2018-08-19 06:08:47', '2018-08-19 06:08:47');
INSERT INTO `admin_operation_log` VALUES ('425', '2', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2018-08-19 06:08:48', '2018-08-19 06:08:48');
INSERT INTO `admin_operation_log` VALUES ('426', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:08:53', '2018-08-19 06:08:53');
INSERT INTO `admin_operation_log` VALUES ('427', '2', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:02', '2018-08-19 06:09:02');
INSERT INTO `admin_operation_log` VALUES ('428', '2', 'admin/auth/permissions/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:04', '2018-08-19 06:09:04');
INSERT INTO `admin_operation_log` VALUES ('429', '2', 'admin/auth/permissions/6', 'PUT', '192.168.33.1', '{\"slug\":\"article.index\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/article\",\"_token\":\"PuuMfTQL7rXiAlCsAf3K6w4a3RHkvA8Pof2HKMxi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/permissions\"}', '2018-08-19 06:09:14', '2018-08-19 06:09:14');
INSERT INTO `admin_operation_log` VALUES ('430', '2', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2018-08-19 06:09:15', '2018-08-19 06:09:15');
INSERT INTO `admin_operation_log` VALUES ('431', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:24', '2018-08-19 06:09:24');
INSERT INTO `admin_operation_log` VALUES ('432', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:25', '2018-08-19 06:09:25');
INSERT INTO `admin_operation_log` VALUES ('433', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:27', '2018-08-19 06:09:27');
INSERT INTO `admin_operation_log` VALUES ('434', '2', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:28', '2018-08-19 06:09:28');
INSERT INTO `admin_operation_log` VALUES ('435', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:32', '2018-08-19 06:09:32');
INSERT INTO `admin_operation_log` VALUES ('436', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:40', '2018-08-19 06:09:40');
INSERT INTO `admin_operation_log` VALUES ('437', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:46', '2018-08-19 06:09:46');
INSERT INTO `admin_operation_log` VALUES ('438', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:48', '2018-08-19 06:09:48');
INSERT INTO `admin_operation_log` VALUES ('439', '2', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:09:53', '2018-08-19 06:09:53');
INSERT INTO `admin_operation_log` VALUES ('440', '2', 'admin/auth/roles/1', 'PUT', '192.168.33.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"PuuMfTQL7rXiAlCsAf3K6w4a3RHkvA8Pof2HKMxi\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 06:10:04', '2018-08-19 06:10:04');
INSERT INTO `admin_operation_log` VALUES ('441', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:10:05', '2018-08-19 06:10:05');
INSERT INTO `admin_operation_log` VALUES ('442', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:11', '2018-08-19 06:10:11');
INSERT INTO `admin_operation_log` VALUES ('443', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:13', '2018-08-19 06:10:13');
INSERT INTO `admin_operation_log` VALUES ('444', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:16', '2018-08-19 06:10:16');
INSERT INTO `admin_operation_log` VALUES ('445', '2', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:21', '2018-08-19 06:10:21');
INSERT INTO `admin_operation_log` VALUES ('446', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:10:35', '2018-08-19 06:10:35');
INSERT INTO `admin_operation_log` VALUES ('447', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:40', '2018-08-19 06:10:40');
INSERT INTO `admin_operation_log` VALUES ('448', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:42', '2018-08-19 06:10:42');
INSERT INTO `admin_operation_log` VALUES ('449', '2', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:45', '2018-08-19 06:10:45');
INSERT INTO `admin_operation_log` VALUES ('450', '2', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:46', '2018-08-19 06:10:46');
INSERT INTO `admin_operation_log` VALUES ('451', '2', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:10:47', '2018-08-19 06:10:47');
INSERT INTO `admin_operation_log` VALUES ('452', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:15:15', '2018-08-19 06:15:15');
INSERT INTO `admin_operation_log` VALUES ('453', '2', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:15:19', '2018-08-19 06:15:19');
INSERT INTO `admin_operation_log` VALUES ('454', '2', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:18:04', '2018-08-19 06:18:04');
INSERT INTO `admin_operation_log` VALUES ('455', '2', 'admin/auth/permissions/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:18:30', '2018-08-19 06:18:30');
INSERT INTO `admin_operation_log` VALUES ('456', '2', 'admin/auth/permissions/6', 'PUT', '192.168.33.1', '{\"slug\":\"article-index\",\"name\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/article\",\"_token\":\"Rx4X353S96LncdNBnWsytcd3zfNgE9Jnt4K0Lekd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/permissions\"}', '2018-08-19 06:18:46', '2018-08-19 06:18:46');
INSERT INTO `admin_operation_log` VALUES ('457', '2', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2018-08-19 06:18:46', '2018-08-19 06:18:46');
INSERT INTO `admin_operation_log` VALUES ('458', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:18:59', '2018-08-19 06:18:59');
INSERT INTO `admin_operation_log` VALUES ('459', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:19:07', '2018-08-19 06:19:07');
INSERT INTO `admin_operation_log` VALUES ('460', '2', 'admin/auth/roles/1', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:19:09', '2018-08-19 06:19:09');
INSERT INTO `admin_operation_log` VALUES ('461', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:19:10', '2018-08-19 06:19:10');
INSERT INTO `admin_operation_log` VALUES ('462', '2', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:19:19', '2018-08-19 06:19:19');
INSERT INTO `admin_operation_log` VALUES ('463', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:19:22', '2018-08-19 06:19:22');
INSERT INTO `admin_operation_log` VALUES ('464', '2', 'admin/auth/roles/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:19:24', '2018-08-19 06:19:24');
INSERT INTO `admin_operation_log` VALUES ('465', '2', 'admin/auth/roles', 'POST', '192.168.33.1', '{\"slug\":\"article-admin\",\"name\":\"\\u540e\\u53f0\\u6587\\u7ae0\\u7ba1\\u7406\\u5458\",\"permissions\":[\"6\",null],\"_token\":\"Rx4X353S96LncdNBnWsytcd3zfNgE9Jnt4K0Lekd\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 06:20:01', '2018-08-19 06:20:01');
INSERT INTO `admin_operation_log` VALUES ('466', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:20:01', '2018-08-19 06:20:01');
INSERT INTO `admin_operation_log` VALUES ('467', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:20:05', '2018-08-19 06:20:05');
INSERT INTO `admin_operation_log` VALUES ('468', '2', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:20:08', '2018-08-19 06:20:08');
INSERT INTO `admin_operation_log` VALUES ('469', '2', 'admin/auth/users/2', 'PUT', '192.168.33.1', '{\"username\":\"liuhuanguang\",\"name\":\"\\u540e\\u53f0\\u7ba1\\u7406\\u5458\",\"password\":\"$2y$10$UENbbOQtopFHpLRDnoBYr.4dFHbbswf9NIUYdilcEB.2ZWfWa39.e\",\"password_confirmation\":\"$2y$10$UENbbOQtopFHpLRDnoBYr.4dFHbbswf9NIUYdilcEB.2ZWfWa39.e\",\"roles\":[\"2\",null],\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",null],\"_token\":\"Rx4X353S96LncdNBnWsytcd3zfNgE9Jnt4K0Lekd\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/users\"}', '2018-08-19 06:20:18', '2018-08-19 06:20:18');
INSERT INTO `admin_operation_log` VALUES ('470', '2', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2018-08-19 06:20:19', '2018-08-19 06:20:19');
INSERT INTO `admin_operation_log` VALUES ('471', '2', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:20:32', '2018-08-19 06:20:32');
INSERT INTO `admin_operation_log` VALUES ('472', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:20:38', '2018-08-19 06:20:38');
INSERT INTO `admin_operation_log` VALUES ('473', '2', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:20:45', '2018-08-19 06:20:45');
INSERT INTO `admin_operation_log` VALUES ('474', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:20:58', '2018-08-19 06:20:58');
INSERT INTO `admin_operation_log` VALUES ('475', '2', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:21:21', '2018-08-19 06:21:21');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:21:29', '2018-08-19 06:21:29');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:22:03', '2018-08-19 06:22:03');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:22:06', '2018-08-19 06:22:06');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:22:50', '2018-08-19 06:22:50');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/auth/roles/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:22:54', '2018-08-19 06:22:54');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/auth/roles/2', 'PUT', '192.168.33.1', '{\"slug\":\"article-admin\",\"name\":\"\\u540e\\u53f0\\u6587\\u7ae0\\u7ba1\\u7406\\u5458\",\"permissions\":[\"5\",\"6\",null],\"_token\":\"sxQwxrRvfqpLhi5EpzmGuQC9XytZ2dtNVQ802r2s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 06:23:11', '2018-08-19 06:23:11');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:23:12', '2018-08-19 06:23:12');
INSERT INTO `admin_operation_log` VALUES ('483', '2', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:23:59', '2018-08-19 06:23:59');
INSERT INTO `admin_operation_log` VALUES ('484', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:24:03', '2018-08-19 06:24:03');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/auth/roles/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:24:15', '2018-08-19 06:24:15');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/auth/roles/2', 'PUT', '192.168.33.1', '{\"slug\":\"article-admin\",\"name\":\"\\u540e\\u53f0\\u6587\\u7ae0\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",null],\"_token\":\"sxQwxrRvfqpLhi5EpzmGuQC9XytZ2dtNVQ802r2s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 06:24:27', '2018-08-19 06:24:27');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:24:27', '2018-08-19 06:24:27');
INSERT INTO `admin_operation_log` VALUES ('488', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:24:37', '2018-08-19 06:24:37');
INSERT INTO `admin_operation_log` VALUES ('489', '2', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:24:46', '2018-08-19 06:24:46');
INSERT INTO `admin_operation_log` VALUES ('490', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:24:59', '2018-08-19 06:24:59');
INSERT INTO `admin_operation_log` VALUES ('491', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:25:06', '2018-08-19 06:25:06');
INSERT INTO `admin_operation_log` VALUES ('492', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:25:10', '2018-08-19 06:25:10');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:25:29', '2018-08-19 06:25:29');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:25:37', '2018-08-19 06:25:37');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:25:45', '2018-08-19 06:25:45');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/auth/roles/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:25:52', '2018-08-19 06:25:52');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/auth/roles/2', 'PUT', '192.168.33.1', '{\"slug\":\"article-admin\",\"name\":\"\\u540e\\u53f0\\u6587\\u7ae0\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",null],\"_token\":\"sxQwxrRvfqpLhi5EpzmGuQC9XytZ2dtNVQ802r2s\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 06:26:10', '2018-08-19 06:26:10');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/auth/roles/2/edit', 'GET', '192.168.33.1', '[]', '2018-08-19 06:26:11', '2018-08-19 06:26:11');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/auth/roles/2', 'PUT', '192.168.33.1', '{\"slug\":\"article-admin\",\"name\":\"\\u540e\\u53f0\\u6587\\u7ae0\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",null],\"_token\":\"sxQwxrRvfqpLhi5EpzmGuQC9XytZ2dtNVQ802r2s\",\"after-save\":\"2\",\"_method\":\"PUT\"}', '2018-08-19 06:26:21', '2018-08-19 06:26:21');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/auth/roles/2', 'GET', '192.168.33.1', '[]', '2018-08-19 06:26:23', '2018-08-19 06:26:23');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/auth/roles/2/edit', 'GET', '192.168.33.1', '[]', '2018-08-19 06:26:25', '2018-08-19 06:26:25');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:27:12', '2018-08-19 06:27:12');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:29:54', '2018-08-19 06:29:54');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:29:58', '2018-08-19 06:29:58');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:30:01', '2018-08-19 06:30:01');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:33:33', '2018-08-19 06:33:33');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/auth/permissions', 'POST', '192.168.33.1', '{\"slug\":\"users\",\"name\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users\",\"_token\":\"sxQwxrRvfqpLhi5EpzmGuQC9XytZ2dtNVQ802r2s\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/permissions\"}', '2018-08-19 06:36:12', '2018-08-19 06:36:12');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2018-08-19 06:36:13', '2018-08-19 06:36:13');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:36:18', '2018-08-19 06:36:18');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:36:20', '2018-08-19 06:36:20');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:36:21', '2018-08-19 06:36:21');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/auth/roles/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:36:33', '2018-08-19 06:36:33');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/auth/roles/2', 'PUT', '192.168.33.1', '{\"slug\":\"article-admin\",\"name\":\"\\u540e\\u53f0\\u6587\\u7ae0\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",null],\"_token\":\"sxQwxrRvfqpLhi5EpzmGuQC9XytZ2dtNVQ802r2s\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/roles\"}', '2018-08-19 06:36:49', '2018-08-19 06:36:49');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2018-08-19 06:36:50', '2018-08-19 06:36:50');
INSERT INTO `admin_operation_log` VALUES ('515', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:37:00', '2018-08-19 06:37:00');
INSERT INTO `admin_operation_log` VALUES ('516', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:37:02', '2018-08-19 06:37:02');
INSERT INTO `admin_operation_log` VALUES ('517', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:37:03', '2018-08-19 06:37:03');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:37:13', '2018-08-19 06:37:13');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:37:15', '2018-08-19 06:37:15');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:37:42', '2018-08-19 06:37:42');
INSERT INTO `admin_operation_log` VALUES ('521', '2', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:37:49', '2018-08-19 06:37:49');
INSERT INTO `admin_operation_log` VALUES ('522', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:38:08', '2018-08-19 06:38:08');
INSERT INTO `admin_operation_log` VALUES ('523', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:38:10', '2018-08-19 06:38:10');
INSERT INTO `admin_operation_log` VALUES ('524', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:38:13', '2018-08-19 06:38:13');
INSERT INTO `admin_operation_log` VALUES ('525', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:38:15', '2018-08-19 06:38:15');
INSERT INTO `admin_operation_log` VALUES ('526', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:38:15', '2018-08-19 06:38:15');
INSERT INTO `admin_operation_log` VALUES ('527', '2', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 06:38:32', '2018-08-19 06:38:32');
INSERT INTO `admin_operation_log` VALUES ('528', '2', 'admin/auth/menu', 'POST', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"vXUKuOHLgva6mgHIPDRqiVPFIp4XnWhH9LV0kupp\"}', '2018-08-19 06:40:07', '2018-08-19 06:40:07');
INSERT INTO `admin_operation_log` VALUES ('529', '2', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 06:40:07', '2018-08-19 06:40:07');
INSERT INTO `admin_operation_log` VALUES ('530', '2', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:40:12', '2018-08-19 06:40:12');
INSERT INTO `admin_operation_log` VALUES ('531', '2', 'admin/auth/users/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:40:19', '2018-08-19 06:40:19');
INSERT INTO `admin_operation_log` VALUES ('532', '2', 'admin/auth/users/2', 'PUT', '192.168.33.1', '{\"username\":\"liuhuanguang\",\"name\":\"\\u540e\\u53f0\\u7ba1\\u7406\\u5458\",\"password\":\"$2y$10$UENbbOQtopFHpLRDnoBYr.4dFHbbswf9NIUYdilcEB.2ZWfWa39.e\",\"password_confirmation\":\"$2y$10$UENbbOQtopFHpLRDnoBYr.4dFHbbswf9NIUYdilcEB.2ZWfWa39.e\",\"roles\":[\"2\",null],\"permissions\":[\"1\",\"2\",\"3\",\"7\",null],\"_token\":\"vXUKuOHLgva6mgHIPDRqiVPFIp4XnWhH9LV0kupp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.liuadmin.com\\/admin\\/auth\\/users\"}', '2018-08-19 06:40:29', '2018-08-19 06:40:29');
INSERT INTO `admin_operation_log` VALUES ('533', '2', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2018-08-19 06:40:30', '2018-08-19 06:40:30');
INSERT INTO `admin_operation_log` VALUES ('534', '2', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2018-08-19 06:40:36', '2018-08-19 06:40:36');
INSERT INTO `admin_operation_log` VALUES ('535', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:40:38', '2018-08-19 06:40:38');
INSERT INTO `admin_operation_log` VALUES ('536', '2', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:40:57', '2018-08-19 06:40:57');
INSERT INTO `admin_operation_log` VALUES ('537', '2', 'admin', 'GET', '192.168.33.1', '[]', '2018-08-19 06:41:08', '2018-08-19 06:41:08');
INSERT INTO `admin_operation_log` VALUES ('538', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:41:10', '2018-08-19 06:41:10');
INSERT INTO `admin_operation_log` VALUES ('539', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:41:12', '2018-08-19 06:41:12');
INSERT INTO `admin_operation_log` VALUES ('540', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:41:13', '2018-08-19 06:41:13');
INSERT INTO `admin_operation_log` VALUES ('541', '2', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 06:41:14', '2018-08-19 06:41:14');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/article', 'GET', '192.168.33.1', '[]', '2018-08-19 08:43:53', '2018-08-19 08:43:53');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/article/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 08:43:57', '2018-08-19 08:43:57');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/AjaxCategory', 'GET', '192.168.33.1', '[]', '2018-08-19 08:43:58', '2018-08-19 08:43:58');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 08:44:29', '2018-08-19 08:44:29');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/category', 'GET', '192.168.33.1', '[]', '2018-08-19 10:15:37', '2018-08-19 10:15:37');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:15:42', '2018-08-19 10:15:42');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:15:44', '2018-08-19 10:15:44');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/article', 'GET', '192.168.33.1', '[]', '2018-08-19 10:17:25', '2018-08-19 10:17:25');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:24:58', '2018-08-19 10:24:58');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:25:01', '2018-08-19 10:25:01');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:27:13', '2018-08-19 10:27:13');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:28:49', '2018-08-19 10:28:49');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:28:57', '2018-08-19 10:28:57');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:29:00', '2018-08-19 10:29:00');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:29:03', '2018-08-19 10:29:03');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:29:20', '2018-08-19 10:29:20');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/auth/menu', 'POST', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-area-chart\",\"uri\":\"goods\",\"roles\":[\"1\",\"2\",null],\"_token\":\"Ybck6OPA7rlLraniD8sTbm6YzXtxNRmTaPs3vA8K\"}', '2018-08-19 10:29:56', '2018-08-19 10:29:56');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 10:29:56', '2018-08-19 10:29:56');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/auth/menu', 'POST', '192.168.33.1', '{\"parent_id\":\"12\",\"title\":\"\\u5546\\u54c1\\u5217\\u8868\",\"icon\":\"fa-align-justify\",\"uri\":\"goods\",\"roles\":[\"1\",\"2\",null],\"_token\":\"Ybck6OPA7rlLraniD8sTbm6YzXtxNRmTaPs3vA8K\"}', '2018-08-19 10:30:24', '2018-08-19 10:30:24');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 10:30:24', '2018-08-19 10:30:24');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 10:30:28', '2018-08-19 10:30:28');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 10:31:28', '2018-08-19 10:31:28');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:31:33', '2018-08-19 10:31:33');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:31:42', '2018-08-19 10:31:42');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:31:44', '2018-08-19 10:31:44');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/goods', 'GET', '192.168.33.1', '[]', '2018-08-19 10:33:19', '2018-08-19 10:33:19');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/goods', 'GET', '192.168.33.1', '[]', '2018-08-19 10:35:55', '2018-08-19 10:35:55');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/goods', 'GET', '192.168.33.1', '[]', '2018-08-19 10:36:30', '2018-08-19 10:36:30');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/goods', 'GET', '192.168.33.1', '[]', '2018-08-19 10:36:58', '2018-08-19 10:36:58');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_sort\":{\"column\":\"is_show\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:37:01', '2018-08-19 10:37:01');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_sort\":{\"column\":\"is_show\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:37:02', '2018-08-19 10:37:02');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_sort\":{\"column\":\"is_show\",\"type\":\"asc\"}}', '2018-08-19 10:37:55', '2018-08-19 10:37:55');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_sort\":{\"column\":\"is_show\",\"type\":\"asc\"}}', '2018-08-19 10:37:58', '2018-08-19 10:37:58');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_sort\":{\"column\":\"is_show\",\"type\":\"asc\"}}', '2018-08-19 10:39:18', '2018-08-19 10:39:18');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_sort\":{\"column\":\"is_show\",\"type\":\"asc\"}}', '2018-08-19 10:40:37', '2018-08-19 10:40:37');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:40:56', '2018-08-19 10:40:56');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:41:00', '2018-08-19 10:41:00');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:41:10', '2018-08-19 10:41:10');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"goods_name\":null,\"goods_sn\":null}', '2018-08-19 10:41:15', '2018-08-19 10:41:15');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"goods_name\":null,\"goods_sn\":null}', '2018-08-19 10:41:55', '2018-08-19 10:41:55');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:51:38', '2018-08-19 10:51:38');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:51:45', '2018-08-19 10:51:45');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:51:49', '2018-08-19 10:51:49');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/goods/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 10:51:59', '2018-08-19 10:51:59');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/AjaxCategory', 'GET', '192.168.33.1', '[]', '2018-08-19 10:52:00', '2018-08-19 10:52:00');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 11:00:44', '2018-08-19 11:00:44');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/auth/menu', 'POST', '192.168.33.1', '{\"parent_id\":\"12\",\"title\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"fa-align-left\",\"uri\":\"GoodsCategory\",\"roles\":[\"1\",\"2\",null],\"_token\":\"Ybck6OPA7rlLraniD8sTbm6YzXtxNRmTaPs3vA8K\"}', '2018-08-19 11:02:06', '2018-08-19 11:02:06');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 11:02:07', '2018-08-19 11:02:07');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2018-08-19 11:02:13', '2018-08-19 11:02:13');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 11:02:18', '2018-08-19 11:02:18');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '[]', '2018-08-19 11:05:26', '2018-08-19 11:05:26');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 11:05:31', '2018-08-19 11:05:31');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 11:07:14', '2018-08-19 11:07:14');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 11:07:16', '2018-08-19 11:07:16');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '[]', '2018-08-19 12:57:42', '2018-08-19 12:57:42');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/article', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 12:57:54', '2018-08-19 12:57:54');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/category', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 12:57:56', '2018-08-19 12:57:56');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 12:57:59', '2018-08-19 12:57:59');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 12:58:00', '2018-08-19 12:58:00');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 12:58:02', '2018-08-19 12:58:02');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 12:58:03', '2018-08-19 12:58:03');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 13:41:59', '2018-08-19 13:41:59');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 13:42:00', '2018-08-19 13:42:00');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 13:42:01', '2018-08-19 13:42:01');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/GoodsCategory', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 13:42:02', '2018-08-19 13:42:02');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/goods', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-19 13:42:03', '2018-08-19 13:42:03');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/goods', 'GET', '192.168.33.1', '[]', '2018-08-19 13:43:32', '2018-08-19 13:43:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '文章列表', 'article-index', 'GET', '/article', '2018-08-19 05:31:42', '2018-08-19 06:18:46');
INSERT INTO `admin_permissions` VALUES ('7', '会员管理', 'users', '', '/users', '2018-08-19 06:36:13', '2018-08-19 06:36:13');

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
INSERT INTO `admin_role_menu` VALUES ('1', '12', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '12', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '13', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '13', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '14', null, null);
INSERT INTO `admin_role_menu` VALUES ('2', '14', null, null);

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
INSERT INTO `admin_role_permissions` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '5', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '6', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '5', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '7', null, null);

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
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-08-14 06:35:22', '2018-08-14 06:35:22');
INSERT INTO `admin_roles` VALUES ('2', '后台文章管理员', 'article-admin', '2018-08-19 06:20:01', '2018-08-19 06:20:01');

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
INSERT INTO `admin_user_permissions` VALUES ('2', '1', null, null);
INSERT INTO `admin_user_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_user_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_user_permissions` VALUES ('2', '7', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$wbIghIdNex3QW.i9hIuYCOngkINQ4Ha3CK.GKVgQ5DSRWT3JqGKp2', 'Administrator', null, 'RRrMxP4eYf15eqTp842VR2Xrd03xfLpPGuqNPOlmk5QckQOjpFnkdnLkFan5', '2018-08-14 06:35:22', '2018-08-14 06:35:22');
INSERT INTO `admin_users` VALUES ('2', 'liuhuanguang', '$2y$10$UENbbOQtopFHpLRDnoBYr.4dFHbbswf9NIUYdilcEB.2ZWfWa39.e', '后台管理员', 'images/IMG_1115.JPG', 'C2R56J4cHWM5T5ZLDydbwr5DPX84V44U9l1yC6sjVg9M8zogbnRcJserfvRN', '2018-08-19 05:13:34', '2018-08-19 05:13:34');

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
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_price` decimal(10,2) unsigned NOT NULL COMMENT '加入购物车时的价格',
  `goods_details` varchar(255) NOT NULL COMMENT '商品信息',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for deliver_goods
-- ----------------------------
DROP TABLE IF EXISTS `deliver_goods`;
CREATE TABLE `deliver_goods` (
  `order_id` int(10) unsigned NOT NULL COMMENT '订单id',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发货时间',
  `express_name` char(50) NOT NULL COMMENT '快递名称',
  `express_id` int(10) unsigned NOT NULL COMMENT '快递id',
  `express_no` varchar(100) NOT NULL COMMENT '快递单号',
  `address` varchar(255) NOT NULL COMMENT '发货详细地址',
  `address_name` varchar(60) NOT NULL COMMENT '收货人姓名',
  `address_phone` varchar(30) NOT NULL COMMENT '收货人手机',
  `address_city` char(30) NOT NULL COMMENT '收货地区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='发货订单记录表';

-- ----------------------------
-- Records of deliver_goods
-- ----------------------------

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discount_name` char(30) NOT NULL COMMENT '优惠券名称',
  `discount_price` decimal(10,2) unsigned NOT NULL COMMENT '优惠价格',
  `discount_full_money` decimal(10,2) unsigned NOT NULL COMMENT '满多少金额可以使用',
  `use_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用时间',
  `start_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `status` tinyint(2) unsigned NOT NULL COMMENT '状态0，未使用；1，已经使用；2，已经过期',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户',
  `goods_category_id` int(10) unsigned NOT NULL COMMENT '可以使用的商品分类id',
  `discount_category_id` int(10) unsigned NOT NULL COMMENT '优惠券分类id',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠券表';

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for discount_category
-- ----------------------------
DROP TABLE IF EXISTS `discount_category`;
CREATE TABLE `discount_category` (
  `discount_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discount_category_name` char(50) NOT NULL COMMENT '优惠券名称',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `receive_start_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '领取开始时间',
  `receive_end_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '领取结束时间',
  `use_start_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用开始时间',
  `use_end_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '使用结束时间',
  `goods_category_id` int(10) unsigned NOT NULL COMMENT '可以使用的商品分类',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '优惠金额',
  `full_price` decimal(10,2) unsigned NOT NULL COMMENT '满多少可以使用的优惠券',
  `user_level` varchar(80) NOT NULL COMMENT '可以使用的用户级别',
  PRIMARY KEY (`discount_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='优惠券分类表';

-- ----------------------------
-- Records of discount_category
-- ----------------------------

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express` (
  `express_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `express_name` char(30) NOT NULL,
  `express_en_name` char(20) NOT NULL COMMENT '英文标识',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`express_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='快递表';

-- ----------------------------
-- Records of express
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(60) NOT NULL COMMENT '商品编号',
  `goods_name` varchar(120) NOT NULL COMMENT '商品名称',
  `goods_category_id` int(10) unsigned NOT NULL COMMENT '商品分类',
  `shop_id` int(10) unsigned NOT NULL COMMENT '商家id',
  `spu_count` int(10) unsigned NOT NULL COMMENT 'spu销量',
  `goods_comment` int(10) unsigned NOT NULL COMMENT '商品评论数',
  `goods_extend_name` varchar(120) NOT NULL COMMENT '商品扩展名称',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_show` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '是否上架1，上架；0，下架',
  `is_del` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '是否删除1，正常；0删除；',
  `sort` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `goods_images` varchar(255) NOT NULL COMMENT '商品相册',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_attr_name` varchar(50) NOT NULL COMMENT '属性名称',
  `goods_category_id` int(10) unsigned NOT NULL COMMENT '商品分类id',
  `goods_attr_pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级属性id',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性名称表';

-- ----------------------------
-- Records of goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for goods_attr_relationship
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr_relationship`;
CREATE TABLE `goods_attr_relationship` (
  `goods_attr_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_attr_id` int(10) unsigned NOT NULL COMMENT '商品属性名id',
  `goods_avalue_id` int(10) unsigned NOT NULL COMMENT '商品属性值id',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_attr_relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性关联表';

-- ----------------------------
-- Records of goods_attr_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for goods_avalue
-- ----------------------------
DROP TABLE IF EXISTS `goods_avalue`;
CREATE TABLE `goods_avalue` (
  `goods_avalue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_avalue_value` varchar(30) NOT NULL COMMENT '属性值名称',
  `goods_attr_id` int(10) unsigned NOT NULL COMMENT '属性名编号',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_avalue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性值表';

-- ----------------------------
-- Records of goods_avalue
-- ----------------------------

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `goods_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_category_name` varchar(50) NOT NULL COMMENT '商品分类名称',
  `goods_category_pid` int(10) unsigned NOT NULL COMMENT '上级分类id',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_del` tinyint(3) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`goods_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品分类表';

-- ----------------------------
-- Records of goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE `goods_comment` (
  `goods_comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品评论表';

-- ----------------------------
-- Records of goods_comment
-- ----------------------------

-- ----------------------------
-- Table structure for goods_comment_images
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment_images`;
CREATE TABLE `goods_comment_images` (
  `goods_comment_id` int(10) unsigned NOT NULL COMMENT '评论id',
  `images` varchar(255) NOT NULL COMMENT '图片路径',
  PRIMARY KEY (`goods_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论图片';

-- ----------------------------
-- Records of goods_comment_images
-- ----------------------------

-- ----------------------------
-- Table structure for goods_content
-- ----------------------------
DROP TABLE IF EXISTS `goods_content`;
CREATE TABLE `goods_content` (
  `goods_id` int(10) unsigned NOT NULL,
  `goods_content` mediumtext COMMENT '商品详情'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods_content
-- ----------------------------

-- ----------------------------
-- Table structure for goods_screen
-- ----------------------------
DROP TABLE IF EXISTS `goods_screen`;
CREATE TABLE `goods_screen` (
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_avalue` varchar(255) NOT NULL COMMENT '商品具有属性值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品和属性筛选表';

-- ----------------------------
-- Records of goods_screen
-- ----------------------------

-- ----------------------------
-- Table structure for goods_search
-- ----------------------------
DROP TABLE IF EXISTS `goods_search`;
CREATE TABLE `goods_search` (
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_name_content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品搜索表';

-- ----------------------------
-- Records of goods_search
-- ----------------------------

-- ----------------------------
-- Table structure for goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `goods_sku`;
CREATE TABLE `goods_sku` (
  `goods_sku_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_id` int(10) unsigned NOT NULL,
  `goods_sku` varchar(255) NOT NULL COMMENT 'sku属性',
  `goods_sku_price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `goods_sku_stock` int(10) unsigned NOT NULL COMMENT '库存',
  `goods_sku_volume` int(10) unsigned NOT NULL COMMENT '销量',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品库存表';

-- ----------------------------
-- Records of goods_sku
-- ----------------------------

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
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_sn` varchar(80) NOT NULL COMMENT '订单编号',
  `order_number` int(10) unsigned NOT NULL COMMENT '订单商品数量',
  `order_price` decimal(10,2) unsigned NOT NULL COMMENT '订单金额',
  `order_pay_price` decimal(10,2) unsigned NOT NULL COMMENT '订单支付金额',
  `order_collect_name` varchar(40) NOT NULL COMMENT '收货人',
  `order_collect_address` varchar(100) NOT NULL COMMENT '收货详细地址',
  `order_collect_city` char(30) NOT NULL COMMENT '收货地区',
  `express_no` char(30) NOT NULL COMMENT '快递单号',
  `express_id` int(100) unsigned NOT NULL COMMENT '快递公司id',
  `express_name` char(30) NOT NULL COMMENT '快递公司名称',
  `pay_status` tinyint(2) unsigned NOT NULL COMMENT '支付状态1，已经支付；0，未支付；2，已退款',
  `status` tinyint(2) unsigned NOT NULL COMMENT '订单状态0，待发货，1已发货；2，已签收；3，待评价；4，售后',
  `is_comment` tinyint(2) unsigned NOT NULL COMMENT '订单是否完成评价0，未完成；1，已经完成；',
  `discount_id` int(10) unsigned NOT NULL COMMENT '使用的优惠券id',
  `discount_price` decimal(10,2) unsigned NOT NULL COMMENT '优惠金额',
  `discount_name` varchar(255) NOT NULL COMMENT '优惠券名称',
  `confirmd_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '确认收货时间',
  `payd_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `deliverd_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发货时间',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order_message` varchar(255) NOT NULL COMMENT '买家留言',
  `integral` int(10) unsigned NOT NULL COMMENT '所得积分',
  `integral_proportion` char(20) NOT NULL COMMENT '获得积分比例',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `order_id` int(10) unsigned NOT NULL COMMENT '订单id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_details` varchar(255) NOT NULL COMMENT '订单商品详情'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单商品表';

-- ----------------------------
-- Records of order_goods
-- ----------------------------

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
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_name` char(50) NOT NULL COMMENT '名称',
  `key` varchar(100) NOT NULL COMMENT 'key',
  `mech` varchar(80) NOT NULL COMMENT '商户号',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pay_desc` varchar(255) NOT NULL COMMENT '介绍',
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付类型表';

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for pay_log
-- ----------------------------
DROP TABLE IF EXISTS `pay_log`;
CREATE TABLE `pay_log` (
  `order_id` int(10) unsigned NOT NULL COMMENT '订单id',
  `pay_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `order_sn` varchar(255) NOT NULL COMMENT '订单号',
  `flow_number` int(40) unsigned NOT NULL COMMENT '流水号',
  `pay_id` int(10) unsigned NOT NULL COMMENT '支付id',
  `pay_money` decimal(10,2) unsigned NOT NULL COMMENT '支付金额',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付记录表';

-- ----------------------------
-- Records of pay_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `user_level_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_level_name` char(30) NOT NULL COMMENT '名称',
  `min_integral` int(10) unsigned NOT NULL COMMENT '最小积分',
  `max_integral` int(10) unsigned NOT NULL COMMENT '最大积分',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员级别表';

-- ----------------------------
-- Records of user_level
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
