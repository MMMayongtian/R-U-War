/*
 Navicat Premium Data Transfer

 Source Server         : MMMa
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : feehi

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 12/02/2023 16:02:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feehi_team
-- ----------------------------
DROP TABLE IF EXISTS `feehi_team`;
CREATE TABLE `feehi_team`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'user id(auto increment)',
  `membername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'member name',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'description',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user email',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'avatar url',
  `status` smallint(0) NOT NULL DEFAULT 10 COMMENT 'user status, (normal:10)',
  `created_at` int(0) NOT NULL COMMENT 'created at',
  `updated_at` int(0) NOT NULL COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`membername`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
