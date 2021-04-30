-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-04-30 02:27:55
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `store`
--

-- --------------------------------------------------------

--
-- 資料表結構 `motorcycledata`
--

CREATE TABLE `motorcycledata` (
  `ID` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '機種名稱',
  `LWH` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '長寬高',
  `Wheelbase` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '軸距',
  `Displacement` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '排氣量(CC)',
  `Engine` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '引擎形式	',
  `Tire_front` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '輪胎(前)',
  `Tirerear` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '輪胎(後)',
  `Curbweight` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '整備重量(kg)',
  `Frontbrake` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '前煞系統',
  `brakediameter` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '前煞車直徑(φ)',
  `Rearbrake` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '後煞系統',
  `Frontmaterial` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '前輪材質',
  `Rearwheelmaterial` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '後輪材質',
  `Headlight` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '前大燈',
  `Positioning_light` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '定位燈',
  `brake_lights` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '尾燈&煞車燈',
  `Frontturn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '前方向燈',
  `Rear_direction` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '後方向燈',
  `Dashboard` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '儀錶板',
  `Main_switch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主開關',
  `Anti_theft_device` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '防盜裝置',
  `Cushion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '坐墊開啟',
  `other` text DEFAULT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mid` tinyint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `motorcycledata`
--

INSERT INTO `motorcycledata` (`ID`, `name`, `LWH`, `Wheelbase`, `Displacement`, `Engine`, `Tire_front`, `Tirerear`, `Curbweight`, `Frontbrake`, `brakediameter`, `Rearbrake`, `Frontmaterial`, `Rearwheelmaterial`, `Headlight`, `Positioning_light`, `brake_lights`, `Frontturn`, `Rear_direction`, `Dashboard`, `Main_switch`, `Anti_theft_device`, `Cushion`, `other`, `type`, `mid`) VALUES
(1, 'Joymax Z', '2190 x 760 x 1450', '1546', '278.3 CC', '四衝,四閥,水冷', '120/70-14', '140/60 13', '184.0 kg', '碟煞+ABS煞車系統', 'φ260', '碟煞+ABS煞車系統', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', '12 V 5W x 2', 'LED', '12 V 10W × 2', '12 V 10W × 2', '步進式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '大型重型機車', 1),
(2, 'MAXSYM 七期', '2230 x 820 x 1455', '1555', '399 CC', '四衝,四閥,水冷', '120 / 70 - R15', '160 / 60 - R14', '215.0 kg', '碟煞+ABS', 'φ275', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', '步進式 + 液晶式', 'Keyless免鑰匙開關', '', '中控鎖開啟(獨立觸控開關)', NULL, '大型重型機車', 2),
(3, 'MAXSYM TL', '2202 x 801 x 1442', '1543', '465 CC', '四衝,四閥,水冷', '120/70 R15', '160/60 R15', '223.0 kg', '雙碟+ABS', 'φ275', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', 'TFT+VA液晶', 'Keyless免鑰匙開關', '', '中控鎖開啟(獨立觸控開關)', NULL, '大型重型機車', 3),
(4, 'CRUiSYM', '2175 x 760 x 1440', '1550', '278.3 CC', '四衝,四閥,水冷', '120/70 14', '140/60-13', '198.0 kg', '碟煞+ABS', 'φ260', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 55W / 55W × 2', 'LED', 'LED', 'LED', 'LED', '液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '大型重型機車', 4),
(5, '野狼 SB 300 ABS', '2020 x 793 x 1090', '1335', '278 CC', '四衝,四閥,水冷', '110/70 17', '140/70 17', '175.0 kg', '碟煞+ABS煞車系統', 'φ288', '碟煞+ABS煞車系統', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '龍頭鎖', '車側鑰匙孔', NULL, '大型重型機車', 5),
(6, '野狼 T2 ABS', '2005 x 790 x 1050', '1320', '250.6 CC', '四衝,四閥,水冷', '110/70 17', '140/70 17', '173.0 kg', '碟煞+ABS', 'φ288', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', '12 V 5W × 2', 'LED', '12 V 10W × 2', '12 V 10W × 2', '步進式 + 液晶式', '四合一中控鎖', '龍頭鎖', '車側鑰匙孔', NULL, '大型重型機車', 6),
(7, 'DRGBT', '1990 x 735 x 1130', '1380', '158 CC', '四衝,四閥,水冷', '120/70-13', '130/70-13', '135.0 kg', '碟煞+ABS', 'φ260', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', '', '', '', '', NULL, '150cc_250cc', 7),
(8, 'FIDDLE DX CBS 七期', '1865 x 700 x 1115', '1290', '150.1 CC', '四衝,二閥,強制空冷', '110/70-12', '120/70-12', '115.0 kg', '碟煞', 'φ226', '碟煞+CBS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '150cc_250cc', 8),
(9, 'RV 180 EURO ABS', '2100 x 760 x 1390', '1440', '175.3 CC', '四衝,四閥,水冷', '110 / 90 - 13', '130/70 70 - 12', '164.0 kg', '碟煞+ABS', 'φ240', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 55W / 55W × 1', 'LED', '12 V 5W / 21W × 1', '12 V 21W × 2', '12 V 21W × 2', '機械式 + 液晶式', '四合一中控鎖', '斷電開關', '觸控座墊開關', NULL, '150cc_250cc', 9),
(10, '金發財 150 七期', '1910 x 690 x 1075', '1390', '150.1 CC', '四衝,二閥,強制氣冷', '100/90 10', '100/90 10', '119.0 kg', '碟煞', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '車側鑰匙孔', NULL, '150cc_250cc', 10),
(11, 'FIDDLE DX ABS 七期', '1865 x 700 x 1115', '1290', '150.1 CC', '四衝,二閥,強制空冷', '110/70-12', '120/70-12', '116.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '150cc_250cc', 8),
(12, '金發財 150', '1910 x 690 x 1090', '1380', '150.1 CC', '四衝,二閥,強制空冷', '100/90 10', '100/90 10', '122.0 kg', '碟煞', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '車側鑰匙孔', NULL, '150cc_250cc', 10),
(13, 'FIDDLE CBS 七期', '1865 x 700 x 1115', '1290', '124.9 CC', '四衝,二閥,強制空冷', '110/70 12', '120/70-12', '115.0 kg', '碟煞', 'φ226', '碟煞+CBS', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '125cc_150cc', 11),
(14, 'FIDDLE ABS 七期', '1865 x 700 x 1115', '1290', '124.9 CC', '四衝,二閥,強制氣冷', '110/70 12', '120/70-12', '116.0 kg', '碟煞', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '125cc_150cc', 11),
(15, 'FNX ABS 七期', '1890 x 705 x 1110', '1295', '124.9 CC', '四衝,二閥,強制空冷', '110/70 12', '120/70-12', '115.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟+按鍵', NULL, '125cc_150cc', 12),
(16, 'JET 雙碟ABS版(全時點燈)', '1813 x 705 x 1095', '1286', '124.6 CC', '四衝,四閥,強制氣冷', '110/70 12 47L', '120/70 12 51L', '129.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 35W / 35W × 2', 'LED', 'LED', '12 V 16W × 2', '12 V 10W × 2', '步進式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 13),
(17, 'JET SR ABS 七期', '1810 x 705 x 1100', '1290', '124.6 CC', '四衝,四閥,強制氣冷', '110/70 12', '120/70-12', '124.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', 'LEDx2', 'LED', 'LED', '12 V 16W × 2', '12 V 10W × 2', '步進式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 14),
(18, 'VEGA CBS 七期', '1760 x 690 x 1040', '1250', '124.6 CC', '四衝,二閥,強制氣冷', '90/90 10', '100/80 10', '103.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', 'LED', 'LED', 'LED', 'LED', 'LED', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 15),
(19, 'VEGA ABS 七期', '1760 x 700 x 1040', '1250', '124.6 CC', '四衝,二閥,強制氣冷', '90/90 10', '100/80 10', '103.0 kg', '碟煞+ABS', 'φ180', '鼓煞', '鐵圈', '鐵圈', 'LED', 'LED', 'LED', 'LED', 'Hi power LED', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 15),
(20, 'Z1 attila 雙碟 ABS 七期', '1810 x 705 x 1095', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '109.0 kg', '碟煞+ABS', 'φ205', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', 'LED式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', 'ALEH', '125cc_150cc', 16),
(21, 'Z1 attila 雙碟 CBS 七期', '1810 x 705 x 1095', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50 10', '109.0 kg', '碟煞', 'φ205', '碟煞+CBS', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', 'LED式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', 'ALEH', '125cc_150cc', 16),
(22, '迪爵 鼓 CBS 七期', '1810 x 680 x 1105', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50 10', '112.0 kg', '鼓煞', 'φ130', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 17),
(23, '迪爵 CBS 六期', '1812 x 700 x 1098', '1257', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '114.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 17),
(24, '迪爵 CBS 七期', '1810 x 700 x 1105', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '112.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 17),
(25, '迪爵 碟 ABS 七期', '1810 x 680 x 1105', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50-10', '116.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 17),
(26, '迪爵 ABS', '1812 x 700 x 1098', '1257', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '114.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 17),
(27, '活力 125 鼓 CBS 六期', '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '109.0 kg', '鼓煞', 'φ130', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W×2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 18),
(28, '活力 125 鼓 CBS 七期', '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50 10', '107.0 kg', '鼓煞', 'φ130', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 18),
(29, 'VIVO 125 CBS 七期', '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '107.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 18),
(30, '活力 125 碟 ABS 七期', '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50-10', '107.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 18),
(31, '金發財125 七期', '1910 x 690 x 1075', '1390', '124.6 CC', '四衝,二閥,強制空冷', '100/90 10', '100/90 10', '119.0 kg', '碟煞', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 19),
(32, '金發財 125 七期 ABS', '1910 x 690 x 1075', '1390', '124.6 CC', '四衝,二閥,強制空冷', '100/90-10', '100/90-10', '119.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 19),
(33, '野狼傳奇 125', '1900 x 785 x 1055', '1220', '124 CC', '四衝,二閥,強制氣冷', '2.75-18 42P', '3.00-17 45P', '125.0 kg', '碟煞', 'φ240', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 4', '12 V 10W × 4', '機械式', '三合一中控鎖', '', '', NULL, '125cc_150cc', 20),
(34, '野狼 125 六期', '1887 x 756 x 1092', '1214', '124 CC', '四衝,二閥,氣冷', '2.75-18', '3.00-17', '120.0 kg', '鼓煞', 'φ140', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 4', '12 V 10W × 4', '機械式', '三合一中控鎖', '', '', '', NULL, '125cc_150cc', 21),
(35, 'FIDDLE LT ZRSG+CBS版', '1780 x 690 x 1065', '1250', '115.6 CC', '四衝,二閥,強制氣冷', '90/90-10', '90/90-10', '99.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 22),
(36, 'FIDDLE LT ZRSG+ABS版', '1780 x 690 x 1065', '1250', '115.6 CC', '四衝,二閥,強制氣冷', '90/90-10', '90/90-10', '99.0 kg', '碟煞+ABS', 'φ180', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 22),
(37, 'WOO 鼓煞(全時點燈)', '', '1248', '101 CC', '四衝,二閥,強制空冷', '90/90 10', '90/90 10', '99.0 kg', '鼓煞', 'φ110', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 2', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 23),
(38, 'WOO 115 鼓 CBS 七期', '1748 x 652 x 1062', '1250', '115.6 CC', '四衝,二閥,強制氣冷', '90/90-10', '90/90-10', '99.0 kg', '鼓煞', 'φ110', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 2', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 24),
(39, 'e-WOO', '1765 x 625 x 1070', '1245', '', '側掛馬達', '90/90 10', '90/90 10', '80.0 kg', '鼓煞', 'φ110', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 2', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '', '', '磁石防盜', '中控鎖開啟', NULL, '電動車', 25);

-- --------------------------------------------------------

--
-- 資料表結構 `motorcycleimg`
--

CREATE TABLE `motorcycleimg` (
  `id` int(11) NOT NULL,
  `color1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionColor1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DescriptionColor2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DescriptionColor3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DescriptionColor4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DescriptionColor5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(15) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `Thumbnail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contentImg` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contentImg2` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contentImg3` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`, `Thumbnail`, `contentImg`, `contentImg2`, `contentImg3`) VALUES
(1, '測試標題1', '測試內容1', '2021-04-19 15:20:32', '', '', '', ''),
(2, '測試標題2', '測試內容2', '2021-04-22 15:22:15', '', '', '', ''),
(3, '測試標題3', '測試內容3', '2021-04-26 15:23:06', 'image/Logo.jpg', '', '', ''),
(4, '測試標題4', '<h5 style=\'color:red;\'>測試內容4<h5>', '2021-04-27 09:43:11', '', '', '', ''),
(5, '測試標題5', '測試內容5', '2021-04-05 09:12:26', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `identityCard` text NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` text NOT NULL,
  `mail` text NOT NULL,
  `RegistrationTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `identityCard`, `address`, `phone`, `mail`, `RegistrationTime`) VALUES
(1, 'test', '12345678', '測試用戶', 'b484876431', '測試地址', '09870103807', 'test540804806@gmail.com', '2021-04-21 08:08:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `motorcycledata`
--
ALTER TABLE `motorcycledata`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `motorcycleimg`
--
ALTER TABLE `motorcycleimg`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `motorcycledata`
--
ALTER TABLE `motorcycledata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `motorcycleimg`
--
ALTER TABLE `motorcycleimg`
  ADD CONSTRAINT `motorcycleimg_ibfk_1` FOREIGN KEY (`id`) REFERENCES `motorcycledata` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
