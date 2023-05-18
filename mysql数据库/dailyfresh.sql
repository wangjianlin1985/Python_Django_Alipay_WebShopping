/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : dailyfresh

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2019-08-11 16:15:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 用户', '6', 'add_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 用户', '6', 'change_user');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 用户', '6', 'delete_user');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 地址', '7', 'add_address');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 地址', '7', 'change_address');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 地址', '7', 'delete_address');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 商品SPU', '8', 'add_goods');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 商品SPU', '8', 'change_goods');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 商品SPU', '8', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 商品图片', '9', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 商品图片', '9', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 商品图片', '9', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 商品', '10', 'add_goodssku');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 商品', '10', 'change_goodssku');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 商品', '10', 'delete_goodssku');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 商品种类', '11', 'add_goodstype');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 商品种类', '11', 'change_goodstype');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 商品种类', '11', 'delete_goodstype');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 首页轮播商品', '12', 'add_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 首页轮播商品', '12', 'change_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 首页轮播商品', '12', 'delete_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 主页促销活动', '13', 'add_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 主页促销活动', '13', 'change_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 主页促销活动', '13', 'delete_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 主页分类展示商品', '14', 'add_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 主页分类展示商品', '14', 'change_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 主页分类展示商品', '14', 'delete_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 订单商品', '15', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 订单商品', '15', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 订单商品', '15', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 订单', '16', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 订单', '16', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 订单', '16', 'delete_orderinfo');

-- ----------------------------
-- Table structure for `df_address`
-- ----------------------------
DROP TABLE IF EXISTS `df_address`;
CREATE TABLE `df_address` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `zip_code` varchar(6) default NULL,
  `phone` varchar(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `df_address_user_id_5e6a5c8a` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_address
-- ----------------------------
INSERT INTO `df_address` VALUES ('1', '2019-08-10 13:31:58', '2019-08-10 13:31:58', '0', '林哥哥', '四川成都红星路', '610059', '13340832423', '1', '1');

-- ----------------------------
-- Table structure for `df_goods`
-- ----------------------------
DROP TABLE IF EXISTS `df_goods`;
CREATE TABLE `df_goods` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `detail` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods
-- ----------------------------
INSERT INTO `df_goods` VALUES ('1', '2017-11-15 03:03:05', '2017-11-15 03:03:05', '0', '草莓', '<p><strong>很不错的草莓</strong></p>');
INSERT INTO `df_goods` VALUES ('2', '2017-11-15 03:05:36', '2017-11-15 03:05:36', '0', '葡萄', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('3', '2017-11-15 03:05:52', '2017-11-15 03:05:52', '0', '柠檬', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('4', '2017-11-15 03:06:01', '2017-11-15 03:06:01', '0', '奇异果', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('5', '2017-11-15 03:06:30', '2017-11-15 03:06:30', '0', '大青虾', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('6', '2017-11-15 03:06:35', '2017-11-15 03:06:35', '0', '秋刀鱼', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('7', '2017-11-15 03:06:48', '2017-11-15 03:06:48', '0', '扇贝', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('8', '2017-11-15 03:07:03', '2017-11-15 03:07:03', '0', '基围虾', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('9', '2017-11-15 03:07:36', '2017-11-15 03:07:36', '0', '猪肉', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('10', '2017-11-15 03:07:39', '2017-11-15 03:07:39', '0', '牛肉', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('11', '2017-11-15 03:07:41', '2017-11-15 03:07:41', '0', '羊肉', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('12', '2017-11-15 03:07:44', '2017-11-15 03:07:44', '0', '牛排', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('13', '2017-11-15 03:07:51', '2017-11-15 03:07:51', '0', '鸡蛋', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('14', '2017-11-15 03:07:56', '2017-11-15 03:07:56', '0', '鸡肉', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('15', '2017-11-15 03:07:59', '2017-11-15 03:07:59', '0', '鸭蛋', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('16', '2017-11-15 03:08:03', '2017-11-15 03:08:03', '0', '鸡腿', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('17', '2017-11-15 03:08:10', '2017-11-15 03:08:10', '0', '白菜', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('18', '2017-11-15 03:08:13', '2017-11-15 03:08:13', '0', '芹菜', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('19', '2017-11-15 03:08:16', '2017-11-15 03:08:16', '0', '香菜', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('20', '2017-11-15 03:08:24', '2017-11-15 03:08:24', '0', '冬瓜', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('21', '2017-11-15 03:08:36', '2017-11-15 03:08:36', '0', '鱼丸', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('22', '2017-11-15 03:08:43', '2017-11-15 03:08:43', '0', '蟹棒', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('23', '2017-11-15 03:08:50', '2017-11-15 03:08:50', '0', '虾丸', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('24', '2017-11-15 03:09:01', '2017-11-15 03:09:01', '0', '速冻水饺', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('25', '2017-11-14 08:50:50', '2017-11-14 08:50:50', '0', '芒果', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('26', '2017-11-17 07:54:26', '2017-11-17 07:54:26', '0', '鹌鹑蛋', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('27', '2017-11-17 07:54:35', '2017-11-17 07:54:35', '0', '鹅蛋', '<p><strong>非常好的商品，值得购买</strong></p>');
INSERT INTO `df_goods` VALUES ('28', '2017-11-17 07:54:46', '2017-11-17 07:54:46', '0', '红辣椒', '<p><strong>非常好的商品，值得购买</strong></p>');

-- ----------------------------
-- Table structure for `df_goods_image`
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_image`;
CREATE TABLE `df_goods_image` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `df_goods_image_sku_id_f8dc96ea` (`sku_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_image
-- ----------------------------

-- ----------------------------
-- Table structure for `df_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_sku`;
CREATE TABLE `df_goods_sku` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unite` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `df_goods_sku_goods_id_31622280` (`goods_id`),
  KEY `df_goods_sku_type_id_576de3b4` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_sku
-- ----------------------------
INSERT INTO `df_goods_sku` VALUES ('1', '2017-11-15 03:10:14', '2017-11-14 08:24:49', '0', '草莓 500g', '草莓简介', '10.00', '500g', 'static/images/goods/goods003.jpg', '96', '2', '1', '1', '1');
INSERT INTO `df_goods_sku` VALUES ('2', '2017-11-15 03:11:04', '2017-11-14 08:44:43', '0', '盒装草莓', '草莓简介', '20.00', '盒', 'static/images/goods/goods003.jpg', '10', '0', '1', '1', '1');
INSERT INTO `df_goods_sku` VALUES ('3', '2017-11-15 03:12:32', '2019-08-11 05:57:16', '0', '纯甜葡萄a', '葡萄简介', '20.00', '500g', 'static/images/goods/goods002.jpg', '6', '1', '1', '2', '1');
INSERT INTO `df_goods_sku` VALUES ('4', '2017-11-15 03:13:16', '2017-11-14 08:25:34', '0', '柠檬', '简介', '32.00', '500g', 'static/images/goods/goods001.jpg', '12', '0', '1', '3', '1');
INSERT INTO `df_goods_sku` VALUES ('5', '2017-11-15 03:14:05', '2017-11-14 08:25:56', '0', '奇异果', '简介', '12.12', '500g', 'static/images/goods/goods012.jpg', '10', '2', '1', '4', '1');
INSERT INTO `df_goods_sku` VALUES ('6', '2017-11-15 03:15:09', '2017-11-14 08:26:09', '0', '大青虾', '简介', '34.00', '500g', 'static/images/goods/goods021.jpg', '12', '0', '1', '5', '2');
INSERT INTO `df_goods_sku` VALUES ('7', '2017-11-15 03:15:53', '2017-11-14 08:26:19', '0', '北海道秋刀鱼', '简介', '50.00', '500g', 'static/images/goods/goods020.jpg', '15', '0', '1', '6', '2');
INSERT INTO `df_goods_sku` VALUES ('8', '2017-11-15 03:16:24', '2017-11-14 08:26:31', '0', '扇贝', '简介', '56.60', '500g', 'static/images/goods/goods019.jpg', '13', '0', '1', '7', '2');
INSERT INTO `df_goods_sku` VALUES ('9', '2017-11-15 03:17:13', '2017-11-14 08:26:58', '0', '基围虾', '简介', '100.90', '500g', 'static/images/goods/goods018.jpg', '14', '0', '1', '8', '2');
INSERT INTO `df_goods_sku` VALUES ('10', '2017-11-15 03:17:47', '2017-11-14 08:29:56', '0', '猪肉', '简介', '23.99', '500g', 'static/images/goods/goods022.jpg', '100', '0', '1', '9', '3');
INSERT INTO `df_goods_sku` VALUES ('11', '2017-11-15 03:18:15', '2017-11-14 08:31:27', '0', '牛肉', '简介', '34.99', '500g', 'static/images/goods/goods023.jpg', '100', '0', '1', '10', '3');
INSERT INTO `df_goods_sku` VALUES ('12', '2017-11-15 03:18:44', '2017-11-14 08:32:22', '0', '羊肉', '简介', '56.99', '500g', 'static/images/goods/goods024.jpg', '100', '0', '1', '11', '3');
INSERT INTO `df_goods_sku` VALUES ('13', '2017-11-15 03:19:10', '2017-11-14 08:33:15', '0', '牛排', '简介', '99.99', '500g', 'static/images/goods/goods025.jpg', '100', '0', '1', '12', '3');
INSERT INTO `df_goods_sku` VALUES ('14', '2017-11-15 03:19:44', '2017-11-14 08:34:31', '0', '盒装鸡蛋', '简介', '23.00', '500g', 'static/images/goods/goods036.jpg', '100', '0', '1', '13', '4');
INSERT INTO `df_goods_sku` VALUES ('15', '2017-11-15 03:20:20', '2017-11-14 08:35:21', '0', '鸡肉', '简介', '32.00', '500g', 'static/images/goods/goods041.jpg', '100', '0', '1', '14', '4');
INSERT INTO `df_goods_sku` VALUES ('16', '2017-11-15 03:20:53', '2017-11-14 08:37:27', '0', '鸭蛋', '简介', '45.00', '盒', 'static/images/goods/goods041.jpg', '121', '0', '1', '15', '4');
INSERT INTO `df_goods_sku` VALUES ('17', '2017-11-15 03:21:22', '2017-11-14 08:38:08', '0', '鸡腿', '简介', '45.00', '500g', 'static/images/goods/goods029.jpg', '11', '1', '1', '16', '4');
INSERT INTO `df_goods_sku` VALUES ('18', '2017-11-15 03:22:04', '2017-11-14 08:38:45', '0', '白菜', '简介', '4.50', '500g', 'static/images/goods/goods030.jpg', '100', '0', '1', '17', '5');
INSERT INTO `df_goods_sku` VALUES ('19', '2017-11-15 03:22:31', '2017-11-14 08:39:40', '0', '芹菜', '简介', '3.50', '500g', 'static/images/goods/goods031.jpg', '12', '0', '1', '18', '5');
INSERT INTO `df_goods_sku` VALUES ('20', '2017-11-15 03:23:21', '2017-11-14 08:40:08', '0', '香菜', '简介', '7.90', '500g', 'static/images/goods/goods032.jpg', '100', '0', '1', '19', '5');
INSERT INTO `df_goods_sku` VALUES ('21', '2017-11-15 03:23:46', '2017-11-14 08:40:38', '0', '冬瓜', '简介', '12.99', '500g', 'static/images/goods/goods033.jpg', '100', '0', '1', '20', '5');
INSERT INTO `df_goods_sku` VALUES ('22', '2017-11-15 03:24:10', '2017-11-14 08:41:19', '0', '鱼丸', '简介', '66.00', '500g', 'static/images/goods/goods034.jpg', '12', '0', '1', '21', '6');
INSERT INTO `df_goods_sku` VALUES ('23', '2017-11-15 03:24:37', '2017-11-14 08:41:59', '0', '蟹棒', '简介', '68.00', '500g', 'static/images/goods/goods035.jpg', '100', '0', '1', '22', '6');
INSERT INTO `df_goods_sku` VALUES ('24', '2017-11-15 03:25:18', '2017-11-14 08:42:25', '0', '虾丸', '简介', '89.99', '500g', 'static/images/goods/goods036.jpg', '100', '0', '1', '23', '6');
INSERT INTO `df_goods_sku` VALUES ('25', '2017-11-15 03:25:56', '2017-11-14 08:43:18', '0', '速冻水饺', '简介', '20.00', '袋', 'static/images/goods/goods037.jpg', '100', '0', '1', '24', '6');
INSERT INTO `df_goods_sku` VALUES ('26', '2017-11-14 08:53:00', '2017-11-14 08:53:00', '0', '越南芒果', '新鲜越南芒果', '29.90', '2.5kg', 'static/images/goods/goods039.jpg', '100', '0', '1', '25', '1');
INSERT INTO `df_goods_sku` VALUES ('27', '2017-11-17 07:57:00', '2017-11-17 07:57:00', '0', '鹌鹑蛋', '简介', '39.80', '126枚', 'static/images/goods/goods040.jpg', '100', '0', '1', '26', '4');
INSERT INTO `df_goods_sku` VALUES ('28', '2017-11-17 07:58:18', '2017-11-17 07:58:18', '0', '鹅蛋', '简介', '49.90', '6枚', 'static/images/goods/goods041.jpg', '80', '0', '1', '27', '4');
INSERT INTO `df_goods_sku` VALUES ('29', '2017-11-17 07:59:48', '2017-11-17 07:59:48', '0', '红辣椒', '简介', '11.00', '2.5kg', 'static/images/goods/goods042.jpg', '150', '0', '1', '28', '5');

-- ----------------------------
-- Table structure for `df_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_type`;
CREATE TABLE `df_goods_type` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `logo` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_type
-- ----------------------------
INSERT INTO `df_goods_type` VALUES ('1', '2017-11-14 05:02:09', '2017-11-14 05:02:09', '0', '新鲜水果', 'fruit', 'static/images/banner01.jpg');
INSERT INTO `df_goods_type` VALUES ('2', '2017-11-14 05:04:32', '2017-11-14 05:04:32', '0', '海鲜水产', 'seafood', 'static/images/banner02.jpg');
INSERT INTO `df_goods_type` VALUES ('3', '2017-11-14 05:05:34', '2017-11-14 05:05:34', '0', '猪牛羊肉', 'meet', 'static/images/banner03.jpg');
INSERT INTO `df_goods_type` VALUES ('4', '2017-11-14 05:05:58', '2017-11-14 05:05:58', '0', '禽类蛋品', 'egg', 'static/images/banner04.jpg');
INSERT INTO `df_goods_type` VALUES ('5', '2017-11-14 05:06:32', '2017-11-14 05:06:32', '0', '新鲜蔬菜', 'vegetables', 'static/images/banner05.jpg');
INSERT INTO `df_goods_type` VALUES ('6', '2017-11-14 05:06:55', '2017-11-14 05:06:55', '0', '速冻食品', 'ice', 'static/images/banner06.jpg');

-- ----------------------------
-- Table structure for `df_index_banner`
-- ----------------------------
DROP TABLE IF EXISTS `df_index_banner`;
CREATE TABLE `df_index_banner` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `df_index_banner_sku_id_57f2798e` (`sku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_index_banner
-- ----------------------------
INSERT INTO `df_index_banner` VALUES ('1', '2017-11-14 08:48:05', '2017-11-14 08:48:05', '0', 'static/images/slide.jpg', '0', '5');
INSERT INTO `df_index_banner` VALUES ('2', '2017-11-14 08:53:26', '2017-11-14 08:53:26', '0', 'static/images/slide02.jpg', '1', '26');
INSERT INTO `df_index_banner` VALUES ('3', '2017-11-14 08:53:40', '2017-11-14 08:53:40', '0', 'static/images/slide03.jpg', '2', '13');
INSERT INTO `df_index_banner` VALUES ('4', '2017-11-14 08:54:02', '2017-11-14 08:54:02', '0', 'static/images/slide04.jpg', '3', '9');

-- ----------------------------
-- Table structure for `df_index_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `df_index_promotion`;
CREATE TABLE `df_index_promotion` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_index_promotion
-- ----------------------------
INSERT INTO `df_index_promotion` VALUES ('1', '2017-11-14 08:56:21', '2017-11-17 08:29:08', '0', '吃货暑假趴', '#', 'static/images/adv01.jpg', '0');
INSERT INTO `df_index_promotion` VALUES ('2', '2017-11-14 08:56:53', '2017-11-14 08:56:53', '0', '盛夏尝鲜季', '#', 'static/images/adv02.jpg', '1');

-- ----------------------------
-- Table structure for `df_index_type_goods`
-- ----------------------------
DROP TABLE IF EXISTS `df_index_type_goods`;
CREATE TABLE `df_index_type_goods` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `display_type` smallint(6) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `df_index_type_goods_sku_id_0a8a17db` (`sku_id`),
  KEY `df_index_type_goods_type_id_35192ffd` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_index_type_goods
-- ----------------------------
INSERT INTO `df_index_type_goods` VALUES ('1', '2017-11-14 08:57:41', '2017-11-14 08:57:41', '0', '1', '0', '1', '1');
INSERT INTO `df_index_type_goods` VALUES ('2', '2017-11-14 08:57:50', '2017-11-14 08:57:50', '0', '1', '1', '3', '1');
INSERT INTO `df_index_type_goods` VALUES ('3', '2017-11-14 08:58:00', '2017-11-14 08:58:00', '0', '1', '2', '5', '1');
INSERT INTO `df_index_type_goods` VALUES ('4', '2017-11-14 08:58:20', '2017-11-14 08:58:20', '0', '1', '3', '4', '1');
INSERT INTO `df_index_type_goods` VALUES ('5', '2017-11-14 08:58:32', '2017-11-14 08:58:32', '0', '0', '0', '2', '1');
INSERT INTO `df_index_type_goods` VALUES ('6', '2017-11-14 08:58:53', '2017-11-14 08:58:53', '0', '0', '1', '4', '1');
INSERT INTO `df_index_type_goods` VALUES ('7', '2017-11-14 08:59:16', '2017-11-14 08:59:16', '0', '1', '0', '6', '2');
INSERT INTO `df_index_type_goods` VALUES ('8', '2017-11-14 08:59:25', '2017-11-14 08:59:25', '0', '1', '1', '7', '2');
INSERT INTO `df_index_type_goods` VALUES ('9', '2017-11-14 08:59:37', '2017-11-14 08:59:37', '0', '1', '2', '8', '2');
INSERT INTO `df_index_type_goods` VALUES ('10', '2017-11-14 08:59:48', '2017-11-14 09:30:28', '0', '1', '3', '9', '2');
INSERT INTO `df_index_type_goods` VALUES ('11', '2017-11-14 08:59:59', '2017-11-14 08:59:59', '0', '0', '0', '9', '2');
INSERT INTO `df_index_type_goods` VALUES ('12', '2017-11-14 09:00:11', '2017-11-14 09:00:11', '0', '0', '1', '8', '2');
INSERT INTO `df_index_type_goods` VALUES ('13', '2017-11-14 09:00:20', '2017-11-14 09:00:20', '0', '1', '0', '10', '3');
INSERT INTO `df_index_type_goods` VALUES ('15', '2017-11-14 09:00:41', '2017-11-14 09:00:41', '0', '1', '2', '12', '3');
INSERT INTO `df_index_type_goods` VALUES ('16', '2017-11-14 09:00:56', '2017-11-14 09:00:56', '0', '1', '3', '13', '3');
INSERT INTO `df_index_type_goods` VALUES ('17', '2017-11-14 09:01:09', '2017-11-14 09:01:09', '0', '0', '0', '15', '3');
INSERT INTO `df_index_type_goods` VALUES ('18', '2017-11-14 09:01:18', '2017-11-14 09:01:18', '0', '1', '1', '17', '3');
INSERT INTO `df_index_type_goods` VALUES ('19', '2017-11-14 09:01:29', '2017-11-14 09:01:29', '0', '1', '0', '14', '4');
INSERT INTO `df_index_type_goods` VALUES ('20', '2017-11-14 09:01:44', '2017-11-14 09:01:44', '0', '1', '1', '16', '4');
INSERT INTO `df_index_type_goods` VALUES ('21', '2017-11-14 09:02:01', '2017-11-14 09:02:01', '0', '0', '0', '14', '4');
INSERT INTO `df_index_type_goods` VALUES ('22', '2017-11-14 09:02:14', '2017-11-14 09:02:14', '0', '0', '1', '16', '4');
INSERT INTO `df_index_type_goods` VALUES ('23', '2017-11-14 09:02:29', '2017-11-14 09:02:29', '0', '1', '0', '18', '5');
INSERT INTO `df_index_type_goods` VALUES ('24', '2017-11-14 09:02:38', '2017-11-14 09:02:38', '0', '1', '1', '19', '5');
INSERT INTO `df_index_type_goods` VALUES ('25', '2017-11-14 09:02:48', '2017-11-14 09:02:48', '0', '1', '2', '20', '5');
INSERT INTO `df_index_type_goods` VALUES ('26', '2017-11-14 09:03:01', '2017-11-14 09:03:01', '0', '0', '0', '20', '5');
INSERT INTO `df_index_type_goods` VALUES ('27', '2017-11-14 09:03:14', '2017-11-14 09:03:14', '0', '0', '1', '19', '5');
INSERT INTO `df_index_type_goods` VALUES ('28', '2017-11-14 09:03:27', '2017-11-14 09:03:27', '0', '1', '0', '22', '6');
INSERT INTO `df_index_type_goods` VALUES ('29', '2017-11-14 09:03:37', '2017-11-14 09:03:37', '0', '1', '1', '23', '6');
INSERT INTO `df_index_type_goods` VALUES ('30', '2017-11-14 09:03:48', '2017-11-14 09:03:48', '0', '1', '2', '24', '6');
INSERT INTO `df_index_type_goods` VALUES ('31', '2017-11-14 09:03:58', '2017-11-14 09:03:58', '0', '1', '3', '25', '6');
INSERT INTO `df_index_type_goods` VALUES ('32', '2017-11-14 09:04:11', '2017-11-14 09:04:11', '0', '0', '0', '23', '6');
INSERT INTO `df_index_type_goods` VALUES ('33', '2017-11-14 09:04:21', '2017-11-14 09:04:21', '0', '0', '1', '25', '6');
INSERT INTO `df_index_type_goods` VALUES ('34', '2017-11-17 08:00:09', '2017-11-17 08:00:09', '0', '1', '2', '27', '4');
INSERT INTO `df_index_type_goods` VALUES ('35', '2017-11-17 08:00:19', '2017-11-17 08:00:19', '0', '1', '3', '28', '4');
INSERT INTO `df_index_type_goods` VALUES ('36', '2017-11-17 08:00:31', '2017-11-17 08:00:31', '0', '1', '3', '29', '5');

-- ----------------------------
-- Table structure for `df_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `df_order_goods`;
CREATE TABLE `df_order_goods` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `df_order_goods_order_id_6958ee23` (`order_id`),
  KEY `df_order_goods_sku_id_b7d6e04e` (`sku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_goods
-- ----------------------------
INSERT INTO `df_order_goods` VALUES ('1', '2019-08-10 14:47:21', '2019-08-10 14:47:21', '0', '1', '45.00', '', '201908102247211', '17');
INSERT INTO `df_order_goods` VALUES ('2', '2019-08-10 14:47:21', '2019-08-10 14:47:21', '0', '2', '12.12', '', '201908102247211', '5');
INSERT INTO `df_order_goods` VALUES ('3', '2019-08-10 16:50:39', '2019-08-10 16:50:39', '0', '2', '10.00', '', '201908110050391', '1');
INSERT INTO `df_order_goods` VALUES ('4', '2019-08-10 16:50:39', '2019-08-10 16:50:39', '0', '1', '20.00', '', '201908110050391', '3');

-- ----------------------------
-- Table structure for `df_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `df_order_info`;
CREATE TABLE `df_order_info` (
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `transit_price` decimal(10,2) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `trade_no` varchar(128) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`order_id`),
  KEY `df_order_info_addr_id_70c3726e` (`addr_id`),
  KEY `df_order_info_user_id_ac1e5bf5` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_info
-- ----------------------------
INSERT INTO `df_order_info` VALUES ('2019-08-10 14:47:21', '2019-08-10 14:47:21', '0', '201908102247211', '3', '3', '69.24', '10.00', '1', '', '1', '1');
INSERT INTO `df_order_info` VALUES ('2019-08-10 16:50:39', '2019-08-11 04:43:19', '0', '201908110050391', '3', '3', '40.00', '10.00', '4', '2019081122001474821000027628', '1', '1');

-- ----------------------------
-- Table structure for `df_user`
-- ----------------------------
DROP TABLE IF EXISTS `df_user`;
CREATE TABLE `df_user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(128) NOT NULL,
  `last_login` datetime default NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user
-- ----------------------------
INSERT INTO `df_user` VALUES ('1', 'pbkdf2_sha256$36000$GvLCs1UHC0Fi$eMPHk7dtJWIjm6UmznJ84Rd7dzqdPtrG2NEsPxp3Ttk=', '2019-08-11 05:38:37', '0', 'user1', '', '', '254540457@qq.com', '0', '1', '2019-08-10 13:24:52', '2019-08-10 13:24:52', '2019-08-10 13:26:14', '0');
INSERT INTO `df_user` VALUES ('2', 'pbkdf2_sha256$36000$gP5IbbQw8rjF$cbESDKKobyTWzecvUtu9Tau0KgCLDldyCkU+vlz1Xcc=', '2019-08-11 05:41:14', '1', 'admin', '', '', '254540457@qq.com', '1', '1', '2019-08-10 13:59:10', '2019-08-10 13:59:10', '2019-08-10 13:59:10', '0');

-- ----------------------------
-- Table structure for `df_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `df_user_groups`;
CREATE TABLE `df_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `df_user_groups_user_id_group_id_80e5ab91_uniq` (`user_id`,`group_id`),
  KEY `df_user_groups_user_id_a816b098` (`user_id`),
  KEY `df_user_groups_group_id_36f24e94` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `df_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `df_user_user_permissions`;
CREATE TABLE `df_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `df_user_user_permissions_user_id_permission_id_b22997de_uniq` (`user_id`,`permission_id`),
  KEY `df_user_user_permissions_user_id_b5f6551b` (`user_id`),
  KEY `df_user_user_permissions_permission_id_40a6cb2d` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) default NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-08-11 05:45:55', '3', '纯甜葡萄a', '2', '[]', '10', '2');
INSERT INTO `django_admin_log` VALUES ('2', '2019-08-11 05:57:16', '3', '纯甜葡萄a', '2', '[]', '10', '2');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'user', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'user', 'address');
INSERT INTO `django_content_type` VALUES ('8', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('9', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('10', 'goods', 'goodssku');
INSERT INTO `django_content_type` VALUES ('11', 'goods', 'goodstype');
INSERT INTO `django_content_type` VALUES ('12', 'goods', 'indexgoodsbanner');
INSERT INTO `django_content_type` VALUES ('13', 'goods', 'indexpromotionbanner');
INSERT INTO `django_content_type` VALUES ('14', 'goods', 'indextypegoodsbanner');
INSERT INTO `django_content_type` VALUES ('15', 'order', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('16', 'order', 'orderinfo');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL auto_increment,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-08-10 12:39:30');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-08-10 12:39:30');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('9', 'user', '0001_initial', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('10', 'admin', '0001_initial', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('11', 'admin', '0002_logentry_remove_auto_add', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('14', 'goods', '0001_initial', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('15', 'order', '0001_initial', '2019-08-10 12:39:31');
INSERT INTO `django_migrations` VALUES ('16', 'order', '0002_auto_20171113_1813', '2019-08-10 12:39:32');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2019-08-10 12:39:32');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
