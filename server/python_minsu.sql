/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_minsu

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 10/07/2024 21:00:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1720615823372.jpeg', 'https://gitapp.cn/', '2024-07-10 20:50:26.401530');
INSERT INTO `b_ad` VALUES (2, 'ad/1720615831626.jpeg', 'https://m3u8player.org', '2024-07-10 20:50:34.331189');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '商务', '2024-07-09 21:35:04.263148');
INSERT INTO `b_classification` VALUES (2, '情侣', '2024-07-09 21:35:08.918582');
INSERT INTO `b_classification` VALUES (3, '家庭', '2024-07-09 21:35:19.770008');
INSERT INTO `b_classification` VALUES (4, '海景', '2024-07-09 21:35:53.650147');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '111111111111111', '2024-07-10 20:48:44.702429', 0, 3, 2);
INSERT INTO `b_comment` VALUES (2, '2222222222222', '2024-07-10 20:48:46.523122', 0, 3, 2);
INSERT INTO `b_comment` VALUES (3, '哈哈哈哈哈', '2024-07-10 20:59:21.490099', 2, 11, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '111111111111', '刘文静', '2221@gmail.com', '11151534', '2024-07-10 20:51:16.689184');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 21:34:54.247488');
INSERT INTO `b_login_log` VALUES (2, 'test003', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 21:55:26.848172');
INSERT INTO `b_login_log` VALUES (3, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 20:49:32.896963');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '1111111111', '2024-07-10 20:50:40.836833');
INSERT INTO `b_notice` VALUES (2, '测试通知2', '哈哈哈哈哈哈', '2024-07-10 20:50:47.590622');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 847 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-09 21:34:47.353880', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-09 21:34:47.414189', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-09 21:34:47.419796', '/myapp/index/user/info', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-09 21:34:50.025827', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-09 21:34:50.043043', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-09 21:34:51.602175', '/myapp/admin/thing/list', 'GET', NULL, '1584');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-09 21:34:54.247488', '/myapp/admin/adminLogin', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-09 21:34:54.376445', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-09 21:34:54.396041', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-09 21:34:56.158722', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-09 21:35:04.280571', '/myapp/admin/classification/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-09 21:35:04.302317', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-09 21:35:08.920746', '/myapp/admin/classification/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-09 21:35:08.958048', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-09 21:35:19.776920', '/myapp/admin/classification/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-09 21:35:19.796181', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-09 21:35:53.664457', '/myapp/admin/classification/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-09 21:35:53.700813', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-09 21:35:57.008230', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-09 21:35:57.020240', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-09 21:39:50.290303', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-09 21:39:50.291080', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-09 21:39:51.192906', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-09 21:39:51.710658', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-09 21:39:51.710658', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-09 21:41:18.686025', '/myapp/admin/thing/create', 'POST', NULL, '401');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-09 21:41:18.735544', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-09 21:41:21.454708', '/upload/cover/1720532449025.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-09 21:42:30.834143', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-09 21:42:30.881393', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-09 21:43:39.556507', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-09 21:43:39.603979', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-09 21:46:10.966661', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-09 21:46:11.013167', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-09 21:46:14.077946', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-09 21:46:14.094868', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-09 21:46:14.174019', '/upload/cover/1720532768672.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-09 21:46:14.174019', '/upload/cover/1720532768672.jpeg', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-09 21:46:14.610447', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-09 21:46:14.625324', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-09 21:46:14.642528', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-09 21:46:14.705963', '/myapp/index/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-09 21:46:49.248419', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-09 21:47:02.106009', '/upload/cover/1720532768672.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-09 21:47:25.750730', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-09 21:47:25.916497', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-09 21:47:32.266276', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-09 21:47:32.459302', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-09 21:47:37.425566', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-09 21:47:37.600486', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-09 21:47:46.467188', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-09 21:47:46.651672', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-09 21:47:54.255993', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-09 21:47:54.453866', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-09 21:47:59.741195', '/myapp/admin/thing/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-09 21:47:59.907966', '/myapp/admin/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-09 21:48:04.776657', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-09 21:48:04.947008', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-09 21:48:09.867180', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-09 21:48:10.012297', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-09 21:48:34.444644', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-09 21:48:34.612958', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-09 21:48:40.478680', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-09 21:48:40.630967', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-09 21:48:44.781279', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-09 21:48:44.945741', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-09 21:48:51.743282', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-09 21:48:51.897124', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-09 21:48:55.946942', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-09 21:48:56.094301', '/myapp/admin/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-09 21:49:02.160709', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-09 21:49:02.370172', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-09 21:49:06.685462', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-09 21:49:06.842903', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-09 21:49:09.752669', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-09 21:49:09.900296', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-09 21:49:13.035421', '/myapp/admin/thing/update', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-09 21:49:13.220171', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-09 21:49:15.951023', '/myapp/admin/thing/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-09 21:49:16.137375', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-09 21:49:32.757212', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-09 21:49:32.931260', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-09 21:49:39.803609', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-09 21:49:39.955840', '/myapp/admin/thing/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-09 21:49:43.929535', '/myapp/admin/thing/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-09 21:49:47.501904', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-09 21:49:47.570857', '/myapp/index/thing/getRecommend', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-09 21:49:47.636057', '/myapp/index/thing/getRecommend', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-09 21:49:48.289672', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-09 21:49:48.319581', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-09 21:49:48.354721', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-09 21:49:48.433720', '/myapp/index/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-09 21:49:57.220777', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-09 21:49:57.368533', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-09 21:50:02.619150', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-09 21:50:02.805468', '/myapp/admin/thing/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-09 21:50:08.222118', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-09 21:50:08.419640', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-09 21:50:14.412902', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-09 21:50:14.592234', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-09 21:50:21.523170', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-09 21:50:21.671229', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-09 21:50:27.669871', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-09 21:50:27.811979', '/myapp/admin/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-09 21:50:33.636209', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-09 21:50:33.817160', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-09 21:50:40.465949', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-09 21:50:40.619107', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-09 21:50:45.526353', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-09 21:50:45.674011', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-09 21:50:53.708820', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-09 21:50:53.895560', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-09 21:50:59.396306', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-09 21:50:59.557703', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-09 21:51:02.688394', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-09 21:51:02.759319', '/myapp/index/user/info', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-09 21:51:02.826216', '/upload/cover/1720533013056.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-09 21:51:02.838541', '/upload/cover/1720533013056.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-09 21:51:02.859290', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-09 21:51:02.862295', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-09 21:51:02.862295', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-09 21:51:02.862295', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-09 21:51:02.862295', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-09 21:51:02.862295', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-09 21:51:02.895482', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-09 21:51:02.896497', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-09 21:51:02.902143', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-09 21:51:02.902143', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-09 21:51:03.126706', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-09 21:51:03.136718', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-09 21:51:03.177702', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-09 21:51:03.226684', '/myapp/index/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-09 21:51:06.721388', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-09 21:51:07.232900', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-09 21:51:09.850992', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-09 21:51:12.633339', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-09 21:51:12.816871', '/myapp/admin/thing/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-09 21:51:15.565590', '/upload/cover/1720533006454.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-09 21:51:17.904528', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-09 21:51:18.063532', '/myapp/admin/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-09 21:51:19.129552', '/upload/cover/1720533013056.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-09 21:51:21.824235', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-09 21:51:22.007586', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-09 21:51:22.935003', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-09 21:51:25.668984', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-09 21:51:25.814180', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-09 21:51:26.631521', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-09 21:51:29.039934', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-09 21:51:29.197622', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-09 21:51:30.980796', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-09 21:51:31.046313', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-09 21:51:31.048393', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-09 21:51:31.049080', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-09 21:51:31.049080', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-09 21:51:31.050881', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-09 21:51:31.050881', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-09 21:51:31.097032', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-09 21:51:31.097032', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-09 21:51:31.113027', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-09 21:51:31.113027', '/upload/cover/1720533039100.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-09 21:51:31.113027', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-09 21:51:31.113027', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-09 21:51:31.480400', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-09 21:51:32.013697', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-09 21:51:32.798208', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-09 21:51:33.465448', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-09 21:51:34.761948', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-09 21:51:35.331472', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-09 21:51:36.345511', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-09 21:52:04.800833', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-09 21:52:04.804490', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-09 21:52:04.825675', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-09 21:52:04.855279', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-09 21:52:27.281494', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-09 21:52:27.877116', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-09 21:52:28.714000', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-09 21:52:29.252744', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-09 21:52:29.780794', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-09 21:52:30.565466', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-09 21:52:31.177298', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-09 21:52:33.817895', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-09 21:52:34.390685', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-09 21:52:38.121639', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-09 21:52:38.189356', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-09 21:52:38.197733', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-09 21:52:38.204851', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-09 21:52:38.222834', '/myapp/index/comment/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-09 21:52:38.528586', '/myapp/index/comment/list', 'GET', NULL, '424');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-09 21:52:39.338836', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-09 21:52:39.356154', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-09 21:52:39.438297', '/myapp/index/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-09 21:52:39.496315', '/myapp/index/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-09 21:52:40.192252', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-09 21:52:40.209139', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-09 21:52:40.225751', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-09 21:52:40.289905', '/myapp/index/comment/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-09 21:52:40.313170', '/myapp/index/comment/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-09 21:52:40.376043', '/myapp/index/comment/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-09 21:52:40.909404', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-09 21:52:40.922574', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-09 21:52:41.005251', '/myapp/index/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-09 21:52:41.054468', '/myapp/index/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-09 21:54:14.351424', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-09 21:54:14.369502', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-09 21:54:14.414418', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-09 21:54:14.470696', '/myapp/index/thing/detail', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-09 21:54:14.470696', '/myapp/index/thing/detail', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-09 21:54:14.535077', '/myapp/index/thing/detail', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-09 21:54:27.149355', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-09 21:54:27.159521', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-09 21:54:27.195980', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-09 21:54:28.812476', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-09 21:54:28.823578', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-09 21:54:28.844952', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-09 21:54:28.895023', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-09 21:54:28.911817', '/myapp/index/thing/detail', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-09 21:54:54.899424', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-09 21:54:54.928576', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-09 21:54:57.517778', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-09 21:54:57.523785', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-09 21:54:57.551378', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-09 21:54:59.555131', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-09 21:54:59.570500', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-09 21:54:59.602290', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-09 21:54:59.604269', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-09 21:54:59.606420', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-09 21:55:05.304944', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-09 21:55:05.304944', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-09 21:55:05.324691', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-09 21:55:05.372505', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-09 21:55:05.414055', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-09 21:55:05.416396', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-09 21:55:05.440622', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-09 21:55:05.455658', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-09 21:55:16.524852', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-09 21:55:16.536929', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-09 21:55:16.567743', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-09 21:55:16.601171', '/myapp/index/comment/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-09 21:55:25.591983', '/myapp/index/user/register', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-09 21:55:26.856462', '/myapp/index/user/login', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-09 21:55:26.894716', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-09 21:55:26.900745', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-09 21:55:26.921136', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-09 21:55:26.936401', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-09 21:55:26.986619', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-09 21:55:27.002549', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-09 21:55:27.003217', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-09 21:55:27.017967', '/upload/cover/1720533026275.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-09 21:55:27.020295', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-09 21:55:27.020295', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-09 21:55:27.035764', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-09 21:55:27.037474', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-09 21:55:28.005291', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-09 21:55:28.022525', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-09 21:55:28.022525', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-09 21:55:28.043158', '/myapp/index/user/info', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-09 21:55:28.069630', '/myapp/index/user/info', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-09 21:55:28.102042', '/myapp/index/user/info', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-09 21:55:29.025532', '/myapp/index/thing/addWishUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-09 21:55:29.069373', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-09 21:55:29.510533', '/myapp/index/thing/addCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-09 21:55:29.558892', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-09 21:55:31.330136', '/myapp/admin/ad/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-09 21:55:31.348980', '/myapp/admin/ad/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-09 21:55:31.371486', '/myapp/admin/ad/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-09 21:55:31.396933', '/myapp/admin/ad/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-09 21:55:32.524103', '/myapp/index/thing/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-09 21:55:32.599374', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-09 21:55:32.967473', '/myapp/index/thing/addCollectUser', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-09 21:55:33.015393', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-09 21:55:34.918113', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-09 21:55:34.919088', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-09 21:55:34.948149', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-09 21:55:34.970490', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-09 21:55:34.970490', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-09 21:55:34.982354', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-09 21:55:36.036714', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-09 21:55:37.047783', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-09 21:55:38.284779', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-09 21:55:38.284779', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-09 21:55:38.301334', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-09 21:55:38.311208', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-09 21:55:38.351800', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-09 21:55:38.377035', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-09 21:55:38.384062', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-09 21:55:38.400237', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-09 21:55:38.418799', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-09 21:55:39.909896', '/myapp/index/thing/removeWishUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-09 21:55:39.935156', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-09 21:55:41.203332', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-09 21:55:41.214212', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-09 21:55:41.234546', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-09 21:55:41.254363', '/myapp/index/classification/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-09 21:55:56.276371', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-09 21:55:56.292303', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-09 21:55:57.334172', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-09 21:55:57.341785', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-09 21:55:57.375197', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-09 21:55:58.475865', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-09 21:55:58.475865', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-09 21:55:58.491790', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-09 21:55:58.525519', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-09 21:56:08.030747', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-09 21:56:08.041030', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-09 21:56:08.063100', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-09 21:56:08.077119', '/myapp/index/thing/detail', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-09 21:56:08.092969', '/myapp/index/thing/detail', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-09 21:56:08.130463', '/myapp/index/thing/detail', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-09 21:56:09.139641', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-09 21:56:09.139641', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-09 21:56:09.139641', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-09 21:56:09.174815', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-09 21:56:09.222281', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-09 21:56:09.223494', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-09 21:56:09.223494', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-09 21:56:09.223494', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-09 21:56:09.240923', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-09 21:56:09.241948', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-09 21:56:09.273162', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-09 21:56:09.273162', '/upload/cover/1720533039100.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-09 21:56:09.275364', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-09 21:56:09.276523', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-09 21:56:10.607073', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-09 21:56:10.614027', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-09 21:56:10.627888', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-09 21:56:10.632347', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-09 21:56:10.673396', '/myapp/index/thing/detail', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-09 21:56:10.706153', '/myapp/index/thing/detail', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-09 21:56:11.765118', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-09 21:56:11.766128', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-09 21:56:11.771554', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-09 21:56:11.814063', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-09 21:56:13.915760', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-09 21:56:13.938327', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-09 21:56:13.953930', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-09 21:56:13.964603', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-09 21:56:13.984139', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-09 21:56:14.028761', '/myapp/index/comment/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-09 21:56:14.947921', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-09 21:56:14.948755', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-09 21:56:14.955649', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-09 21:56:14.983412', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-09 21:56:16.401576', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-09 21:56:16.401576', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-09 21:56:16.401576', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-09 21:56:16.421645', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-09 21:56:16.452725', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-09 21:56:16.501842', '/myapp/index/comment/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-09 21:56:17.245776', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-09 21:56:17.259820', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-09 21:56:17.283827', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-09 21:56:17.303430', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-09 21:56:19.113925', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-09 21:56:19.116338', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-09 21:56:19.116338', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-09 21:56:19.155857', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-09 21:56:19.184037', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-09 21:56:19.199972', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-09 21:56:19.915494', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-09 21:56:19.921589', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-09 21:56:19.942348', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-09 21:56:19.968466', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-09 21:56:20.971071', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-09 21:56:20.985355', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-09 21:56:21.002494', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-09 21:56:21.035132', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-09 21:56:21.069098', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-09 21:56:21.084006', '/myapp/index/comment/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-09 21:56:21.880779', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-09 21:56:21.887424', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-09 21:56:21.903573', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-09 21:56:21.954058', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-09 21:56:23.304874', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-09 21:56:23.307261', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-09 21:56:23.315611', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-09 21:56:23.315611', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-09 21:56:23.374203', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-09 21:56:23.401831', '/myapp/index/comment/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-09 21:56:24.434328', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-09 21:56:24.442364', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-09 21:56:24.449257', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-09 21:56:24.498987', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-09 21:56:26.676129', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-09 21:56:26.676129', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-09 21:56:26.692024', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-09 21:56:26.710995', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-09 21:56:26.744153', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-09 21:56:26.776241', '/myapp/index/comment/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-09 21:57:02.426368', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-09 21:57:02.430369', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-09 21:57:02.434370', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-09 21:57:02.445371', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-09 21:57:02.469109', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-09 21:57:02.469109', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-09 21:57:18.171771', '/myapp/index/thing/getRecommend', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-09 21:57:18.188172', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-09 21:57:18.189561', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-09 21:57:18.205647', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-09 21:57:18.239247', '/myapp/index/thing/getRecommend', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-09 21:57:18.259876', '/myapp/index/thing/getRecommend', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-09 21:57:19.586693', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-09 21:57:19.588278', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-09 21:57:19.603862', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-09 21:57:19.620644', '/myapp/index/user/info', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-09 21:57:19.636348', '/myapp/index/user/info', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-09 21:57:19.668632', '/myapp/index/user/info', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-09 21:59:05.575124', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-09 21:59:05.581822', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-09 22:05:06.279792', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-09 22:05:06.279792', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-09 22:05:06.279792', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-09 22:05:06.912150', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-09 22:05:07.000586', '/myapp/admin/classification/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-09 22:05:07.472092', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-09 22:05:07.472092', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-09 22:05:41.674221', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-09 22:05:41.684865', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-09 22:06:05.988037', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-09 22:06:05.994563', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-09 22:06:15.405441', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-09 22:06:15.421223', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-09 22:06:31.614279', '/myapp/index/order/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-09 22:06:39.456869', '/myapp/index/order/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-09 22:07:21.366039', '/myapp/index/order/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-09 22:07:21.837787', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-09 22:07:21.840645', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-09 22:07:52.617843', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-09 22:07:52.617843', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-09 22:08:41.856830', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-09 22:08:41.867928', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-09 22:08:41.901520', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-09 22:08:41.902677', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-09 22:08:41.902677', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-09 22:08:41.919642', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-09 22:08:41.927082', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-09 22:09:28.617660', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-09 22:09:55.452683', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-09 22:10:06.679415', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-09 22:11:47.212393', '/myapp/admin/order/delete', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-09 22:11:47.240969', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-09 22:11:50.551490', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-09 22:11:50.551490', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-09 22:11:50.602971', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-09 22:11:50.659944', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-09 22:11:50.677969', '/upload/cover/1720533006454.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-09 22:11:50.680953', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-09 22:11:50.682969', '/upload/cover/1720533032295.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-09 22:11:50.700011', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-09 22:11:50.706540', '/upload/cover/1720533013056.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-09 22:11:50.710535', '/upload/cover/1720533013056.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-09 22:11:50.717484', '/upload/cover/1720533039100.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-09 22:11:50.718494', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-09 22:11:50.719496', '/upload/cover/1720533052192.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-09 22:11:50.720872', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-09 22:11:51.107363', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-09 22:11:51.116010', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-09 22:11:51.117828', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-09 22:11:51.167475', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-09 22:11:52.972417', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-09 22:11:52.987106', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-09 22:11:53.007108', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-09 22:11:53.012873', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-09 22:11:53.053827', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-09 22:11:53.073079', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-09 22:11:55.091374', '/myapp/index/thing/addWishUser', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-09 22:11:55.155514', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-09 22:11:55.533475', '/myapp/index/thing/addCollectUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-09 22:11:55.583652', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-09 22:11:56.454907', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-09 22:11:56.454907', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-09 22:11:56.470892', '/myapp/index/notice/list_api', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-09 22:11:56.487564', '/myapp/index/notice/list_api', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-09 22:11:56.521063', '/myapp/index/notice/list_api', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-09 22:11:56.538437', '/myapp/index/notice/list_api', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-09 22:12:07.853139', '/myapp/index/order/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-09 22:12:07.895901', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-09 22:12:07.902161', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-09 22:12:08.979885', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-09 22:12:09.009443', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-09 22:12:09.026049', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-09 22:12:09.043947', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-09 22:12:09.048662', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-09 22:12:09.059157', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-09 22:12:12.561796', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-09 22:12:12.923555', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-09 22:13:08.408990', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-09 22:13:08.415373', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-09 22:13:08.421441', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-09 22:13:08.438578', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-09 22:13:08.478401', '/myapp/index/thing/getRecommend', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-09 22:13:08.493201', '/myapp/index/thing/getRecommend', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-09 22:13:08.511560', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-09 22:13:20.896730', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-09 22:13:20.900291', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-09 22:13:20.906885', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-09 22:13:20.945769', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-09 22:13:23.612636', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-09 22:13:23.739427', '/myapp/admin/classification/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-10 19:54:51.603332', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-10 19:54:51.605475', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-10 19:54:51.611443', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-10 19:54:51.643123', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-10 19:54:52.148513', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-10 19:54:52.195942', '/upload/cover/1720532995310.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-10 19:54:52.205873', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-10 19:54:52.209588', '/upload/cover/1720533001303.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-10 19:54:52.230732', '/upload/cover/1720533006454.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-10 19:54:52.231790', '/upload/cover/1720533006454.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-10 19:54:52.231790', '/upload/cover/1720533020237.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-10 19:54:52.251687', '/upload/cover/1720533039100.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-10 19:54:52.251687', '/upload/cover/1720533039100.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-10 19:54:52.260136', '/upload/cover/1720533039100.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-10 19:54:52.275829', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-10 19:54:52.275829', '/upload/cover/1720533044302.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-10 19:54:52.275829', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-10 19:54:52.297391', '/upload/cover/1720533057974.jpeg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-10 20:47:47.068929', '/myapp/admin/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-10 20:48:07.447396', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-10 20:48:07.562893', '/myapp/admin/classification/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-10 20:48:10.775840', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-10 20:48:11.991808', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-10 20:48:37.492931', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-10 20:48:40.041924', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-10 20:48:40.076528', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-10 20:48:40.080575', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-10 20:48:40.092908', '/myapp/index/comment/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-10 20:48:40.109134', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-10 20:48:40.147946', '/myapp/index/comment/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-10 20:48:44.728035', '/myapp/index/comment/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-10 20:48:44.786615', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-10 20:48:46.523122', '/myapp/index/comment/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-10 20:48:46.597775', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-10 20:48:47.909813', '/myapp/index/comment/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-10 20:48:49.252912', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-10 20:48:51.461521', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-10 20:48:52.205651', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-10 20:48:52.988462', '/myapp/admin/user/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-10 20:49:02.244460', '/myapp/admin/user/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-10 20:49:02.306142', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-10 20:49:12.886858', '/myapp/admin/user/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-10 20:49:17.636274', '/myapp/admin/user/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-10 20:49:17.706483', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-10 20:49:23.415939', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-10 20:49:23.415939', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-10 20:49:23.495087', '/myapp/index/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-10 20:49:30.306871', '/myapp/index/user/register', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-10 20:49:32.896963', '/myapp/index/user/login', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-10 20:49:32.998376', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-10 20:49:33.010931', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-10 20:49:33.036193', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-10 20:49:33.052219', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-10 20:49:35.905293', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-10 20:49:36.505799', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-10 20:49:37.839919', '/myapp/admin/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-10 20:49:40.505086', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-10 20:49:40.518989', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-10 20:49:40.531920', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-10 20:49:40.552339', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-10 20:49:40.611580', '/myapp/index/comment/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-10 20:49:40.627574', '/myapp/index/comment/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-10 20:49:42.588066', '/myapp/index/thing/addWishUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-10 20:49:42.656024', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-10 20:49:43.105500', '/myapp/index/thing/addCollectUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-10 20:49:43.171559', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-10 20:49:44.346210', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-10 20:49:44.376926', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-10 20:49:44.380625', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-10 20:49:44.393652', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-10 20:49:44.412901', '/myapp/index/user/info', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-10 20:49:44.440612', '/myapp/index/user/info', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-10 20:50:07.920741', '/myapp/index/order/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-10 20:50:08.011318', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-10 20:50:08.023239', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-10 20:50:09.331783', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-10 20:50:09.346853', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-10 20:50:09.364787', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-10 20:50:09.399844', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-10 20:50:09.414565', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-10 20:50:09.414565', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-10 20:50:11.399672', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-10 20:50:11.897863', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-10 20:50:14.037942', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-10 20:50:14.919300', '/myapp/admin/notice/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-10 20:50:15.202239', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-10 20:50:26.401530', '/myapp/admin/ad/create', 'POST', NULL, '571');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-10 20:50:26.461625', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-10 20:50:26.552183', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-10 20:50:34.335853', '/myapp/admin/ad/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-10 20:50:34.383256', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-10 20:50:34.436658', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-10 20:50:35.500258', '/myapp/admin/notice/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-10 20:50:40.859781', '/myapp/admin/notice/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-10 20:50:40.919758', '/myapp/admin/notice/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-10 20:50:47.601612', '/myapp/admin/notice/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-10 20:50:47.651827', '/myapp/admin/notice/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-10 20:50:51.129766', '/myapp/admin/loginLog/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-10 20:50:52.236742', '/myapp/admin/opLog/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-10 20:50:52.961701', '/myapp/admin/errorLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-10 20:50:55.630886', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-10 20:50:57.168453', '/myapp/admin/feedback/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-10 20:50:57.717236', '/myapp/admin/overview/count', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-10 20:51:00.098993', '/myapp/admin/overview/count', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-10 20:51:02.426503', '/myapp/admin/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-10 20:51:05.886678', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-10 20:51:05.896719', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-10 20:51:16.701923', '/myapp/index/feedback/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-10 20:51:19.201314', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-10 20:51:19.209961', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-10 20:51:21.149371', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1107');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-10 20:51:21.751735', '/myapp/admin/feedback/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-10 20:52:08.844041', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-10 20:52:08.964958', '/myapp/admin/classification/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-10 20:52:09.710933', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-10 20:52:10.622885', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-10 20:52:11.943364', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-10 20:52:12.061653', '/myapp/admin/classification/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-10 20:52:47.269487', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-10 20:52:47.286152', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-10 20:52:48.200735', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-10 20:52:48.290086', '/myapp/admin/classification/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-10 20:52:48.348158', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-10 20:52:48.363702', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-10 20:52:48.381037', '/myapp/index/thing/getWishThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-10 20:52:48.399507', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-10 20:52:48.399507', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-10 20:52:48.419114', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-10 20:52:51.111321', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-10 20:52:51.124182', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-10 20:52:51.127366', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-10 20:52:51.167359', '/myapp/index/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-10 20:52:52.294609', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-10 20:52:52.321070', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-10 20:52:52.326984', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-10 20:52:52.353764', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-10 20:52:52.409074', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-10 20:52:52.426166', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-10 20:52:52.426166', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-10 20:52:52.474548', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-10 20:53:47.616354', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-10 20:53:47.622377', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-10 20:53:47.648204', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-10 20:53:47.658220', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-10 20:53:47.668692', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-10 20:53:47.682204', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-10 20:53:47.716322', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-10 20:53:47.732399', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-10 20:53:51.996730', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-10 20:53:51.996730', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-10 20:53:52.015116', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-10 20:53:52.018656', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-10 20:53:52.064160', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-10 20:53:52.064160', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-10 20:53:52.097397', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-10 20:53:52.140695', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-10 20:54:08.916237', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-10 20:54:08.916237', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-10 20:54:08.998772', '/myapp/index/thing/getRecommend', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-10 20:54:09.199163', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-10 20:54:09.208186', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-10 20:54:09.213611', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-10 20:54:09.258492', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-10 20:54:37.098618', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-10 20:54:37.109404', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-10 20:54:37.129423', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-10 20:54:37.145536', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-10 20:54:39.498539', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-10 20:54:39.516663', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-10 20:54:39.529413', '/myapp/index/notice/list_api', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-10 20:54:39.565142', '/myapp/index/notice/list_api', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-10 20:54:40.970971', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-10 20:54:40.976803', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-10 20:54:41.027721', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-10 20:54:41.532831', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-10 20:54:41.542236', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-10 20:54:41.552683', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-10 20:54:41.590005', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-10 20:54:48.945512', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-10 20:54:48.952492', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-10 20:54:49.010933', '/myapp/index/thing/getRecommend', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-10 20:54:49.578764', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-10 20:54:49.587079', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-10 20:54:49.591034', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-10 20:54:49.642968', '/myapp/index/classification/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-10 20:55:19.633595', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-10 20:55:19.748973', '/myapp/admin/classification/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-10 20:55:20.015503', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-10 20:55:20.024494', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-10 20:55:20.030775', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-10 20:55:20.064910', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-10 20:55:21.779088', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-10 20:55:21.795258', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-10 20:55:21.807604', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-10 20:55:21.820908', '/myapp/index/thing/getWishThingList', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-10 20:55:21.837576', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-10 20:55:21.860183', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-10 20:55:22.984622', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-10 20:55:23.521916', '/myapp/index/comment/listMyComments', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-10 20:55:52.034853', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-10 20:55:52.045421', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-10 20:55:52.059418', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-10 20:55:52.107507', '/myapp/index/user/info', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-10 20:55:53.155995', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-10 20:55:53.167470', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-10 20:55:53.211145', '/myapp/index/thing/getRecommend', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-10 20:55:54.889078', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-10 20:55:54.894920', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-10 20:55:54.929003', '/myapp/index/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-10 20:55:54.961063', '/myapp/index/classification/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-10 20:55:56.524679', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-10 20:55:56.530686', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-10 20:55:56.541496', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-10 20:55:56.535963', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-10 20:55:56.605631', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-10 20:55:56.614232', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-10 20:55:56.632761', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-10 20:55:56.662001', '/upload/ad/1720615831626.jpeg', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-10 20:55:57.562354', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-10 20:55:57.578635', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-10 20:55:57.619883', '/myapp/index/thing/getRecommend', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-10 20:55:59.403203', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-10 20:55:59.412891', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-10 20:55:59.441331', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-10 20:55:59.475883', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-10 20:55:59.886713', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-10 20:55:59.897232', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-10 20:55:59.942415', '/myapp/index/user/info', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-10 20:56:53.936473', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-10 20:56:53.943295', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-10 20:56:53.958942', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-10 20:56:53.993316', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-10 20:57:08.123569', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-10 20:57:08.303401', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-10 20:57:08.415826', '/myapp/admin/classification/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-10 20:57:12.550028', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-10 20:57:13.483673', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-10 20:57:29.353111', '/myapp/admin/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-10 20:57:33.990482', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-10 20:57:34.944751', '/myapp/admin/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-10 20:57:46.025588', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-10 20:57:46.031962', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-10 20:57:46.078461', '/myapp/index/thing/getRecommend', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-10 20:57:46.468814', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-10 20:57:46.477307', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-10 20:57:46.482561', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-10 20:57:46.528428', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-10 20:57:47.245048', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-10 20:57:47.260362', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-10 20:57:47.309466', '/myapp/index/thing/getRecommend', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-10 20:58:23.961294', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-10 20:58:24.625370', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-10 20:58:25.653230', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-10 20:58:27.134365', '/myapp/admin/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-10 20:58:29.020571', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-10 20:58:29.067955', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-10 20:58:29.092063', '/upload/ad/1720615823372.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-10 20:58:30.262060', '/myapp/admin/notice/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-10 20:58:33.052183', '/myapp/admin/loginLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-10 20:58:33.907077', '/myapp/admin/opLog/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-10 20:58:36.029828', '/myapp/admin/overview/count', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-10 20:58:38.922361', '/myapp/admin/feedback/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-10 20:58:40.453991', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-10 20:58:42.255642', '/myapp/admin/overview/count', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-10 20:58:51.669679', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-10 20:58:51.682936', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-10 20:58:51.714278', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-10 20:58:51.731616', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-10 20:58:51.740515', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-10 20:58:51.782237', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-10 20:59:05.088298', '/myapp/index/user/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-10 20:59:06.386686', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-10 20:59:06.397206', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-10 20:59:06.418368', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-10 20:59:06.419998', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-10 20:59:06.445525', '/upload/avatar/1720616337775.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-10 20:59:06.453098', '/upload/avatar/1720616337775.png', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-10 20:59:06.469444', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-10 20:59:07.165031', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-10 20:59:07.165031', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-10 20:59:07.181583', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-10 20:59:07.230879', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-10 20:59:07.850920', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-10 20:59:07.855177', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-10 20:59:07.899149', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-10 20:59:08.275387', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-10 20:59:08.300950', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-10 20:59:08.316313', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-10 20:59:08.330732', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-10 20:59:08.333026', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-10 20:59:08.364466', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-10 20:59:09.633947', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-10 20:59:09.646661', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-10 20:59:09.651153', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-10 20:59:09.708799', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-10 20:59:15.135237', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-10 20:59:15.143623', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-10 20:59:15.178438', '/myapp/index/thing/detail', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-10 20:59:15.199030', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-10 20:59:15.230727', '/myapp/index/thing/detail', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-10 20:59:15.228041', '/myapp/index/thing/detail', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-10 20:59:21.490099', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-10 20:59:21.543894', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-10 20:59:24.364695', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-10 20:59:25.962489', '/myapp/index/comment/like', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-10 20:59:26.005982', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-10 20:59:26.511417', '/myapp/index/comment/like', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-10 20:59:26.551350', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-10 20:59:30.053289', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-10 20:59:30.053289', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-10 20:59:30.069753', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-10 20:59:30.107601', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-10 20:59:31.224934', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-10 20:59:31.230590', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-10 20:59:31.270094', '/myapp/index/user/info', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-10 20:59:32.203639', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-10 20:59:32.220217', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-10 20:59:32.220217', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-10 20:59:32.271569', '/myapp/index/user/info', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-10 20:59:33.537382', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-10 20:59:34.343069', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-10 20:59:38.685373', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-10 20:59:39.426359', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-10 20:59:40.190566', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-10 20:59:40.781142', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-10 20:59:40.903119', '/myapp/admin/classification/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-10 20:59:50.762736', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-10 20:59:50.776359', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-10 20:59:50.794656', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-10 20:59:50.807887', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-10 20:59:50.827975', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-10 20:59:50.845028', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-10 20:59:51.693411', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-10 20:59:51.726382', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-10 20:59:51.739375', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-10 20:59:52.387807', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-10 20:59:52.403840', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-10 20:59:52.427234', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-10 20:59:52.440183', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-10 20:59:52.457973', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-10 20:59:52.490603', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-10 20:59:53.455752', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-10 20:59:54.023383', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-10 20:59:54.753952', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-10 20:59:59.679483', '/myapp/index/comment/listMyComments', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-10 21:00:01.022100', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-10 21:00:03.006968', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-10 21:00:03.652266', '/myapp/index/order/list', 'GET', NULL, '31');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (2, '1720534327831', 1, '1', '2024-07-09 22:12:07.830911', '刘德华', '2024-07-11至2024-07-12', '1231111', '', 7, 2);
INSERT INTO `b_order` VALUES (3, '1720615807896', 1, '1', '2024-07-10 20:50:07.908075', '张永琪', '2024-08-09至2024-08-10', '123111', '', 4, 5);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 8, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 1, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 8, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 3, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 10, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 4, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 5, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 11, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 12, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (11, 6, 4, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 7, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (13, 4, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 11, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sheshi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '乌镇西市河畔民间客房', 'cover/1720532768672.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 2, 0, 0, 0, 1, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (2, '西河村民间客栈客房', 'cover/1720532995310.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '99', '空调、热水、wifi', '三星级', '0', '2024-07-09 21:41:18.653143', 8, 0, 0, 1, 4, NULL, '乌镇人民路22号', 3);
INSERT INTO `b_thing` VALUES (3, '西河村民间客栈客房22', 'cover/1720533001303.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 5, 0, 1, 1, 1, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (4, '西河村民间客栈客房33', 'cover/1720533006454.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 6, 0, 1, 1, 3, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (5, '柳河河畔民间客房', 'cover/1720533013056.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '五星级', '0', '2024-07-09 21:41:18.653143', 1, 0, 0, 0, 2, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (6, '柳河河畔民间客房222', 'cover/1720533020237.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 4, 0, 0, 0, 1, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (7, '柳河河畔民间客房333', 'cover/1720533026275.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '88', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 5, 0, 1, 1, 1, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (8, '柳河河畔民间客房444', 'cover/1720533032295.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '五星级', '0', '2024-07-09 21:41:18.653143', 2, 0, 0, 0, 4, NULL, '乌镇人民路12号', 3);
INSERT INTO `b_thing` VALUES (9, '柳河河畔民间客房55', 'cover/1720533039100.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 1, 0, 0, 0, 1, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (10, '华西村河边民间客房', 'cover/1720533044302.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '88', '空调、热水、wifi', '三星级', '0', '2024-07-09 21:41:18.653143', 1, 0, 0, 0, 3, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (11, '华西村河边民间客房22', 'cover/1720533052192.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 2, 0, 0, 0, 1, NULL, '乌镇人民路88号', 3);
INSERT INTO `b_thing` VALUES (12, '华西村河边民间客房33', 'cover/1720533057974.jpeg', '欢迎来到我们的民宿，一个让您遥想家乡温馨的绿洲。位于风景如画的乡村风情小镇上，我们的民宿聚集了挚爱旅行、追求生活品质的您，为您提供独特的住宿体验。\r\n\r\n走进我们的民宿，首先映入眼帘的是别具一格的建筑风格和精心设计的庭院环境。每一间客房都经过精心布置，用心打造独特的装饰风格，展现出主人对生活的热爱和用心。无论是慵懒的午后阳光，还是宁静的夜晚星空，我们的客房都为您营造出一个舒适温馨的空间。\r\n\r\n在我们的民宿里，早餐有着独特的味道和温馨的温度。每日清晨，都有新鲜烘焙的面包、热腾腾的咖啡和营养丰富的早餐等待着您。我们的厨师团队以当地食材为主打，为您烹制地道美食，让您品尝到最地道、最美味的家乡味道。\r\n\r\n除了舒适的客房和美味的早餐，我们的民宿还提供各种丰富的文化体验活动。您可以参加手工制作课程、参观当地村落、品尝特色小吃等，让您更深入地了解当地的文化和生活方式。我们的民宿不仅是一个住宿场所，更是一个文化交流的平台，让您在旅途中收获更多的人生体验和感悟。\r\n\r\n无论是想要度假放松，还是体验当地文化，我们的民宿都将是您理想的选择。让我们的热情服务和温馨环境，为您带来一段美好独特的旅行记忆。在这里，您可以放下疲惫，尽情享受旅行的乐趣，感受家的温暖和自由。期待您的光临，与我们共同分享生活的美好时光。', '125', '空调、热水、wifi', '四星级', '0', '2024-07-09 21:41:18.653143', 1, 0, 0, 0, 1, NULL, '乌镇人民路88号', 3);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 2);
INSERT INTO `b_thing_collect` VALUES (1, 3, 2);
INSERT INTO `b_thing_collect` VALUES (4, 4, 5);
INSERT INTO `b_thing_collect` VALUES (3, 7, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 3, 2);
INSERT INTO `b_thing_wish` VALUES (4, 4, 5);
INSERT INTO `b_thing_wish` VALUES (3, 7, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-09 21:55:25.582037', 0, NULL, 0, NULL, 'db270e0074bad27c1177f31627818618');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-10 20:49:02.244460', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-10 20:49:17.619793', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'hhjjh', 'avatar/1720616337775.png', NULL, NULL, NULL, '8888', '2024-07-10 20:49:30.306871', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-09 21:32:03.176407');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-09 21:32:03.561135');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-09 21:32:03.634041');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-09 21:32:03.640649');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-09 21:32:03.646653');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-09 21:32:03.717148');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-09 21:32:03.819956');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-09 21:32:03.866156');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-09 21:32:03.873265');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-09 21:32:03.936665');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-09 21:32:03.939817');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-09 21:32:03.946695');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-09 21:32:04.015830');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-09 21:32:04.057891');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-09 21:32:04.113936');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-09 21:32:04.123941');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-09 21:32:04.195143');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-09 21:32:05.226989');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-09 21:32:05.292875');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-09 21:32:05.535069');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-09 21:32:05.643005');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240709_2131', '2024-07-09 21:32:06.131276');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-09 21:32:06.191544');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_alter_order_receiver_time', '2024-07-09 22:07:14.594588');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
