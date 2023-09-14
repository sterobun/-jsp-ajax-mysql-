/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : mydatabase

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 21/05/2023 14:01:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for borrow_info
-- ----------------------------
DROP TABLE IF EXISTS `borrow_info`;
CREATE TABLE `borrow_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(0) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_info
-- ----------------------------
INSERT INTO `borrow_info` VALUES (23, 'JavaWeb', 9, '黑马程序员', 'root');
INSERT INTO `borrow_info` VALUES (24, '计算机组装与维修', 9, '黑马程序员', 'root');
INSERT INTO `borrow_info` VALUES (25, '网页设计', 9, '黑马程序员', 'root');

-- ----------------------------
-- Table structure for data_info
-- ----------------------------
DROP TABLE IF EXISTS `data_info`;
CREATE TABLE `data_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_info
-- ----------------------------
INSERT INTO `data_info` VALUES (35, 'JavaWeb', '黑马程序员', 'stu', 'root');
INSERT INTO `data_info` VALUES (36, '计算机组装与维修', '黑马程序员', 'stu', 'root');
INSERT INTO `data_info` VALUES (37, '网页设计', '黑马程序员', 'stu', 'root');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', 'root', 1);
INSERT INTO `user` VALUES (2, 'stu', '123456', 0);
INSERT INTO `user` VALUES (3, 'zhangsan', '123456', 0);
INSERT INTO `user` VALUES (5, 'root2', 'root', 1);

SET FOREIGN_KEY_CHECKS = 1;
