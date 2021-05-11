-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-11 09:06:33
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
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `motorcycledata`
--

CREATE TABLE `motorcycledata` (
  `ID` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '機種名稱',
  `typename` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` mediumint(20) NOT NULL,
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
  `class` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mid` tinyint(6) DEFAULT NULL,
  `open` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `motorcycledata`
--

INSERT INTO `motorcycledata` (`ID`, `name`, `typename`, `price`, `LWH`, `Wheelbase`, `Displacement`, `Engine`, `Tire_front`, `Tirerear`, `Curbweight`, `Frontbrake`, `brakediameter`, `Rearbrake`, `Frontmaterial`, `Rearwheelmaterial`, `Headlight`, `Positioning_light`, `brake_lights`, `Frontturn`, `Rear_direction`, `Dashboard`, `Main_switch`, `Anti_theft_device`, `Cushion`, `other`, `class`, `mid`, `open`) VALUES
(1, 'Joymax Z', 'Joymax Z', 156800, '2190 x 760 x 1450', '1546', '278.3 CC', '四衝,四閥,水冷', '120/70-14', '140/60 13', '184.0 kg', '碟煞+ABS煞車系統', 'φ260', '碟煞+ABS煞車系統', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', '12 V 5W x 2', 'LED', '12 V 10W × 2', '12 V 10W × 2', '步進式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '大型重型機車', 1, 1),
(2, 'MAXSYM 七期', 'MAXSYM 400', 208000, '2230 x 820 x 1455', '1555', '399 CC', '四衝,四閥,水冷', '120 / 70 - R15', '160 / 60 - R14', '215.0 kg', '碟煞+ABS', 'φ275', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', '步進式 + 液晶式', 'Keyless免鑰匙開關', '', '中控鎖開啟(獨立觸控開關)', NULL, '大型重型機車', 2, 1),
(3, 'MAXSYM TL', 'MAXSYM TL', 268000, '2202 x 801 x 1442', '1543', '465 CC', '四衝,四閥,水冷', '120/70 R15', '160/60 R15', '223.0 kg', '雙碟+ABS', 'φ275', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', 'TFT+VA液晶', 'Keyless免鑰匙開關', '', '中控鎖開啟(獨立觸控開關)', NULL, '大型重型機車', 3, 1),
(4, 'CRUiSYM', 'CRUiSYM', 196000, '2175 x 760 x 1440', '1550', '278.3 CC', '四衝,四閥,水冷', '120/70 14', '140/60-13', '198.0 kg', '碟煞+ABS', 'φ260', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 55W / 55W × 2', 'LED', 'LED', 'LED', 'LED', '液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '大型重型機車', 4, 1),
(5, '野狼 SB 300 ABS', '野狼 SB 300 ABS', 182000, '2020 x 793 x 1090', '1335', '278 CC', '四衝,四閥,水冷', '110/70 17', '140/70 17', '175.0 kg', '碟煞+ABS煞車系統', 'φ288', '碟煞+ABS煞車系統', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '龍頭鎖', '車側鑰匙孔', NULL, '大型重型機車', 5, 1),
(6, '野狼 T2 ABS', '野狼 T2 ABS', 161000, '2005 x 790 x 1050', '1320', '250.6 CC', '四衝,四閥,水冷', '110/70 17', '140/70 17', '173.0 kg', '碟煞+ABS', 'φ288', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', '12 V 5W × 2', 'LED', '12 V 10W × 2', '12 V 10W × 2', '步進式 + 液晶式', '四合一中控鎖', '龍頭鎖', '車側鑰匙孔', NULL, '大型重型機車', 6, 1),
(7, 'DRGBT', 'DRG BT', 105000, '1990 x 735 x 1130', '1380', '158 CC', '四衝,四閥,水冷', '120/70-13', '130/70-13', '135.0 kg', '碟煞+ABS', 'φ260', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', '', '', '', '', NULL, '150cc_250cc', 7, 1),
(8, 'FIDDLE DX CBS 七期', 'FIDDLE DX', 91800, '1865 x 700 x 1115', '1290', '150.1 CC', '四衝,二閥,強制空冷', '110/70-12', '120/70-12', '115.0 kg', '碟煞', 'φ226', '碟煞+CBS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '150cc_250cc', 8, 1),
(9, 'RV 180 EURO ABS', '', 0, '2100 x 760 x 1390', '1440', '175.3 CC', '四衝,四閥,水冷', '110 / 90 - 13', '130/70 70 - 12', '164.0 kg', '碟煞+ABS', 'φ240', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 55W / 55W × 1', 'LED', '12 V 5W / 21W × 1', '12 V 21W × 2', '12 V 21W × 2', '機械式 + 液晶式', '四合一中控鎖', '斷電開關', '觸控座墊開關', NULL, '150cc_250cc', 9, 0),
(10, '金發財 150 七期', '金發財 150', 84000, '1910 x 690 x 1075', '1390', '150.1 CC', '四衝,二閥,強制氣冷', '100/90 10', '100/90 10', '119.0 kg', '碟煞', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '車側鑰匙孔', NULL, '150cc_250cc', 10, 1),
(11, 'FIDDLE DX ABS 七期', 'FIDDLE DX', 96800, '1865 x 700 x 1115', '1290', '150.1 CC', '四衝,二閥,強制空冷', '110/70-12', '120/70-12', '116.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '150cc_250cc', 8, 1),
(12, '金發財 150', '金發財 150', 82500, '1910 x 690 x 1090', '1380', '150.1 CC', '四衝,二閥,強制空冷', '100/90 10', '100/90 10', '122.0 kg', '碟煞', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '車側鑰匙孔', NULL, '150cc_250cc', 10, 1),
(13, 'FIDDLE CBS 七期', 'FIDDLE 125', 81800, '1865 x 700 x 1115', '1290', '124.9 CC', '四衝,二閥,強制空冷', '110/70 12', '120/70-12', '115.0 kg', '碟煞', 'φ226', '碟煞+CBS', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '125cc_150cc', 13, 1),
(14, 'FIDDLE ABS 七期', 'FIDDLE 125', 86800, '1865 x 700 x 1115', '1290', '124.9 CC', '四衝,二閥,強制氣冷', '110/70 12', '120/70-12', '116.0 kg', '碟煞', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟(自動彈起)+按鍵', NULL, '125cc_150cc', 13, 1),
(15, 'FNX ABS 七期', 'FAN', 98500, '1890 x 705 x 1110', '1295', '124.9 CC', '四衝,二閥,強制空冷', '110/70 12', '120/70-12', '115.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', 'LED', 'LED', 'LED', 'LED', 'LED', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '中控鎖開啟+按鍵', NULL, '125cc_150cc', 15, 1),
(16, 'JET 雙碟ABS版(全時點燈)', 'JET', 93500, '1813 x 705 x 1095', '1286', '124.6 CC', '四衝,四閥,強制氣冷', '110/70 12 47L', '120/70 12 51L', '129.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 35W / 35W × 2', 'LED', 'LED', '12 V 16W × 2', '12 V 10W × 2', '步進式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 16, 1),
(17, 'JET SR ABS 七期', 'JET SR', 88000, '1810 x 705 x 1100', '1290', '124.6 CC', '四衝,四閥,強制氣冷', '110/70 12', '120/70-12', '124.0 kg', '碟煞+ABS', 'φ226', '碟煞+ABS', '鋁圈', '鋁圈', 'LEDx2', 'LED', 'LED', '12 V 16W × 2', '12 V 10W × 2', '步進式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 17, 1),
(18, 'VEGA CBS 七期', 'VEGA', 95545, '1760 x 690 x 1040', '1250', '124.6 CC', '四衝,二閥,強制氣冷', '90/90 10', '100/80 10', '103.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', 'LED', 'LED', 'LED', 'LED', 'LED', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 18, 1),
(19, 'VEGA ABS 七期', 'VEGA', 77000, '1760 x 700 x 1040', '1250', '124.6 CC', '四衝,二閥,強制氣冷', '90/90 10', '100/80 10', '103.0 kg', '碟煞+ABS', 'φ180', '鼓煞', '鐵圈', '鐵圈', 'LED', 'LED', 'LED', 'LED', 'Hi power LED', '液晶式', '整合式(六合一,seat open)', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 18, 1),
(20, 'Z1 attila 雙碟 ABS 七期', 'Z1 attila', 84000, '1810 x 705 x 1095', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '109.0 kg', '碟煞+ABS', 'φ205', '碟煞+ABS', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', 'LED式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', 'ALEH', '125cc_150cc', 20, 1),
(21, 'Z1 attila 雙碟 CBS 七期', 'Z1 attila', 75000, '1810 x 705 x 1095', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50 10', '109.0 kg', '碟煞', 'φ205', '碟煞+CBS', '鋁圈', '鋁圈', '12 V 60W / 55W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', 'LED式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', 'ALEH', '125cc_150cc', 20, 1),
(22, '迪爵 鼓 CBS 七期', '全新迪爵 DUKE 125|', 68000, '1810 x 680 x 1105', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50 10', '112.0 kg', '鼓煞', 'φ130', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 22, 1),
(23, '迪爵 CBS 六期', '全新迪爵 DUKE 125|', 63000, '1812 x 700 x 1098', '1257', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '114.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 22, 1),
(24, '迪爵 CBS 七期', '全新迪爵 DUKE 125|', 71500, '1810 x 700 x 1105', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '112.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 22, 1),
(25, '迪爵 碟 ABS 七期', '全新迪爵 DUKE 125|', 80000, '1810 x 680 x 1105', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50-10', '116.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 22, 1),
(26, '迪爵 ABS', '全新迪爵 DUKE 125|', 77000, '1812 x 700 x 1098', '1257', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '114.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', 'LED', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '四合一中控鎖', '磁石防盜', '觸控座墊開關', NULL, '125cc_150cc', 22, 1),
(27, '活力 125 鼓 CBS 六期', '活力 125', 49000, '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '109.0 kg', '鼓煞', 'φ130', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W×2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 27, 1),
(28, '活力 125 鼓 CBS 七期', '活力 125', 60000, '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50 10', '107.0 kg', '鼓煞', 'φ130', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 27, 1),
(29, 'VIVO 125 CBS 七期', '活力 125', 62500, '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50 10', '3.50 10', '107.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 27, 1),
(30, '活力 125 碟 ABS 七期', '活力 125', 72500, '1810 x 682 x 1080', '1255', '124.6 CC', '四衝,二閥,強制氣冷', '3.50-10', '3.50-10', '107.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W x 2', '12 V 21W / 5W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟(自動開啟)', NULL, '125cc_150cc', 27, 1),
(31, '金發財125 七期', '金發財 125', 78000, '1910 x 690 x 1075', '1390', '124.6 CC', '四衝,二閥,強制空冷', '100/90 10', '100/90 10', '119.0 kg', '碟煞', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 31, 1),
(32, '金發財 125 七期 ABS', '金發財 125', 84000, '1910 x 690 x 1075', '1390', '124.6 CC', '四衝,二閥,強制空冷', '100/90-10', '100/90-10', '119.0 kg', '碟煞+ABS', 'φ205', '鼓煞', '鋁圈', '鋁圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 31, 1),
(33, '野狼傳奇 125', '野狼傳奇', 78500, '1900 x 785 x 1055', '1220', '124 CC', '四衝,二閥,強制氣冷', '2.75-18 42P', '3.00-17 45P', '125.0 kg', '碟煞', 'φ240', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 4', '12 V 10W × 4', '機械式', '三合一中控鎖', '', '', NULL, '125cc_150cc', 33, 1),
(34, '野狼 125 六期', '野狼', 75000, '1887 x 756 x 1092', '1214', '124 CC', '四衝,二閥,氣冷', '2.75-18', '3.00-17', '120.0 kg', '鼓煞', 'φ140', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 1', '12 V 5W / 21W × 1', '12 V 10W × 4', '12 V 10W × 4', '機械式', '三合一中控鎖', '', '', '', NULL, '125cc_150cc', 34, 1),
(35, 'FIDDLE LT ZRSG+CBS版', 'FIDDLE LT', 73800, '1780 x 690 x 1065', '1250', '115.6 CC', '四衝,二閥,強制氣冷', '90/90-10', '90/90-10', '99.0 kg', '碟煞', 'φ180', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 35, 1),
(36, 'FIDDLE LT ZRSG+ABS版', 'FIDDLE LT', 79800, '1780 x 690 x 1065', '1250', '115.6 CC', '四衝,二閥,強制氣冷', '90/90-10', '90/90-10', '99.0 kg', '碟煞+ABS', 'φ180', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', 'LED', 'LED', '12 V 10W × 2', '12 V 10W × 2', '液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 35, 1),
(37, 'WOO 鼓煞(全時點燈)', 'WOO', 52000, '', '1248', '101 CC', '四衝,二閥,強制空冷', '90/90 10', '90/90 10', '99.0 kg', '鼓煞', 'φ110', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 2', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 37, 1),
(38, 'WOO 115 鼓 CBS 七期', 'WOO 115', 58500, '1748 x 652 x 1062', '1250', '115.6 CC', '四衝,二閥,強制氣冷', '90/90-10', '90/90-10', '99.0 kg', '鼓煞', 'φ110', '鼓煞+CBS', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 2', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '機械式 + 液晶式', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '100cc_125cc', 38, 1),
(39, 'e-WOO', 'e-WOO', 40000, '1765 x 625 x 1070', '1245', '', '側掛馬達', '90/90 10', '90/90 10', '80.0 kg', '鼓煞', 'φ110', '鼓煞', '鐵圈', '鐵圈', '12 V 35W / 35W × 1', '12 V 5W × 2', '12 V 5W / 21W × 1', '12 V 10W × 2', '12 V 10W × 2', '', '', '磁石防盜', '中控鎖開啟', NULL, '電動車', 39, 1),
(40, 'JET SL 七期', 'JET SL', 96800, '1815 x 710 x 1100', '1290', '124.6 CC', '四衝,四閥,強制水冷', '110/70-12', '120/70-12', '127.0 kg', '碟煞+ABS', 'φ260', '碟煞+ABS', '鋁圈', '鋁圈', 'LEDx2', 'LED', 'LED', '12 V 16W ×2', '12 V 10W × 2', '液晶式+LED', '七合一中控鎖', '磁石防盜', '中控鎖開啟', NULL, '125cc_150cc', 40, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `motorcycleimg`
--

CREATE TABLE `motorcycleimg` (
  `id` int(11) NOT NULL,
  `mid` int(10) NOT NULL,
  `classname` char(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionColor1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionColor2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionColor3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionColor4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DescriptionColor5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `motorcycleimg`
--

INSERT INTO `motorcycleimg` (`id`, `mid`, `classname`, `color1`, `DescriptionColor1`, `color2`, `DescriptionColor2`, `color3`, `DescriptionColor3`, `color4`, `DescriptionColor4`, `color5`, `DescriptionColor5`, `banner`) VALUES
(1, 1, '', '白X158.png', '白  X158', '灰(消光) X156.png', '灰(消光) X156', '藍(消光)  X157.png', '藍(消光)  X157', '', '', '', '', 'Banner.png'),
(2, 2, '', '白 X216.png', '白 X216', '灰(消光) X217.png', '灰(消光) X217', '', '', '', '', '', '', 'Banner.jpg'),
(3, 3, '', '白  W001.png', '白  W001', '藍(消光) W002.png', '藍(消光) W002', '黑(消光)  W003.png', '黑(消光)  W003', '', '', '', '', 'Banner.jpg'),
(4, 4, '', '黑(消光) X351.png', '黑(消光) X351', '白  X352.png', '白  X352', '', '', '', '', '', '', 'Banner.jpg'),
(5, 5, '', '黑 Z721.png', '黑/黑 Z721', '', '', '', '', '', '', '', '', 'Banner.jpg'),
(7, 6, '', '黑 Z528.png', '黑 Z528', '', '', '', '', '', '', '', '', 'Banner.png'),
(8, 7, '', '藍(消光) V906.png', '藍(消光) V906', '白 V907.png', '白 V907', '綠  V908.png', '綠  V908', '', '', '', '', 'Banner.png'),
(9, 8, 'CBS', '綠灰(消光) AM618.png', '綠/灰(消光) AM618', '藍灰(消光) AM619.png', '藍/灰(消光) AM619', '', '', '', '', '', '', 'Banner.png'),
(10, 11, 'ABS', '藍灰(消光) AM616.png', '藍/灰(消光) AM616', '綠灰(消光) AM615.png', '綠/灰(消光) AM615', '銀灰(消光) AM617.png', '銀/灰(消光) AM617', '', '', '', '', 'Banner.png'),
(11, 10, '七期碟煞', '藍 AM810.png', '藍 AM810', '黑 AM808.png', '黑 AM808', '', '', '', '', '', '', 'Banner.jpg'),
(12, 14, 'ABS', '金(消光)灰 AM612.png', '金(消光)/灰 AM612', '灰(消光)紅(消光) AM613.png', '灰(消光)/紅(消光) AM613', '白 AM614.png', '白 AM614', '', '', '', '', 'Banner.png'),
(13, 13, 'CBS', '金(消光)灰 AM620.png', '金(消光)/灰 AM620', '灰(消光)紅(消光) AM621.png', '灰(消光)/紅(消光) AM621', '白 AM622.png', '白 AM622', '', '', '', '', 'Banner.png'),
(14, 15, '七期ABS', '綠 AM219.png', '綠 AM219', '藍 AM216.png', '藍 AM216', '深灰(消光) AM217.png', '深灰(消光) AM217', '', '', '', '', 'Banner.png'),
(15, 16, 'JET 雙碟ABS版(全時點燈)', '灰(消光)紅 AL686.png', '灰(消光)/紅 AL686', '白/紅 AL688.png', '白/紅 AL688', '', '', '', '', '', '', 'Banner.png'),
(16, 40, '七期 ABS', '紫(消光)黑 AM500.png', '紫(消光)/黑 AM500', '白黑  AM501.png', '白/黑  AM501', '粉紅黑 AM502.png', '粉紅/黑 AM502', '綠(消光)黑 AM503.png', '綠(消光)/黑 AM503', '', '', 'Banner.png'),
(17, 17, 'JET SR ABS', '灰(消光)綠 AL697.png', '灰(消光)/綠 AL697', '白粉紅 AL695.png', '白/粉紅 AL695', '灰(消光)淺棕 AL698.png', '灰(消光)/淺棕 AL698', '', '', '', '', 'Banner.png'),
(18, 18, 'VEGA CBS 七期', '灰淺藍(消光) AM287.png', '灰/淺藍(消光) AM287', '白 AM285.png', '白 AM285', '黑黑(消光) AM286.png', '黑/黑(消光) AM286', '', '', '', '', 'Banner.png'),
(19, 19, 'VEGA ABS七期', '白 AM288.png', '白 AM288', '黑黑(消光) AM289.png', '黑/黑(消光) AM289', '灰淺藍(消光) AM290.png', '灰/淺藍(消光) AM290', '', '', '', '', 'Banner.png'),
(20, 20, 'Z1 attila 雙碟ABS 七期', '藍(消光) AM046.png', '藍(消光) AM046', '黑 AM047.png', '黑 AM047', '白 AM048.png', '白 AM048', '', '', '', '', 'Banner.png'),
(21, 21, '七期雙碟CBS', '灰(消光) AM055.png', '灰(消光) AM055', '白 AM057.png', '白 AM057', '', '', '', '', '', '', 'Banner.png'),
(22, 22, '七期鼓煞CBS', '灰色(消光) AL965.png', '灰色(消光) AL965', '藍色 AL968.png', '藍色 AL968', '', '', '', '', '', '', 'Banner.png'),
(23, 23, '碟煞CBS', '灰(消光) AL936.png', '灰(消光) AL936', '藍 AL938.png', '藍 AL938', '', '', '', '', '', '', 'Banner.png'),
(24, 24, '七期碟煞CBS', '灰(消光) AL995.png', '灰(消光) AL995', '灰 AL996.png', '灰 AL996', '藍 AL998.png', '藍 AL998', '', '', '', '', 'Banner.png'),
(25, 25, '七期ABS', '灰(消光灰) AL989.png', '灰(消光灰) AL989', '灰 AL990.png', '灰 AL990', '藍 AL992.png', '藍 AL992', '', '', '', '', 'Banner.png'),
(26, 26, 'ABS', '灰(消光) AL931.png', '灰(消光) AL931', '', '', '', '', '', '', '', '', 'Banner.png'),
(27, 27, '鼓煞CBS', '藍 AM306.png', '藍 AM306', '灰 AM308.png', '灰 AM308', '紅 AM307.png', '紅 AM307', '', '', '', '', 'Banner.png'),
(28, 28, '七期鼓煞CBS', '藍色 AM310.png', '藍色 AM310', '灰色 AM311.png', '灰色 AM311', '紫色 AM312.png', '紫色 AM312', '', '', '', '', 'Banner.png'),
(29, 29, '七期碟煞CBS', '藍 AL961.png', '藍 AL961', '灰 AL962.png', '灰 AL962', '白 AL960.png', '白 AL960', '', '', '', '', 'Banner.png'),
(30, 30, '七期ABS', '灰 AL956.png', '灰 AL956', '藍 AL955.png', '藍 AL955', '', '', '', '', '', '', 'Banner.png'),
(31, 31, '七期碟煞', '藍 AM803.png', '藍 AM803', '黑 AM801.png', '黑 AM801', '', '', '', '', '', '', 'Banner.jpg'),
(32, 32, '七期ABS', '藍 AM807.png', '藍 AM807', '黑 AM805.png', '黑 AM805', '', '', '', '', '', '', 'Banner.jpg'),
(33, 33, '', '藍黑  Z135.png', '藍/黑  Z135', '黑(消光)黑  Z137.png', '黑(消光)/黑  Z137', '', '', '', '', '', '', 'Banner.jpg'),
(34, 34, '', '紅 Z357.png', '紅 Z357', '藍 Z358.png', '藍 Z358', '', '', '', '', '', '', 'Banner.jpg'),
(35, 35, '七期 FIDDLE LT CBS ZRSG', '白 AF670.png', '白 AF670', '灰(消光) AF671.png', '灰(消光) AF671', '粉紅 AF672.png', '粉紅 AF672', '', '', '', '', 'Banner.png'),
(36, 36, '七期 FIDDLE LT ABS ZRSG', '灰(消光) AF668.png', '灰(消光) AF668', '白 AF667.png', '白 AF667', '', '', '', '', '', '', 'Banner.png'),
(37, 37, 'WOO 鼓剎 (全時點燈)', '銀 AF513.png', '銀 AF513', '紫 AF514.png', '紫 AF514', '藍 AF516.png', '藍 AF516', '', '', '', '', 'Banner.png'),
(38, 37, 'WOO 鼓剎 (全時點燈) 2020版本', '藍 AF516.png', '藍 AF516', '', '', '', '', '', '', '', '', 'Banner.png'),
(39, 38, '鼓 CBS 七期', '銀 AF520.png', '銀 AF520', '紅  AF522.png', '紅  AF522', '淺棕 AF523.png', '淺棕 AF523', '玫瑰金(消光限量) AF525.png', '玫瑰金(消光/限量) AF525', '', '', 'Banner.png'),
(40, 39, '', '銀  G326.png', '銀  G326', '藍  G327.png', '藍  G327', '', '', '', '', '', '', 'Banner.jpg');

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
(1, '測試標題1', '測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1測試內容1', '2021-04-19 15:20:32', '', '', '', ''),
(2, '測試標題2', '測試內容2', '2021-04-22 15:22:15', '', '', '', ''),
(3, '測試標題3', '測試內容3', '2021-04-26 15:23:06', 'image/product.png', '', '', ''),
(4, '測試標題4', '測試內容4', '2021-04-27 09:43:11', '', '', '', ''),
(5, '測試標題5', '測試內容5', '2021-04-05 09:12:26', '', '', '', ''),
(6, '測試標題6', '測試內容6', '2021-04-14 15:20:32', '', '', '', ''),
(7, '測試標題7', '測試內容7', '2021-04-26 15:22:15', '', '', '', ''),
(8, '測試標題8', '測試內容8', '2021-04-14 15:23:06', 'image/product.png', '', '', ''),
(9, '測試標題9', '測試內容9', '2021-04-30 09:43:11', '', '', '', ''),
(10, '測試標題10', '測試內容10', '2021-04-19 09:12:26', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `orderdata`
--

CREATE TABLE `orderdata` (
  `id` int(11) NOT NULL,
  `tracking_number` text COLLATE utf8_unicode_ci NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `p_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_number` tinyint(4) NOT NULL,
  `p_color` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `p_price` int(50) NOT NULL,
  `p_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL DEFAULT '未付款'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `orderdata`
--

INSERT INTO `orderdata` (`id`, `tracking_number`, `username`, `p_name`, `p_number`, `p_color`, `p_price`, `p_remark`, `date`, `status`) VALUES
(5, '2021050257240', 'test222', 'Z1 attila 雙碟 ABS 七期', 1, '藍(消光) AM046', 84000, '', '2021-05-02 13:07:28', '未付款'),
(6, '2021050212393', 'test222', 'Z1 attila 雙碟 CBS 七期', 2, '灰(消光) AM055', 75000, '', '2021-05-02 13:24:31', '未付款'),
(7, '2021050212393', 'test222', 'Joymax Z', 1, '灰(消光) X156', 156800, '', '2021-05-02 13:24:31', '未付款'),
(8, '2021050293611', 'test222', 'Joymax Z', 1, '藍(消光)  X157', 156800, '', '2021-05-02 13:25:12', '未付款'),
(9, '2021050293611', 'test222', 'VIVO 125 CBS 七期', 2, '灰 AL962', 62500, '', '2021-05-02 13:25:12', '未付款'),
(10, '2021050214260', 'test222', 'MAXSYM TL', 1, '黑(消光)  W003', 268000, '10807000707000', '2021-05-02 17:40:35', '未付款'),
(11, '2021050214260', 'test222', 'VIVO 125 CBS 七期', 3, '藍 AL961', 62500, '1140007008000000080', '2021-05-02 17:40:35', '未付款'),
(12, '2021051021356', 'test222', '野狼 T2 ABS', 1, '黑 Z528', 161000, '', '2021-05-10 08:57:07', '未付款'),
(13, '2021051081467', 'test222', '金發財 150 七期', 1, '黑 AM808', 84000, '', '2021-05-10 09:56:20', '未付款'),
(14, '2021051081467', 'test222', 'MAXSYM TL', 1, '白  W001', 268000, '', '2021-05-10 09:56:20', '未付款'),
(15, '2021051036650', 'test333', 'JET SR ABS 七期', 1, '白粉紅 AL695', 88000, '782782727', '2021-05-10 09:58:25', '未付款'),
(16, '2021051036650', 'test333', 'DRGBT', 1, '白 V907', 105000, '4042057', '2021-05-10 09:58:25', '未付款'),
(17, '2021051012027', 'test333', 'MAXSYM 七期', 1, '灰(消光) X217', 208000, '', '2021-05-10 10:04:49', '未付款'),
(18, '2021051173254', 'test222', 'CRUiSYM', 1, '黑(消光) X351', 196000, '', '2021-05-11 11:56:20', '未付款');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(15) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `idNumber` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `idNumber`, `phone`, `email`, `address`, `date`) VALUES
(1, 'test', '12345678', '測試用戶', 'v153674897', '0971880546', 'testemail01@gmail.com', '測試地址', '2021-04-21 21:00:01'),
(2, 'test123', 'test1234', '測試用戶2', 'A232341884', '0974571927', 'testmail02@gmail.com', '  測試地址2', '0000-00-00 00:00:00'),
(3, 'test222', 'test222', '測試用戶3', 'B232341884', '0918121462', 'testmail03@gmail.com', '  測試地址', '2021-04-21 23:10:19'),
(4, 'test333', 'test333', '測試用戶4', 'B232341885', '0918128888', 'testmail04@gmail.com', '  測試地址4', '2021-04-21 23:02:57'),
(5, 'test8888', 'test888', '測試用戶5', 'G148489136', '0977508271', 'testmail05@gmail.com', '  AAA', '2021-04-22 21:32:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `motorcycledata`
--
ALTER TABLE `motorcycledata`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `motorcycleimg`
--
ALTER TABLE `motorcycleimg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orderdata`
--
ALTER TABLE `orderdata`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `motorcycledata`
--
ALTER TABLE `motorcycledata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `motorcycleimg`
--
ALTER TABLE `motorcycleimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderdata`
--
ALTER TABLE `orderdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `motorcycleimg`
--
ALTER TABLE `motorcycleimg`
  ADD CONSTRAINT `motorcycleimg_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `motorcycledata` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
