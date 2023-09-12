/*
 Navicat Premium Data Transfer

 Source Server         : localhostMySQL
 Source Server Type    : MySQL
 Source Server Version : 100129
 Source Host           : localhost:3306
 Source Schema         : db_lubricate

 Target Server Type    : MySQL
 Target Server Version : 100129
 File Encoding         : 65001

 Date: 12/09/2023 15:52:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CreatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CreatedDate` datetime NULL DEFAULT NULL,
  `UpdatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UpdatedDate` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `Image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Category 1', 'Description 1', 'User 1', '2023-09-01 00:00:00', 'User 1', '2023-09-12 14:49:07', 'image1.jpg');
INSERT INTO `categories` VALUES (2, 'Category 2', 'Description 2', 'User 2', '2023-09-02 00:00:00', 'User 2', '2023-09-12 14:49:07', 'image2.jpg');
INSERT INTO `categories` VALUES (3, 'Category 3', 'Description 3', 'User 3', '2023-09-03 00:00:00', 'User 3', '2023-09-12 14:49:07', 'image3.jpg');

-- ----------------------------
-- Table structure for subcategories
-- ----------------------------
DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE `subcategories`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ParentCategoryID` int NULL DEFAULT NULL,
  `CreatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CreatedDate` datetime NULL DEFAULT NULL,
  `UpdatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedDate` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ParentCategoryID`(`ParentCategoryID` ASC) USING BTREE,
  CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`ParentCategoryID`) REFERENCES `categories` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of subcategories
-- ----------------------------

-- ----------------------------
-- Table structure for subsubcategories
-- ----------------------------
DROP TABLE IF EXISTS `subsubcategories`;
CREATE TABLE `subsubcategories`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ParentSubcategoryID` int NULL DEFAULT NULL,
  `CreatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CreatedDate` datetime NULL DEFAULT NULL,
  `UpdatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `UpdatedDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ParentSubcategoryID`(`ParentSubcategoryID` ASC) USING BTREE,
  CONSTRAINT `subsubcategories_ibfk_1` FOREIGN KEY (`ParentSubcategoryID`) REFERENCES `subcategories` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of subsubcategories
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Jabatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Role` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IsActive` bit(1) NULL DEFAULT b'0',
  `CreatedBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CreatedDate` datetime NULL DEFAULT NULL,
  `ApproveBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ApproveDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`) USING BTREE,
  UNIQUE INDEX `Email`(`Email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
