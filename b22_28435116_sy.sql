-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： sql303.byetcluster.com
-- 產生時間： 2021 年 05 月 16 日 21:03
-- 伺服器版本： 5.6.48-88.0
-- PHP 版本： 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `b22_28435116_sy`
--

-- --------------------------------------------------------

--
-- 資料表結構 `addressee`
--

CREATE TABLE `addressee` (
  `AddId` int(11) NOT NULL,
  `Account` varchar(30) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Telephone` varchar(12) NOT NULL,
  `Address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `addressee`
--

INSERT INTO `addressee` (`AddId`, `Account`, `Name`, `Telephone`, `Address`) VALUES
(3, 'aws35797918', '梁晟軒', '0939198399', '五權南路334巷9號'),
(4, 'aws35797918', '123', '456', '789'),
(6, 'aws35797918', '777', '888', '999'),
(7, 'aws35797918', '收件人', '電話', '地址'),
(8, '00000000', '梁晟軒', '0939198399', '彰化縣鹿港鎮彰鹿路8段12號'),
(9, '00000000', '1', '2', '3'),
(10, 'she860918', '蔡雯珍', '0976450548', '台中市南區五權南路334巷9號');

-- --------------------------------------------------------

--
-- 資料表結構 `buycar`
--

CREATE TABLE `buycar` (
  `Account` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Color` varchar(12) NOT NULL,
  `Memory` varchar(8) NOT NULL,
  `Count` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `buycar`
--

INSERT INTO `buycar` (`Account`, `Phone`, `Color`, `Memory`, `Count`, `Price`) VALUES
('Aws35797918', 'SAMSUNG Galaxy A52 5G', '晶藍豆豆', '256', 1, 12050);

-- --------------------------------------------------------

--
-- 資料表結構 `buyform`
--

CREATE TABLE `buyform` (
  `BuyNum` int(11) NOT NULL,
  `BuyId` varchar(20) NOT NULL,
  `Account` varchar(30) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Telephone` varchar(12) NOT NULL,
  `Address` text NOT NULL,
  `DTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `buyform`
--

INSERT INTO `buyform` (`BuyNum`, `BuyId`, `Account`, `Name`, `Telephone`, `Address`, `DTime`) VALUES
(2, 'sy00000023', 'aws35797918', '梁晟軒', '0939198399', '五權南路334巷9號', '2021-05-15 21:26:08'),
(3, 'sy00000024', 'aws35797918', '梁晟軒', '0939198399', '五權南路334巷9號', '2021-05-15 21:27:05'),
(4, 'sy00000025', '00000000', '梁晟軒', '0939198399', '彰化縣鹿港鎮彰鹿路8段12號', '2021-05-16 01:14:37'),
(0, 'sy00000026', 'she860918', '蔡雯珍', '0976450548', '台中市南區五權南路334巷9號', '2021-05-16 17:28:31');

-- --------------------------------------------------------

--
-- 資料表結構 `buyhistory`
--

CREATE TABLE `buyhistory` (
  `BuyId` varchar(20) NOT NULL,
  `Account` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Color` varchar(12) NOT NULL,
  `Memory` varchar(8) NOT NULL,
  `Count` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `DTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `buyhistory`
--

INSERT INTO `buyhistory` (`BuyId`, `Account`, `Phone`, `Color`, `Memory`, `Count`, `Price`, `DTime`) VALUES
('sy00000023', 'aws35797918', 'SAMSUNG Galaxy S21 Ultra 5G', '星魅白', '256', 1, 27900, '2021-05-15 21:26:08'),
('sy00000024', 'aws35797918', 'SAMSUNG Galaxy A42 5G', '絢幻白', '8/128', 8, 9550, '2021-05-15 21:27:05'),
('sy00000025', '00000000', 'SAMSUNG Galaxy A52 5G', '沁白豆豆', '256', 1, 12050, '2021-05-16 01:14:37'),
('sy00000026', 'she860918', 'Apple iPhone 12 mini', '紫', '128', 1, 25500, '2021-05-16 17:28:31');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `Mno` int(11) NOT NULL,
  `Account` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`Mno`, `Account`, `Password`, `Email`) VALUES
(1, 'aws35797918', 'czc3NjYwMDY=', 'aws35797918@gmail.com'),
(2, 'admin', 'YWRtaW4xMjM=', 'admin123@123.456'),
(3, '00000000', 'MDAwMDAwMDA=', '000@0000.000'),
(4, 'admin0315', 'YWRtaW4wMzE1', 'aws35797918@gmail.com'),
(0, 'she860918', 'YTc3MDA5NzU=', 'a0976450548@gmail.com');

-- --------------------------------------------------------

--
-- 資料表結構 `memberlike`
--

CREATE TABLE `memberlike` (
  `LikeId` int(11) NOT NULL,
  `Account` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `memberlike`
--

INSERT INTO `memberlike` (`LikeId`, `Account`, `Phone`) VALUES
(64, 'aws35797918', 'SAMSUNG Galaxy S21 Ultra 5G'),
(65, 'aws35797918', 'OPPO Reno4 5G'),
(84, 'aws35797918', 'Apple iPhone 12 mini'),
(85, 'aws35797918', 'Sony Xperia 10 II'),
(86, 'aws35797918', 'SAMSUNG Galaxy A52 5G'),
(87, 'aws35797918', 'SAMSUNG Galaxy A42 5G'),
(88, 'aws35797918', 'SAMSUNG Galaxy A42 5G'),
(89, '00000000', 'SAMSUNG Galaxy A42 5G'),
(90, '00000000', 'SAMSUNG Galaxy A52 5G'),
(91, 'she860918', 'Apple iPhone 12 mini');

-- --------------------------------------------------------

--
-- 資料表結構 `phonebrand`
--

CREATE TABLE `phonebrand` (
  `Number` int(11) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Brand` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `phonebrand`
--

INSERT INTO `phonebrand` (`Number`, `Phone`, `Brand`) VALUES
(32, 'SAMSUNG Galaxy A52 5G', 'Samsung'),
(33, 'SAMSUNG Galaxy A42 5G', 'Samsung'),
(34, 'SAMSUNG Galaxy S21 Ultra 5G', 'Samsung'),
(35, 'Apple iPhone 12', 'Apple'),
(36, 'Apple iPhone 12 Pro Max', 'Apple'),
(37, 'Apple iPhone 12 Pro', 'Apple'),
(38, 'Apple iPhone 12 mini', 'Apple'),
(39, 'OPPO Reno5 5G', 'OPPO'),
(40, 'OPPO A73 5G', 'OPPO'),
(41, 'OPPO Reno4 5G', 'OPPO'),
(42, 'OPPO A53', 'OPPO'),
(43, 'Sony Xperia 10 II', 'Sony'),
(44, 'Sony Xperia 1 II', 'Sony'),
(45, 'Sony Xperia 5 II', 'Sony'),
(46, 'realme X3', 'realme'),
(47, 'realme X50', 'realme'),
(48, 'realme 7 5G', 'realme'),
(49, 'vivo X60 Pro', 'VIVO'),
(50, 'vivo X50 Pro', 'VIVO'),
(51, 'Apple iPhone 11 Pro', 'Apple');

-- --------------------------------------------------------

--
-- 資料表結構 `phonecolor`
--

CREATE TABLE `phonecolor` (
  `Phone` varchar(30) NOT NULL,
  `ColorNum` int(11) NOT NULL,
  `Color` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `phonecolor`
--

INSERT INTO `phonecolor` (`Phone`, `ColorNum`, `Color`) VALUES
('Apple iPhone 12 Pro Max', 4, '銀'),
('Apple iPhone 12 Pro Max', 4, '石墨'),
('Apple iPhone 12 Pro Max', 4, '金'),
('Apple iPhone 12 Pro Max', 4, '太平洋藍'),
('Apple iPhone 12 Pro', 4, '太平洋藍'),
('Apple iPhone 12 Pro', 4, '石墨'),
('Apple iPhone 12 Pro', 4, '銀'),
('Apple iPhone 12 Pro', 4, '金'),
('Apple iPhone 12', 6, '紫'),
('Apple iPhone 12', 6, '藍'),
('Apple iPhone 12', 6, '白'),
('Apple iPhone 12', 6, '黑'),
('Apple iPhone 12', 6, '綠'),
('Apple iPhone 12', 6, '紅'),
('Apple iPhone 12 mini', 6, '紫'),
('Apple iPhone 12 mini', 6, '白'),
('Apple iPhone 12 mini', 6, '黑'),
('Apple iPhone 12 mini', 6, '紅'),
('Apple iPhone 12 mini', 6, '綠'),
('Apple iPhone 12 mini', 6, '藍'),
('SAMSUNG Galaxy A52 5G', 4, '炫紫豆豆'),
('SAMSUNG Galaxy A52 5G', 4, '潮黑豆豆'),
('SAMSUNG Galaxy A52 5G', 4, '沁白豆豆'),
('SAMSUNG Galaxy A52 5G', 4, '晶藍豆豆'),
('SAMSUNG Galaxy A42 5G', 3, '絢幻黑'),
('SAMSUNG Galaxy A42 5G', 3, '絢幻白'),
('SAMSUNG Galaxy A42 5G', 3, '絢幻灰'),
('SAMSUNG Galaxy S21 Ultra 5G', 4, '星魅灰'),
('SAMSUNG Galaxy S21 Ultra 5G', 4, '星魅白'),
('SAMSUNG Galaxy S21 Ultra 5G', 4, '星魅粉'),
('SAMSUNG Galaxy S21 Ultra 5G', 4, '星魅紫'),
('OPPO Reno5 5G', 2, '星夜黑'),
('OPPO Reno5 5G', 2, '幻彩銀'),
('OPPO A73 5G', 2, '紅'),
('OPPO A73 5G', 2, '黑'),
('OPPO Reno4 5G', 3, '紫'),
('OPPO Reno4 5G', 3, '藍'),
('OPPO Reno4 5G', 3, '黑'),
('OPPO A53', 2, '能量黑'),
('OPPO A53', 2, '異想藍'),
('Sony Xperia 1 II', 3, '耀黑'),
('Sony Xperia 1 II', 3, '羽白'),
('Sony Xperia 1 II', 3, '鏡紫'),
('Sony Xperia 10 II', 4, '薄荷綠'),
('Sony Xperia 10 II', 4, '黑色'),
('Sony Xperia 10 II', 4, '藍色'),
('Sony Xperia 10 II', 4, '白色'),
('Sony Xperia 5 II', 4, '療癒黑'),
('Sony Xperia 5 II', 4, '玫蜜粉'),
('Sony Xperia 5 II', 4, '淨透藍'),
('Sony Xperia 5 II', 4, '靜謐灰'),
('realme X3', 2, '冰川藍'),
('realme X3', 2, '極地白'),
('realme X50', 2, '仙蹤(綠)'),
('realme X50', 2, '極地(藍)'),
('realme 7 5G', 2, '破曉之光(藍)'),
('realme 7 5G', 2, '青出於藍(綠)'),
('vivo X60 Pro', 2, '迷霧黑'),
('vivo X60 Pro', 2, '冰極光'),
('vivo X50 Pro', 1, '阿爾法灰'),
('Apple iPhone 11 Pro', 4, '夜幕綠'),
('Apple iPhone 11 Pro', 4, '太空灰'),
('Apple iPhone 11 Pro', 4, '金'),
('Apple iPhone 11 Pro', 4, '銀');

-- --------------------------------------------------------

--
-- 資料表結構 `phoneinformation`
--

CREATE TABLE `phoneinformation` (
  `Phone` varchar(30) NOT NULL,
  `OsVer` varchar(16) NOT NULL,
  `ProcessorName` varchar(20) NOT NULL,
  `ScreenSize` float NOT NULL,
  `CameraPixel` int(11) NOT NULL,
  `Ram` int(11) DEFAULT NULL,
  `Rom` int(11) NOT NULL,
  `Battery` int(11) DEFAULT NULL,
  `FiveG` tinyint(1) DEFAULT '0',
  `Detail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `phoneinformation`
--

INSERT INTO `phoneinformation` (`Phone`, `OsVer`, `ProcessorName`, `ScreenSize`, `CameraPixel`, `Ram`, `Rom`, `Battery`, `FiveG`, `Detail`) VALUES
('SAMSUNG Galaxy S21 Ultra 5G', 'Android 11', 'Snapdragon 888', 6.2, 6400, 8, 128, 4000, 1, '錄影功能再升級 SAMSUNG Galaxy S21 5G 128GB\r\n6.2 吋 FHD+ 螢幕\r\nSAMSUNG Galaxy S21 5G 128GB 搭載 6.2 吋 2,400 x 1,080pixels 螢幕，採用 Infinity-O 極限全螢幕設計，結合 Dynamic AMOLED 2X 面板，支援 120Hz 螢幕更新率（48~120Hz 智慧動態調節）；手機正面覆蓋康寧大猩猩 Victus 玻璃，增強螢幕防刮與耐磨防護。\r\n\r\nIP68 防塵防水\r\nSAMSUNG Galaxy S21 5G 128GB 機身使用塑料材質設計，擁有繽紛多彩的顏色款式可選；支援 IP68 防塵防水等級，為手機防護得到更進一步的保障。內建 4,000mAh，支援 25W 閃電快充 2.0、15W 無線閃充 2.0、15W 無線電力分享功能。\r\n\r\n高通驍龍 888\r\nSAMSUNG Galaxy S21 5G 128GB 運行 Android 11 作業系統、One UI 3.1 操作介面，搭載 5nm 製程的 Qualcomm Snapdragon 888 行動平台，內建 8GB RAM + 128GB ROM，支援 5G + 4G 雙卡雙待、SA / NSA 組網（SA 部分未來將透過軟體更新後提供）；具備高通第二代超聲波螢幕指紋辨識功能。\r\n\r\n一鍵拍錄 2.0\r\nSAMSUNG Galaxy S21 5G 128GB 後置三鏡頭主相機，分別為 6,400 萬畫素遠距 + 1,200 萬畫素 120 度超廣角 + 1,200 萬畫素鏡頭，支援一鍵拍錄 2.0，可最多捕捉 10 張不同鏡頭照片 + 4 段影片。前鏡頭採用 1,000 萬畫素，支援臉部辨識功能。\r\n\r\n3 倍混合光學變焦\r\nSAMSUNG Galaxy S21 5G 128GB 支援 3 倍混合光學變焦 + 30 倍數位變焦功能，導入全新的 8K 影片快拍、導演運鏡，提供 Nona-binning 夜拍技術；新增直播錄影模式，前後鏡頭可同時錄製影片，輕鬆拍攝完美 Vlog 影片。\r\n\r\nSAMSUNG Galaxy S21 5G 128GB 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 11 作業系統、One UI 3.1 操作介面\r\n◎ 6.2 吋 2,400 x 1,080pixels 解析度 Dynamic AMOLED 2X 螢幕（120Hz 螢幕更新率）\r\n◎ Qualcomm Snapdragon 888 八核心處理器\r\n◎ 8GB RAM + 128GB ROM\r\n◎ 前置 1,000 萬畫素鏡頭\r\n◎ 後置 6,400 萬畫素 + 1,200 萬畫素 + 1,200 萬畫素主相機\r\n◎ Wi-Fi 6、藍牙 5.0、NFC\r\n◎ 支援 Samsung Pay、Samsung DeX\r\n◎ 超聲波螢幕指紋辨識、臉部解鎖\r\n◎ 配備 4,000mAh 電池\r\n◎ 採用 USB Type-C 規格，支援 25W 閃電快充 2.0、15W 無線閃充 2.0、15W 無線電力分享\r\n◎ 盒裝配件：手機本體、電源充電器、USB Type-C 數據線、SIM 卡插針'),
('SAMSUNG Galaxy A52 5G', 'Android 11', 'Snapdragon 750G', 6.5, 6400, 6, 128, 4500, 1, '6.5 吋 120Hz 螢幕 SAMSUNG Galaxy A52 5G 128GB\r\nInfinity-O 全螢幕設計\r\nSAMSUNG Galaxy A52 5G 採用 6.5 吋 FHD+ Super AMOLED 螢幕，結合 Infinity-O 全螢幕設計，提供寬廣的視覺體驗，支援最高 120Hz 螢幕更新率，能帶來極度滑順的操作體驗。支援光學螢幕指紋辨識，導入 Secured by Knox 技術，確保個人隱私不輕易外洩。\r\n\r\nIP67 防塵防水\r\nSAMSUNG Galaxy A52 5G 採用全新的外型設計，擁有多種顏色款式可供選擇，機身具備 IP67 防塵防水等級，能夠抵禦日常生活的用水場合；搭載 Dolby Atmos 立體聲雙揚聲器，可提供高品質的聽覺體驗。\r\n\r\n4,500mAh 電池\r\nSAMSUNG Galaxy A52 5G 搭載 Qualcomm Snapdragon 750G, 2.2GHz + 1.8GHz 八核心處理器，內建 6GB RAM / 128GB ROM，採用三選二 Nano SIM 卡槽，支援 5G + 4G 雙卡雙待，可透過 MicroSD 記憶卡擴充 1TB 儲存空間。配備 4,500mAh 電池，支援 25W 閃電快充功能。\r\n\r\nOne UI 3.1 操作介面\r\nSAMSUNG Galaxy A52 5G 運行 Android 11 作業系統、One UI 3.1 操作介面，具備 AI 智慧藍光調節，通過 SGS 的 Eye Care Certification 認證，支援音樂分享功能。另外，Galaxy A52 5G 還能學習用戶使用習慣，有效延長手機續航表現。\r\n\r\n6,400 萬畫素四鏡頭\r\nSAMSUNG Galaxy A52 5G 後置四鏡頭主相機，分別為 6,400 萬畫素主鏡頭（OIS 光學防手震、F1.8 光圈）+ 1,200 萬畫素 123 度超廣角（F2.2 光圈）+ 500 萬畫素景深（F2.4 光圈）+ 500 萬畫素微距（F2.4 光圈）鏡頭，支援 30 種 AI 場景辨識、夜景模式、AR Emoji 功能，還可錄製 4K 影片並從中擷取 800 萬畫素圖片；前置 3,200 萬畫素鏡頭（F2.2 光圈），支援臉部解鎖功能。\r\n\r\nSAMSUNG Galaxy A52 5G 128GB 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 11 作業系統、One UI 3.1 操作介面\r\n◎ 6.5 吋 FHD+ Super AMOLED 螢幕（120Hz 更新率）\r\n◎ Qualcomm Snapdragon 750G, 2.2GHz + 1.8GHz 八核心處理器\r\n◎ 6GB RAM / 128GB ROM\r\n◎ 前置 3,200 萬畫素鏡頭\r\n◎ 後置 6,400 萬畫素 + 1,200 萬畫素 + 500 萬畫素 + 500 萬畫素\r\n◎ Wi-Fi 5、藍牙 5.0\r\n◎ 臉部辨識、光學螢幕指紋辨識\r\n◎ IP67 防塵防水\r\n◎ 配備 4,500mAh 電池\r\n◎ 採用 USB Type-C 規格，支援 25W 閃電快充\r\n◎ 支援 microSD 記憶卡擴充 1TB 儲存空間\r\n◎ 盒裝配件：手機本體、電源充電器、USB Type-C 數據線、清水保護殼、SIM 卡插針'),
('SAMSUNG Galaxy A42 5G', 'Android 10', 'Snapdragon 750G', 6.6, 4800, 6, 128, 5000, 1, 'SAMSUNG Galaxy A42 5G 搭載 6.6 吋 Infinity-U 無邊際螢幕 \r\n光學螢幕指紋辨識\r\nSAMSUNG Galaxy A42 5G (6GB/128GB) 配備 6.6 吋 1,600 x 720pixels 解析度 Super AMOLED 螢幕，採用 Infinity-U 無邊際全螢幕設計，以 20：9 顯示比例搭配窄邊框，無論追劇、手遊，都提供更廣闊的視野；並導入光學螢幕指紋辨識，有效保障個人隱私安全。\r\n\r\n橫向幾何背蓋\r\nSAMSUNG Galaxy A42 5G (6GB/128GB) 提供「絢幻白」、「絢幻灰」、「絢幻黑」三種顏色款式，機身採用四段式橫向幾何設計，以類玻璃材質打造漸變色彩炫光效果，提供舒適的握持手感；在電量續航方面，配備 5,000mAh 電池，支援 15W 閃電快充，帶來更持久的續航體驗。\r\n\r\n高通驍龍 750G\r\nSAMSUNG Galaxy A42 5G (6GB/128GB) 內建 8nm 製程 Qualcomm Snapdragon 750G, 2.2GHz + 1.8GHz 八核心處理器、 6GB RAM + 128GB ROM 配置；採用三選二卡插槽設計，支援 5G + 4G 雙卡雙待、藍牙 5.0、NFC 以及 Wi-Fi 5。\r\n\r\n遊戲啟動器\r\nSAMSUNG Galaxy A42 5G (6GB/128GB) 搭載「遊戲啟動器」，在進行手遊時，可透過 AI 智慧演算補幀，搭配杜比全景聲，讓你擁有更流暢的視覺享受，以及絕佳的沉浸式娛樂響宴；加上前置 2,000 萬畫素主鏡頭，具備 AI 人像美顏、AR 貼圖，讓自拍照添加更多生活趣味。\r\n\r\n四鏡頭主相機\r\nSAMSUNG Galaxy A42 5G (6GB/128GB) 後置四鏡頭矩形相機，分別為 4,800 萬畫素 + 800 萬畫素 123 度超廣角 + 500 萬畫素景深 + 500 萬畫素微距主鏡頭，支援 30 種 AI 場景智慧辨識、景深特效、瑕疵檢測、濾鏡效果；具備手繪動態、虛擬人偶、美顏錄影等功能。\r\n\r\nSAMSUNG Galaxy A42 5G (6GB/128GB) 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 10 作業系統，One UI 2.5 操作介面\r\n◎ 6.6 吋 1,600 x 720pixels 解析度 Super AMOLED 螢幕\r\n◎ Qualcomm Snapdragon 750G, 2.2GHz + 1.8GHz 八核心處理器\r\n◎ 6GB RAM / 128GB ROM\r\n◎ 前鏡頭 2,000 萬畫素\r\n◎ 後鏡頭 4,800 萬畫素 + 800 萬畫素 + 500 萬畫素 + 500 萬畫素 \r\n◎ Wi-Fi 802.11 a/b/g/n/ac、藍牙 5.0、NFC\r\n◎ 光學螢幕指紋辨識\r\n◎ 5,000mAh 電量\r\n◎ 採用 USB Type-C 規格，支援 15W 閃電快充\r\n◎ microSD 記憶卡擴充至 1TB 儲存空間\r\n◎ 盒裝配件：手機本體、電源充電器、USB Type-C 數據線、清水保護殼、SIM 卡插針'),
('Apple iPhone 12', 'iOS 14', 'A14 Bionic', 6.1, 1200, 0, 128, 0, 1, 'Apple iPhone 12 128GB 支援 5G 行動上網\r\n6.1 吋 OLED 顯示器\r\nApple iPhone 12 配置 6.1 吋 2,532 x 1,170pixels 解析度超 Retina XDR 顯示器，搭載 OLED 螢幕面板，不僅對比度顯著提升，同時具備 HDR、原彩顯示，讓螢幕表現更上層樓。\r\n\r\n超瓷晶盾面板\r\nApple iPhone 12 採用航太等級鋁金屬邊框設計，結合超瓷晶盾面板與玻璃機背，同時為加強機身防護效果，特別導入奈米級陶瓷晶體，以及雙離子交換製程，提升防刮表現；具備 IP68 防塵防水等級。\r\n\r\nA14 仿生晶片\r\nApple iPhone 12 搭載 A14 仿生晶片，採用新一代神經網路引擎，運行 iOS 14 作業系統，提供 Wi-Fi 6、藍牙 5.0、NFC 等連線功能。支援快速充電功能，具備 15W MagSafe 無線充電、7.5W Qi 無線充電模式。\r\n\r\n5G 上網\r\nApple iPhone 12 具備 5G 上網功能，除了能夠串流播放更高畫質的影片，享受超低延遲的多人連線遊戲體驗外，搭配智慧型數據模式，可在 iPhone 進行背景更新時，自動切換 4G 網路節省電力消耗。\r\n\r\n杜比視界錄製\r\nApple iPhone 12 前置 1,200 萬畫素原深感測相機，提供智慧型 HDR 3 場景偵測功能，擁有人像模式，具備 Face ID 臉部辨識。後置 1,200 萬畫素廣角 + 1,200 萬畫素 120 度超廣角雙鏡頭，內建夜間攝影模式，支援即時杜比視界錄製，享有電影級的畫面表現。\r\n\r\nApple iPhone 12 128GB 功能特色\r\n◎ iOS 14 作業系統\r\n◎ 6.1 吋 2,532 x 1,170pixels 解析度超 Retina XDR 顯示器（OLED 螢幕）\r\n◎ A14 仿生晶片\r\n◎ 128GB ROM\r\n◎ 1,200 萬畫素 + 1,200 萬畫素主鏡頭、1,200 萬畫素前鏡頭\r\n◎ 5G 上網、Wi-Fi 6、藍牙 5.0、NFC\r\n◎ IP68 防水防塵\r\n◎ 支援杜比視界錄製、夜間攝影、智慧型 HDR 3 模式\r\n◎ Face ID 臉部辨識\r\n◎ 支援有線快速充電、15W MagSafe 無線充電、7.5W Qi 無線充電\r\n◎ 採用 Lightning 連接埠'),
('Apple iPhone 12 Pro Max', 'iOS 14', 'A14 Bionic', 6.7, 1200, 0, 128, 0, 1, 'Apple iPhone 12 Pro Max 128GB 新增光學雷達掃描儀\r\n6.7 吋 OLED 顯示器\r\nApple iPhone 12 Pro Max 配置 6.7 吋 2,778 x 1,284pixels 解析度超 Retina XDR 顯示器，搭載 OLED 螢幕面板，不僅對比度顯著提升，同時具備 HDR、原彩顯示，讓螢幕表現更上層樓。\r\n\r\n超瓷晶盾面板\r\nApple iPhone 12 Pro Max 採用醫療級特製不鏽鋼邊框設計，結合超瓷晶盾面板與霧面質感玻璃機背，同時為加強機身防護效果，特別導入奈米級陶瓷晶體，以及雙離子交換製程，提升防刮表現；具備 IP68 防塵防水等級。\r\n\r\nA14 仿生晶片\r\nApple iPhone 12 Pro Max 搭載 A14 仿生晶片，運行 iOS 14 作業系統，提供 Wi-Fi 6、藍牙 5.0、NFC 等連線功能；支援快速充電功能，具備 15W MagSafe 無線充電、7.5W Qi 無線充電模式。内建 ISP 影像訊號處理器，支援「杜比視界」錄製功能。\r\n\r\n5G 上網\r\nApple iPhone 12 Pro Max 具備 5G 上網功能，除了能夠串流播放更高畫質的影片，享受超低延遲的多人連線遊戲體驗外，搭配智慧型數據模式，可在 iPhone 進行背景更新時，自動切換 4G 網路節省電力消耗。\r\n\r\n全新 OIS 影像穩定\r\nApple iPhone 12 Pro Max 前置 1,200 萬畫素原深感測相機，提供智慧型 HDR 3 場景偵測功能，具備 Face ID 臉部辨識。後置 1,200 萬畫素廣角 + 1,200 萬畫素 120 度超廣角 + 1,200 萬畫素望遠三鏡頭，支援 5 倍光學變焦範圍，擁有全新 OIS 感光元件位移式穩定功能，內建夜間攝影模式。\r\n\r\n光學雷達掃描儀\r\nApple iPhone 12 Pro Max 新增光學雷達掃描儀，透過射出隱形光束，測量光束從發射器到物體再回到接收器所需時間，得出絕對深度，可用於即時 AR、精準掌握物體的前後關係，或是加強低光源下的自動對焦速度。\r\n\r\nApple iPhone 12 Pro Max 128GB 功能特色\r\n◎ iOS 14 作業系統\r\n◎ 6.7 吋 2,778 x 1,284pixels 解析度超 Retina XDR 顯示器（OLED 螢幕）\r\n◎ A14 仿生晶片\r\n◎ 128GB ROM\r\n◎ 1,200 萬畫素 + 1,200 萬畫素 + 1,200 萬畫素主鏡頭、1,200 萬畫素前鏡頭\r\n◎ 5G 上網、Wi-Fi 6、藍牙 5.0、NFC\r\n◎ IP68 防水防塵\r\n◎ 支援杜比視界錄製、夜間攝影、智慧型 HDR 3 模式\r\n◎ 全新 OIS 影像穩定、光學雷達掃描儀\r\n◎ Face ID 臉部辨識\r\n◎ 支援有線快速充電、15W MagSafe 無線充電、7.5W Qi 無線充電\r\n◎ 採用 Lightning 連接埠'),
('Apple iPhone 12 Pro', ' iOS 14', 'A14 Bionic', 6.1, 1200, 0, 128, 0, 1, 'Apple iPhone 12 Pro 128GB 新增光學雷達掃描儀\r\n6.1 吋 OLED 顯示器\r\nApple iPhone 12 Pro 配置 6.1 吋 2,532 x 1,170pixels 解析度超 Retina XDR 顯示器，搭載 OLED 螢幕面板，不僅對比度顯著提升，同時具備 HDR、原彩顯示，讓螢幕表現更上層樓。\r\n\r\n超瓷晶盾面板\r\nApple iPhone 12 Pro 採用醫療級特製不鏽鋼邊框設計，結合超瓷晶盾面板與霧面質感玻璃機背，同時為加強機身防護效果，特別導入奈米級陶瓷晶體，以及雙離子交換製程，提升防刮表現；具備 IP68 防塵防水等級。\r\n\r\nA14 仿生晶片\r\nApple iPhone 12 Pro 搭載 A14 仿生晶片，運行 iOS 14 作業系統，提供 Wi-Fi 6、藍牙 5.0、NFC 等連線功能；支援快速充電功能，具備 15W MagSafe 無線充電、7.5W Qi 無線充電模式。内建 ISP 影像訊號處理器，支援「杜比視界」錄製功能。\r\n\r\n5G 上網\r\nApple iPhone 12 Pro 具備 5G 上網功能，除了能夠串流播放更高畫質的影片，享受超低延遲的多人連線遊戲體驗外，搭配智慧型數據模式，可在 iPhone 進行背景更新時，自動切換 4G 網路節省電力消耗。\r\n\r\n智慧型 HDR 3 偵測\r\nApple iPhone 12 Pro 前置 1,200 萬畫素原深感測相機，提供智慧型 HDR 3 場景偵測功能，具備 Face ID 臉部辨識。後置 1,200 萬畫素廣角 + 1,200 萬畫素 120 度超廣角 + 1,200 萬畫素望遠三鏡頭，支援 4 倍光學變焦範圍，內建夜間攝影模式。\r\n\r\n光學雷達掃描儀\r\nApple iPhone 12 Pro 新增光學雷達掃描儀，透過射出隱形光束，測量光束從發射器到物體再回到接收器所需時間，得出絕對深度，可用於即時 AR、精準掌握物體的前後關係，或是加強低光源下的自動對焦速度。\r\n\r\nApple iPhone 12 Pro 128GB 功能特色\r\n◎ iOS 14 作業系統\r\n◎ 6.1 吋 2,532 x 1,170pixels 解析度超 Retina XDR 顯示器（OLED 螢幕）\r\n◎ A14 仿生晶片\r\n◎ 128GB ROM\r\n◎ 1,200 萬畫素 + 1,200 萬畫素 + 1,200 萬畫素主鏡頭、1,200 萬畫素前鏡頭\r\n◎ 5G 上網、Wi-Fi 6、藍牙 5.0、NFC\r\n◎ IP68 防水防塵\r\n◎ 支援杜比視界錄製、夜間攝影、智慧型 HDR 3 模式\r\n◎ 全新 OIS 影像穩定、光學雷達掃描儀\r\n◎ Face ID 臉部辨識\r\n◎ 支援有線快速充電、15W MagSafe 無線充電、7.5W Qi 無線充電\r\n◎ 採用 Lightning 連接埠'),
('Apple iPhone 12 mini', 'iOS 14', 'A14 Bionic', 5.4, 1200, 0, 64, 0, 1, 'Apple iPhone 12 mini 64GB 支援 5G 行動上網\r\n5.4 吋 OLED 顯示器\r\nApple iPhone 12 mini 配置 5.4 吋 2,340 x 1,080pixels 解析度超 Retina XDR 顯示器，搭載 OLED 螢幕面板，不僅對比度顯著提升，同時具備 HDR、原彩顯示，讓螢幕表現更上層樓。\r\n\r\n超瓷晶盾面板\r\nApple iPhone 12 mini 採用航太等級鋁金屬邊框設計，結合超瓷晶盾面板與玻璃機背，同時為加強機身防護效果，特別導入奈米級陶瓷晶體，以及雙離子交換製程，提升防刮表現；具備 IP68 防塵防水等級。\r\n\r\nA14 仿生晶片\r\nApple iPhone 12 mini 搭載 A14 仿生晶片，採用新一代神經網路引擎，運行 iOS 14 作業系統，提供 Wi-Fi 6、藍牙 5.0、NFC 等連線功能。支援快速充電功能，具備 15W MagSafe 無線充電、7.5W Qi 無線充電模式。\r\n\r\n5G 上網\r\nApple iPhone 12 mini 具備 5G 上網功能，除了能夠串流播放更高畫質的影片，享受超低延遲的多人連線遊戲體驗外，搭配智慧型數據模式，可在 iPhone 進行背景更新時，自動切換 4G 網路節省電力消耗。\r\n\r\n杜比視界錄製\r\nApple iPhone 12 mini 前置 1,200 萬畫素原深感測相機，提供智慧型 HDR 3 場景偵測功能，擁有人像模式，具備 Face ID 臉部辨識。後置 1,200 萬畫素廣角 + 1,200 萬畫素 120 度超廣角雙鏡頭，內建夜間攝影模式，支援即時杜比視界錄製，享有電影級的畫面表現。\r\n\r\nApple iPhone 12 mini 64GB 功能特色\r\n◎ iOS 14 作業系統\r\n◎ 5.4 吋 2,340 x 1,080pixels 解析度超 Retina XDR 顯示器（OLED 螢幕）\r\n◎ A14 仿生晶片\r\n◎ 64GB ROM\r\n◎ 1,200 萬畫素 + 1,200 萬畫素主鏡頭、1,200 萬畫素前鏡頭\r\n◎ 5G 上網、Wi-Fi 6、藍牙 5.0、NFC\r\n◎ IP68 防水防塵\r\n◎ 支援杜比視界錄製、夜間攝影、智慧型 HDR 3 模式\r\n◎ Face ID 臉部辨識\r\n◎ 支援有線快速充電、15W MagSafe 無線充電、7.5W Qi 無線充電\r\n◎ 採用 Lightning 連接埠'),
('OPPO Reno5 5G', 'Android 11', 'Snapdragon 765G', 6.43, 6400, 8, 128, 4300, 1, 'OPPO Reno5 5G 人像錄影再進化\r\n6.43 吋 90Hz 螢幕\r\nOPPO Reno5 5G 配置 6.43 吋 2,400 x 1,080pixels 解析度 OLED「挖孔」螢幕，支援 1,000,000：1 對比度、螢幕指紋辨識功能；具備 90Hz 螢幕更新率、180Hz 螢幕觸控採樣率，可呈現流暢的視覺表現，同時增強手遊時的觸控反應速度。\r\n\r\nGlow 2.0 星鑽工藝\r\nOPPO Reno5 5G 背蓋導入 Glow 2.0 星鑽工藝，採用規律金字塔晶體結構，帶來排列緊密且覆蓋比例高的更大顆粒，讓機身反光更加通透；搭配膜片疊層工藝，以炫彩層 + 紋理層 + 反光層的多層手法，打造出色彩變化的視覺效果。 \r\n\r\n5G + 4G 雙卡上網\r\nOPPO Reno5 5G 搭載 Qualcomm Snapdragon 765G, 2.4GHz 八核心處理器，內建 8GB RAM + 128GB ROM，提供 5G + 4G 雙卡雙待，具備 SA / NSA 雙模；配備 4,300mAh 電池，具備 65W SuperVOOC 2.0 超級閃充。\r\n\r\n閃電啟動功能\r\nOPPO Reno5 5G 搭載遊戲閃電啟動功能，能快速開啟遊戲，搭配 ColorOS 優化，可讓遊戲後台記憶體占用率壓在 10% 以下；支援手感調節 2.0，能針對不同遊戲自訂螢幕靈敏度與回饋性，擁有防誤觸功能。\r\n\r\nAI 錄影增強技術\r\nOPPO Reno5 5G 後置四鏡頭主相機，分別為 6,400 萬畫素主鏡頭 + 800 萬畫素超廣角+ 200 萬畫素微距 + 200 萬畫素黑白人像鏡頭，具備 AI 錄影增強技術，可將月光夜景與 Live HDR 等算法進行融合，提升低光源環境下的亮度及細節表現。前置 3,200 萬畫素主鏡頭，擁有臉部辨識功能。\r\n\r\nOPPO Reno5 5G 功能特色\r\n◎ Android 11 作業系統、ColorOS 11 操作介面\r\n◎ 5G + 4G 雙卡雙待\r\n◎ 6.43 吋 2,400 x 1,080pixels 解析度 OLED 螢幕\r\n◎ Qualcomm Snapdragon 765G, 2.4GHz 八核心處理器\r\n◎ 8GB RAM / 128GB ROM\r\n◎ 前鏡頭 3,200 萬畫素\r\n◎ 後鏡頭 6,400 萬畫素 + 800 萬畫素 + 200 萬畫素 + 200 萬畫素\r\n◎ 杜比全景聲喇叭\r\n◎ Wi-Fi 5、藍牙 5.1、NFC\r\n◎ 螢幕指紋辨識、臉部辨識\r\n◎ 遊戲閃電、AI 錄影增強\r\n◎ 配置 4,300mAh 電量\r\n◎ 採用 USB Type-C 規格，支援 65W SuperVOOC 2.0 超級閃充\r\n◎ 盒裝配件：65W 電源充電器、USB Type-C 數據線、3.5mm 耳機、TPU 透明保護套、SIM 卡插針'),
('OPPO A73 5G', 'Android 10', 'Dimensity 720', 6.5, 1600, 8, 128, 4040, 1, '6.5 吋 90Hz 螢幕 OPPO A73 5G\r\n90Hz 螢幕更新率\r\nOPPO A73 5G 配備 6.5 吋 FHD+「挖孔」螢幕，具備 90Hz 螢幕更新率、180Hz 觸控採樣率，有效呈現流暢的視覺效果；通過德國萊茵 TUV 藍光護眼認證，具備 AI 智慧調光與護眼模式。電量續航方面，配備 4,040mAh 電池，支援 18W 快充，能幫助手機快速回血。\r\n\r\n類玻璃機身設計\r\nOPPO A73 5G 提供「帛黑」、「霓霞」兩種顏色款式，背蓋採用類玻璃材質打造漸變色彩效果，提供舒適的握持手感。導入一體式側邊指紋辨識，輕觸只需 0.28 秒即可完成手機解鎖，為生活提供更便利的體驗。\r\n\r\n聯發科天璣 720\r\nOPPO A73 5G 內建 7nm 製程 MediaTek Dimensity 720, 2GHz 八核心處理器、8GB RAM + 128GB ROM 配置；支援 5G SA / NSA 雙模，提供 5G + 4G 雙卡雙待功能、藍牙 5.1、NFC 以及 Wi-Fi 5，適用台灣 5G 全頻段（n1 / n3 / n28 / n41 / n78）。\r\n\r\n三鏡頭主相機\r\nOPPO A73 5G 前置 800 萬畫素主鏡頭，提供 AI 智慧美顏、夜景模式、臉部辨識。後置三鏡頭矩形相機，分別為 1,600 萬畫素主鏡頭 + 800 萬畫素 119 度超廣角 + 200 萬畫素人像，支援 15 種濾鏡效果、AI 智慧炫彩、超高畫質夜景拍攝；具備美顏、4K / 30fps 錄影功能。\r\n\r\nOPPO A73 5G 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 10 作業系統，ColorOS 7.2 操作介面\r\n◎ 6.5 吋 2,400 x 1080pixels 解析度螢幕\r\n◎ MediaTek Dimensity 720, 2GHz 八核心處理器\r\n◎ 8GB RAM / 128GB ROM\r\n◎ 前鏡頭 800 萬畫素\r\n◎ 後鏡頭 1,600 萬畫素 + 800 萬畫素 + 200 萬畫素 \r\n◎ Wi-Fi 5、藍牙 5.1、NFC\r\n◎ 一體式側邊指紋辨識\r\n◎ 4,040mAh 電量\r\n◎ 採用 USB Type-C 規格，支援 18W 快充\r\n◎ 盒裝配件：18W 電源充電器、USB Type-C 數據線、3.5mm 耳機、TPU 軟式保護套、SIM 卡插針'),
('OPPO Reno4 5G', 'Android 10', 'Snapdragon 765G', 6.4, 4800, 8, 128, 4020, 1, 'OPPO Reno4 5G 搭載 32MP + 2MP 雙前置鏡頭\r\nAG 玻璃背蓋\r\nOPPO Reno4 5G 配置 6.4 吋 2,400 x 1,080pixels 解析度 AMOLED 螢幕，螢幕左上角設有雙前置鏡頭挖孔，螢幕占比達 90.7%，支援 96% NTSC 色域、800,000：1 對比度，通過德國萊茵 TÜV 低藍光認證，正面覆蓋康寧大猩猩玻璃，有效加強螢幕保護力，具備光學螢幕指紋辨識功能。背蓋採用 AG 玻璃結構設計，不僅擁有防刮耐磨表現，同時兼顧亮麗時尚感受。\r\n\r\n5G + 4G 雙卡上網\r\nOPPO Reno4 5G 運行 Android 10 作業系統、ColorOS 7.2 操作介面，內建 7nm 製程 Qualcomm Snapdragon 765G, 2.4GHz 八核心處理器，採用 8GB LPDDR4x RAM + 128GB UFS2.1 ROM 配置，具備 5G + 4G 雙卡雙待，支援藍牙 5.1、Wi-Fi 與 NFC。搭載立體液冷散熱系統，可快速幫手機降溫；續航方面，配備 4,020mAh 電池，具備 50W SuperVOOC 超級閃充，且通過德國萊茵充電安全認證。\r\n\r\n超級動態夜景\r\nOPPO Reno4 5G 前置 3,200 萬畫素主鏡頭（5P 鏡頭、F2.4 光圈） + 200 萬畫素虛化鏡頭（3P 鏡頭、F2.4 光圈），具備 AI 人像美顏、背景虛化、臉部辨識功能。後置三鏡頭主相機，分別為 4,800 萬畫素主鏡頭（Sony IMX586、6P 鏡頭、F1.7 光圈） + 800 萬畫素 119 度超廣角（5P 鏡頭、F2.2 光圈） + 200 萬畫素微距（3P 鏡頭、F2.4 光圈），支援雷射對焦技術，提供超級動態夜景、Live HDR 錄影，具備超級錄影防手震 3.0、4K 錄影功能。\r\n\r\nOPPO Reno4 5G 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 10 作業系統、ColorOS 7.2 操作介面\r\n◎ 6.4 吋 2,400 x 1,080pixels 解析度 AMOLED 螢幕\r\n◎ Qualcomm Snapdragon 765G, 2.4GHz 八核心處理器\r\n◎ 8GB RAM / 128GB ROM\r\n◎ 前鏡頭 3,200 萬畫素 + 200 萬畫素\r\n◎ 後鏡頭 4,800 萬畫素 + 800 萬畫素 + 200 萬畫素\r\n◎ Wi-Fi、藍牙 5.1、NFC\r\n◎ 螢幕指紋辨識、臉部辨識\r\n◎ 支援 IP54 防塵防水\r\n◎ 4,020mAh 電量\r\n◎ 支援 50W SuperVOOC 超級閃充\r\n◎ 採用 USB Type-C 規格\r\n◎ 盒裝配件：50W 電源充電器、USB Type-C 數據線、USB Type-C 耳機、TPU 透明保護套、SIM 卡插針'),
('OPPO A53', 'Android 10', 'Snapdragon 460', 6.5, 1300, 4, 64, 5000, 0, '90Hz 螢幕更新率 OPPO A53 平價手機\r\n6.5 吋 20：9 螢幕\r\nOPPO A53 配置 6.5 吋 20：9 顯示比例 1,600 x 720pixels 解析度 LCD 護眼靈點全螢幕，支援 90Hz 螢幕更新率、120Hz 螢幕觸控採樣率，左上角設有前鏡頭挖孔，螢幕佔比達 89.2%，具備 AI 智慧調光與護眼模式；背蓋採用 3D 虹彩波紋設計，光線在不同角度照射下，可帶來絢麗的反射光效果。擁有後置指紋辨識器，有效保障個人隱私不輕易外洩。\r\n\r\n5,000mAh 電池\r\nOPPO A53 運行 Android 10 作業系統、ColorOS 7.2 操作介面，內建 Qualcomm Snapdragon 460, 1.8GHz + 1.6GHz 八核心處理器、4GB RAM / 64GB ROM，採用獨立三卡槽，支援 4G + 4G 雙卡雙待，具備藍牙 5.0、Wi-Fi 5 與 GPS 功能；還可透過 microSD 卡擴充 256GB 儲存空間。搭載雙喇叭，提供 Dirac 2.0 功能，可在電影、遊戲、音樂等應用場景智慧切換音效模式。此外，配備 5,000mAh 大電池，提供 18W 快速充電。\r\n\r\n三鏡頭主相機\r\nOPPO A53 後置三鏡頭主相機，鏡頭模組採用垂直排列設計，分別為 1,300 萬畫素主鏡頭（F2.2 光圈）+ 200 萬畫素景深（F2.4 光圈） + 200 萬畫素 4cm 微距（F2.4 光圈），支援 6 倍數位變焦與全新炫彩模式，可清晰還原各種照片最真實豐富的色彩原樣；搭配景深鏡頭結合 AI 演算法，能帶來人像虛化效果。前置 1,600 萬畫素自拍鏡頭、F2.0 光圈，擁有 AI 美顏、人像虛化模式。\r\n\r\nOPPO A53 功能特色\r\n◎ 4G + 4G 雙卡雙待\r\n◎ Android 10 作業系統、ColorOS 7.2 操作介面\r\n◎ 6.5 吋 1,600 x 720pixels 解析度 LCD 螢幕（90Hz 螢幕更新率）\r\n◎ Qualcomm Snapdragon 460, 1.8GHz + 1.6GHz 八核心處理器\r\n◎ 4GB RAM / 64GB ROM\r\n◎ 前鏡頭：1,600 萬畫素\r\n◎ 後鏡頭：1,300 萬畫素 + 200 萬畫素 + 200 萬畫素\r\n◎ Wi-Fi 5、藍牙 5.0、GPS\r\n◎ 後置指紋辨識\r\n◎ 5,000mAh 電量\r\n◎ 採用 18W 快速充電 \r\n◎ USB 2.0 Type-C 規格\r\n◎ 可透過 microSD 卡擴充 256GB 儲存空間\r\n◎ 盒裝配件：18W 電源充電器、USB Type-C 數據線、TPU 透明保護套、SIM 卡插針'),
('Sony Xperia 10 II', 'Android 10', 'Snapdragon 665', 6, 1200, 4, 128, 3600, 0, 'Sony Xperia 10 II 具備 IP68 防塵防水\r\n6 吋 21：9 全螢幕\r\nSony Xperia 10 II 配置 6 吋 21：9 比例 OLED 螢幕，承襲自 BRAVIA 電視的 TRILUMINOS display for mobile 原色顯示技術，帶來的真實細膩色彩，並內建影片影像最佳化，讓用戶在觀賞喜愛的內容時黑色黑得更純淨、色彩更鮮明。Sony Xperia 10 II 透過 21：9 螢幕多工處理分隔視窗，讓你同時瀏覽兩個應用程式，盡享方便與高效率的多工處理；只需大拇指輕碰，即能開啟側面操控功能，輕鬆存取喜愛的應用程式。此外，機身正反面採用康寧大猩猩第六代玻璃鏡面，支援 IP65 / IP68 防塵防水等級。\r\n\r\n3,600mAh 電量\r\nSony Xperia 10 II 運行 Android 10 作業系統，內建 Qualcomm Snapdragon 665 八核心處理器、4GB RAM / 128GB ROM，配置 3,600mAh 電量，搭載 Battery Care 技術，可搭配用戶的就寢時間，於手機充電至 90% 電力後減緩充電速度，在起床前透過智慧調整逐步將電力充滿至 100％，避免手機電力已滿仍持續充電導致電池壽命損害。Sony Xperia 10 II 具備 Hi-Res 高解析音樂及無線高解析音樂技術，透過 3.5mm 耳機孔或以無線聆聽，都能享受媲美原音重現的純正絕色音質。\r\n\r\n全新夜間模式\r\nSony Xperia 10 II 前置 800 萬畫素鏡頭（F2.0 光圈）、後置 1,200 萬畫素（F2.0 光圈）+ 800 萬畫素 120° 超廣角鏡頭（F2.2 光圈）+ 800 萬畫素（F2.4 光圈），分別擁有 16mm、26mm、52mm 三種焦段，透過內建的美食、肖像以及夜間模式，輕鬆拍出亮眼奪目的照片，即使在低光源環境，也能捕捉高畫質清晰影像。Sony Xperia 10 II 帶來 21：9 比例相片拍攝以及 4K 高畫質動態錄影功能，讓你揮灑創意的無限可能。\r\n\r\nSony Xperia 10 II 功能特色\r\n◎ 4G + 4G 雙卡雙待\r\n◎ Android 10 作業系統\r\n◎ 6 吋 2,520 x 1,080pixels 解析度 OLED 觸控螢幕\r\n◎ Qualcomm Snapdragon 665 八核心處理器\r\n◎ 4GB RAM / 128GB ROM\r\n◎ 前置 800 萬畫素鏡頭\r\n◎ 後置 1,200 萬畫素 + 800 萬畫素 + 800 萬畫素主相機\r\n◎ Wi-Fi 5、藍牙 5.0、NFC\r\n◎ IP65 / IP68 防塵防水等級\r\n◎ 側邊指紋辨識\r\n◎ 3,600mAh 電量\r\n◎ 採用 USB 2.0 Type-C 規格\r\n◎ 支援 microSD 記憶卡，最高可擴充至 1TB 儲存空間\r\n◎ 盒裝配件：7.5W 電源充電器、USB Type-C 數據線、3.5mm 耳機'),
('Sony Xperia 1 II', 'Android 10', 'Snapdragon 865', 6.5, 1200, 8, 256, 4000, 1, 'Sony Xperia 1 II 首創 20fps 高速連拍\r\n360 Reality Audio\r\nSony Xperia 1 II (8GB/256GB) 配置 6.5 吋 21：9 CinemaWide 4K HDR OLED 螢幕，具備動態模糊減少技術 Motion Blur Reduction，以相當於 90Hz 螢幕更新率，減少影格延遲，提升影像畫質清晰度；搭配導演模式 Creator mode（powered by CineAlta），呈現前所未見的精準色彩。Sony Xperia 1 II (8GB/256GB) 透過與 Sony Music Entertainment 合作，調校出音樂人期望的理想高音質，並搭載立體聲喇叭，加入最新 360 Reality Audio 實境音效、DSEE Ultimate 數位音質還原技術，帶來逼近真實、媲美原音重現的聆賞體驗。此外，前後均覆蓋康寧大猩猩第六代玻璃，支援 IP65 / IP68 防水防塵等級。\r\n\r\nCompetition Set 專注模式\r\nSony Xperia 1 II (8GB/256GB) 運行 Android 10 作業系統，內建 Qualcomm Snapdragon 865, 2.8GHz + 1.8GHz 八核心處理器、8GB RAM / 256GB ROM，搭載 4,000mAh 電池，30 分鐘即可充電高達 50%，藉由 Qi 無線充電功能讓你更方便隨時補充電力。Sony Xperia 1 II (8GB/256GB) 搭配 PlayStation 4 的 DUALSHOCK 4 遊戲手把，提升手遊體驗的「遊戲增強器」，並支援 Competition Set 專注模式，讓遊戲應用程式置頂設定，以便玩家專注於遊戲賽事。此外，支援 5G 連網，以及 NSA 非獨立組網，提供更高速、高品質的內容存取及觀賞體驗。\r\n\r\n3D iToF 測距感測器\r\nSony Xperia 1 II (8GB/256GB) 前置 800 萬畫素鏡頭（F2.0 光圈）、後置 1,200 萬畫素（F1.7 光圈）+ 1,200 萬畫素（F2.2 光圈）+ 1,200 萬畫素 124° 超廣角鏡頭（F2.4 光圈），分別擁有 16mm、24mm、70mm 三種焦段，帶來更隨心所欲、靈活多變的拍攝體驗。Sony Xperia 1 II (8GB/256GB) 結合 Sony Alpha 技術與 ZEISS 光學專業，以及特別打造的 3D iToF 測距感測器，運用 Alpha 可交換式鏡頭相機的技術，提供連續高速自動對焦功能，每秒可執行 60 次自動對焦暨自動曝光 AF/AE 追蹤計算，更以連續追蹤功能，造就全球首創每秒 20 張高速連拍功能。\r\n\r\nSony Xperia 1 II (8GB/256GB) 功能特色\r\n◎ 5G 單卡、4G + 4G 雙卡雙待\r\n◎ Android 10 作業系統\r\n◎ 6.5 吋 3,840 x 1,644pixels 解析度 OLED 觸控螢幕\r\n◎ Qualcomm Snapdragon 865, 2.8GHz + 1.8GHz 八核心處理器\r\n◎ 8GB RAM / 256GB ROM\r\n◎ 前置 800 萬畫素鏡頭\r\n◎ 後置 1,200 萬畫素 + 1,200 萬畫素 + 1,200 萬畫素主相機\r\n◎ Wi-Fi 6、藍牙 5.1、NFC\r\n◎ IP65 / IP68 防塵防水等級\r\n◎ 指紋辨識\r\n◎ 4,000mAh 電池\r\n◎ 採用 USB 3.1 Type-C 規格，支援 PD 3.0 快充\r\n◎ 支援 microSD 記憶卡，最高可擴充至 1TB 儲存空間\r\n◎ 盒裝配件：18W UCH32 電源充電器、USB Type-C 數據線、3.5mm 耳機、耳機塞、耳機夾'),
('Sony Xperia 5 II', 'Android 10', 'Snapdragon 865', 6.1, 1200, 8, 256, 4000, 1, 'Sony Xperia 5 II 支援 120Hz 螢幕更新率\r\n6.1 吋 21：9 螢幕\r\nSony Xperia 5 II 配置 6.1 吋 2,520 x 1,080pixels 解析度 21：9 比例 FHD+ HDR OLED 螢幕，支援 120Hz 螢幕更新率、240Hz 觸控掃描頻率，機身側邊加入 Google 語音助理實體按鍵，正反面皆覆蓋康寧大猩猩第六代玻璃，具備 IP65 / IP68 防水防塵等級，提升手機耐用性；邊框採用金屬材質結合圓潤邊角設計，讓握持手感再升級。內建導演模式 Creator mode（powered by CineAlta），呈現前所未見的精準色彩；擁有 Sony Music Entertainment 音效，立體聲喇叭導入 360 Reality Audio 實境音效、DSEE Ultimate 數位音質還原技術，提供逼近真實、媲美原音重現的聆賞體驗。\r\n\r\n5G + 4G 雙卡雙待\r\nSony Xperia 5 II 運行 Android 10 作業系統，內建 Qualcomm Snapdragon 865, 2.8GHz + 1.8GHz 八核心處理器、8GB RAM / 256GB ROM，導入石墨烯散熱架構，增強手機散熱表現；支援 5G + 4G 雙卡雙待，具備 Sub-6、NSA 功能，配備 4,000mAh 電池，擁有 21W PD 3.0 快充技術。遊戲增強器加入效能優先模式，自動調整螢幕更新率，若是搭配內建麥克風的 3.5mm 耳機，還可提高語音通話品質；提供 Heat Suppression 電源控制功能。其他具備 Wi-Fi 6、藍牙 5.1、NFC、側邊指紋辨識，支援 DUALSHOCK 4 遊戲手把操作。\r\n\r\n即時眼部追焦\r\nSony Xperia 5 II 相機結合 Sony Alpha 與 ZEISS 光學專業技術，前置 800 萬畫素鏡頭（F2.0 光圈），後置 1,200 萬畫素 16mm 超廣角鏡頭（124 度廣角、F2.2 光圈、1/2.6 吋、 Dual Pixel PDAF）+ 1,200 萬畫素 70mm 望遠鏡頭（1/3.4 吋、F2.4 光圈、PDAF、OIS）+ 1,200 萬畫素 24mm 標準鏡頭（F1.7 光圈、1/1.7 吋、 Dual Pixel PDAF、OIS），透過大三元焦段，提供靈活多變的拍攝體驗；支援即時眼部追焦、3 倍光學變焦、20fps 高速連拍功能，每秒可執行 60 次自動對焦暨自動曝光 AF/AE 追蹤計算。Photo Pro 增加「RAW 檔案格式」儲存功能，轉盤設定增加 MR 模式，可將常用的參數直接設定儲存使用；Cinema Pro 支援 4K 120fps 慢動作錄影。\r\n\r\nSony Xperia 5 II 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 10 作業系統\r\n◎ 6.1 吋 FHD+ HDR OLED 觸控螢幕（120Hz 螢幕更新率）\r\n◎ Qualcomm Snapdragon 865, 2.8GHz + 1.8GHz 八核心處理器\r\n◎ 8GB RAM / 256GB ROM\r\n◎ 前置 800 萬畫素鏡頭\r\n◎ 後置 1,200 萬畫素 + 1,200 萬畫素 + 1,200 萬畫素主相機\r\n◎ Wi-Fi 6、藍牙 5.1、NFC\r\n◎ IP65 / IP68 防塵防水等級\r\n◎ 側邊指紋辨識\r\n◎ Google 語音助理實體按鍵\r\n◎ 4,000mAh 電池\r\n◎ 採用 USB 3.1 Type-C 規格，支援 21W PD 3.0 快充\r\n◎ 支援 microSD 記憶卡\r\n◎ 盒裝配件：18W UCH32 電源充電器、USB Type-C 數據線、3.5mm 耳機、耳機塞、耳機夾'),
('realme X3', 'Android 10', 'Snapdragon 855+', 6.6, 6400, 8, 128, 4200, 0, 'realme X3 搭載 6.6 吋 120Hz 螢幕\r\n四曲面玻璃背蓋\r\n\r\nrealme X3 配置 6.6 吋 2,400 x 1,080pixels 解析度 FHD+ IPS 螢幕，螢幕左上角設有雙前置鏡頭挖孔，螢幕占比達 90.5%，具備 120Hz 螢幕更新率，有效提升畫面穩定性與流暢視覺效果，正面覆蓋第五代康寧大猩猩玻璃，提高螢幕防刮耐磨表現，共有「冰川藍」、「北極白」兩種顏色款式；機身右側設有指紋辨識器，背蓋採用 3D 四曲面玻璃設計，搭配防眩光塗層能夠降低指紋沾染。此外，配備 4,200mAh 電池，支援 30W Dart Charge 快充，55 分鐘可充至 100%。\r\n\r\n高通驍龍 855+\r\n\r\nrealme X3 運行 Android 10 作業系統、realme UI 操作介面，搭載 7nm 製程 Qualcomm Snapdragon 855+, 2.96GHz 八核心處理器，採用 8GB LPDDR4x RAM + 128GB UFS3.0 ROM 配置，支援 4G + 4G 雙卡雙待，提供 Wi-Fi 5、藍牙 5.0 功能；散熱方面，結合全新液體散熱技術，可完整覆蓋手機內部熱源，利用大面積導熱銅片，進一步加速手機散熱表現。此外，內建遊戲空間與遊戲助手模式，方便玩家進行遊戲相關設定，備有線性馬達可提升觸覺回饋感受。\r\n\r\n星空攝影模式\r\n\r\nrealme X3 前置 1,600 萬畫素（F2.1 光圈）+ 800 萬畫素（105 度廣角、F2.2 光圈）鏡頭；後置 6,400 萬畫素（三星 GW1、26mm、F1.8 光圈）+ 1,200 萬畫素長焦（51mm、F2.5 光圈）+ 800 萬畫素 119 度超廣角（16mm、F2.3 光圈）+ 200 萬畫素微距（4cm、F2.4 光圈）四鏡頭，支援 20 倍混合變焦，即使在 100 公尺以外的距離，也能輕鬆捕捉到清晰的畫面，內建星空模式，系統自動結合長時間曝光與多幀技術，增強星空的拍攝表現。\r\n\r\nrealme X3 功能特色\r\n\r\n◎ 4G + 4G 雙卡雙待\r\n\r\n◎ Android 10 作業系統、realme UI 操作介面\r\n\r\n◎ 6.6 吋 2,400 x 1,080pixels 解析度 FHD+ IPS 螢幕\r\n\r\n◎ Qualcomm Snapdragon 855+, 2.96GHz 八核心處理器\r\n\r\n◎ 8GB RAM / 128GB ROM\r\n\r\n◎ 1,600 萬畫素 + 800萬畫素前鏡頭\r\n\r\n◎ 6,400 萬畫素 + 1,200 萬畫素 + 800 萬畫素 + 200 萬畫素後鏡頭\r\n\r\n◎ Wi-Fi 5、藍牙 5.0、NFC\r\n\r\n◎ 側邊指紋辨識、臉部解鎖\r\n\r\n◎ 4,200mAh 電量\r\n\r\n◎ 支援 30W Dart Charge 快充\r\n\r\n◎ 採用 USB Type-C 規格'),
('realme X50', 'Android 10', 'Snapdragon 765G', 6.57, 4800, 6, 128, 4200, 1, '雙孔螢幕設計 realme X50 (6GB/128GB)\r\n120Hz 螢幕更新率\r\n\r\nrealme X50 (6GB/128GB) 配置 6.57 吋雙孔 LCD 螢幕，覆蓋康寧大猩猩第五代玻璃，以 20：9 顯示比例搭配窄邊框設計，提供 90.4% 螢幕佔比、120Hz 螢幕更新率，讓顯示更流暢、無拖影，並支援 Dolby Atmos 杜比全景聲以及通過 Hi-Res 小金標認證，帶來高品質立體聲音效體驗。另外，玻璃背蓋採用微米紋理設計，讓手機擁有細膩的光影流動效果；透過側邊指紋辨識器，讓手機解鎖更便利，配備 4,200mAh 電量，具備 30W Dart 閃充。\r\n\r\n全速電競模式\r\n\r\nrealme X50 (6GB/128GB) 運行 Android 10 作業系統、realme UI 操作介面，內建 Qualcomm Snapdragon 765G 八核心處理器、6GB RAM / 128GB ROM；支援 5G 單卡 / 4G + 4G 雙卡雙待，具備 EN-DC 技術。搭載全速電競模式，提供 Gameboost、遊戲空間、遊戲助手，可強化遊戲體驗品質，具備五重立體冰封散熱技術，100% 覆蓋核心發熱源，加上 8mm 液冷銅管散熱 3.0，有效提升散熱表現。\r\n\r\n4,800 萬四鏡頭\r\n\r\nrealme X50 (6GB/128GB) 後置 4,800 萬畫素主鏡頭（F1.8 光圈）+ 800 萬畫素 119° 超廣角鏡頭（F2.3 光圈）+ 200 萬畫素人像鏡頭（F2.4 光圈）+ 200 萬畫素 4cm 微距鏡頭（F2.4 光圈），搭載超級夜景，提供默認、手持夜景、腳架等模式，支援 UIS Max 錄影超級防手震，獲得更多的視野範圍，足以媲美專業運動相機。前置 1,600 萬畫素廣角鏡頭（F2.0 光圈）+ 200 萬畫素人像（F2.4 光圈），內建人像虛化與美顏錄影，讓成像更豐富有層次。\r\n\r\nrealme X50 (6GB/128GB) 功能特色\r\n\r\n◎ 5G 單卡 / 4G + 4G 雙卡雙待\r\n\r\n◎ Android 10 作業系統、realme UI 操作介面\r\n\r\n◎ 6.57 吋 2,400 x 1,080 pixels 解析度 LCD 觸控螢幕\r\n\r\n◎ Qualcomm Snapdragon 765G 八核心處理器\r\n\r\n◎ 6GB RAM / 128GB ROM\r\n\r\n◎ 前置 1,600 萬畫素 + 200 萬畫素鏡頭\r\n\r\n◎ 後置 4,800 萬畫素 + 800 萬 + 800 萬畫素 + 200 萬畫素鏡頭\r\n\r\n◎ Wi-Fi 802.11 a/b/g/n/ac（2.4GHz & 5GHz）、藍牙 5.0、NFC\r\n\r\n◎ 側邊指紋辨識、臉部辨識\r\n\r\n◎ 4,200mAh 電量\r\n\r\n◎ 支援 30W Dart 閃充。'),
('realme 7 5G', 'Android 10', 'Dimensity 800U', 6.5, 4800, 8, 128, 5000, 1, 'realme 7 5G 支援 5G + 5G 雙卡雙待\r\n6.5 吋 120Hz 螢幕\r\nrealme 7 5G 配置 6.5 吋 FHD+「挖孔」螢幕，採用 20：9 顯示比例，螢幕占比達 90.5%，具備 120Hz 螢幕更新率、180Hz 觸控採樣率，可呈現流暢滑順的螢幕體驗，增強手遊操作時的反應速度；正面覆蓋康寧大猩猩玻璃，提高螢幕保護力。\r\n\r\n兩段式鏡面設計\r\nrealme 7 5G 機身採用兩段式鏡面設計，搭配 AG 玻璃結構處理、CD 紋理工藝，燈光照射下可大幅提升手機質感；底部配置 Hi-Res Audio、Dolby Atmos 音效揚聲器，提供出色的音質體驗；側面導入與電源鍵整合的指紋辨識器，讓手機解鎖更便利。\r\n\r\n天璣 800U\r\nrealme 7 5G 內建聯發科天璣 800U, 2.4GHz + 2GHz 八核心處理器、8GB RAM + 128GB ROM；採用獨立三卡槽規格，提供 5G + 5G 雙卡雙待、Wi-Fi 5、藍牙 5.1；配備 5,000mAh 電池，支援 30W Dart Charge 快充技術。\r\n\r\n四鏡頭主相機\r\nrealme 7 5G 後置四鏡頭主相機，分別為 4,800 萬畫素主鏡頭 + 800 萬畫素 119 度超廣角 + 200 萬畫素微距 + 黑白人像鏡頭，支援超級夜景拍攝、UIS / UIS Max 錄影防手震；前置 1,600 萬畫素主鏡頭，提供臉部辨識、人像美顏功能。\r\n\r\nrealme 7 5G 功能特色\r\n◎ Android 10 作業系統、reamle UI 操作介面\r\n◎ 5G + 5G 雙卡雙待\r\n◎ 6.5 吋 2,400 x 1,080pixels 解析度 FHD+ 螢幕\r\n◎ 聯發科天璣 800U, 2.4GHz + 2GHz 八核心處理器\r\n◎ 8GB LPDDR4x RAM / 128GB UFS 2.1 ROM\r\n◎ 前鏡頭 1,600 萬畫素\r\n◎ 後鏡頭 4,800 萬畫素 + 800 萬畫素 + 200 萬畫素  + 黑白人像鏡頭\r\n◎ Wi-Fi 802.11 b/g/n/a/ac（2.4GHz & 5GHz）、藍牙 5.1\r\n◎ 側邊指紋辨識器、臉部辨識\r\n◎ Hi-Res Audio、杜比音效\r\n◎ 5,000mAh 電量，支援 30W Dart Charge 快充\r\n◎ 採用 USB Type-C 規格\r\n◎ 支援 microSD 記憶卡擴充儲存空間'),
('vivo X60 Pro', 'Android 11', 'Snapdragon 870', 6.56, 4800, 12, 256, 4200, 1, 'vivo X60 Pro 具備微雲台 2.0 防手震鏡頭\r\n6.56 吋 120Hz 更新率螢幕\r\nvivo X60 Pro 配置 6.56 吋 FHD+ AMOLED「挖孔」螢幕，採用 3D 曲面螢幕設計，支援 120Hz 螢幕更新率、240Hz 觸控採樣率，提供極為順暢的操作表現；螢幕通過 HDR10+ 認證，具備 SGS Eye Care Display 護眼認證，提供高品質視覺體驗。\r\n\r\n新雙色雲階設計\r\nvivo X60 Pro 維持薄化機身風格，機身厚度僅有 7.59mm；背蓋延續雙色雲階設計，採用緞面 AG 玻璃結構處理，搭配防指紋工藝，打造如絲綢般的觸感與視覺體驗；共有「冰極光」、「迷霧黑」等顏色款式。\r\n\r\n高通驍龍 870\r\nvivo X60 Pro 搭載台積電 7nm 製程的 Qualcomm Snapdragon 870 行動平台，內建 12GB RAM + 256GB ROM，採用雙 Nano SIM 卡槽設計，支援 5G + 4G 雙卡雙待。具備 Wi-Fi 5、藍牙 5.1、NFC 功能。\r\n\r\n微雲台 2.0\r\nvivo X60 Pro 搭載蔡司三鏡頭主相機，後置 4,800 萬畫素微雲台 2.0 主鏡頭（5 軸防手震）+ 1,300 萬畫素 120 度超廣角鏡頭（2.5cm 微距）+ 1,300 萬畫素人像鏡頭，具備蔡司 Biotar 人像風格，支援極夜模式 2.0 功能。\r\n\r\nvivo X60 Pro 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 11 作業系統、Funtouch OS 11.1 操作介面\r\n◎ 6.56 吋 2,376 x 1,080pixels 解析度 AMOLED 螢幕（120Hz 螢幕更新率）\r\n◎ Qualcomm Snapdragon 870 八核心處理器\r\n◎ 12GB RAM / 256GB ROM\r\n◎ 前置 3,200 萬畫素\r\n◎ 後置 4,800 萬畫素 + 1,300 萬畫素 + 1,300 萬畫素主相機\r\n◎ Wi-Fi 5、藍牙 5.1、NFC\r\n◎ 臉部辨識、螢幕指紋辨識\r\n◎ 4,200mAh 電池\r\n◎ 採用 USB Type-C 規格，支援 33W FlashCharge 快充\r\n◎ 盒裝配件：33W 電源充電器、USB Type-C 數據線、3.5mm 耳機、Type-C to 3.5mm 音源線、透明保護套、SIM 卡插針\r\n\r\nvivo X60 Pro 即日起開放預購，預計 2021 年 4 月 1 日在台灣上市，以上規格僅供參考，手機王隨時補充最新資料。'),
('vivo X50 Pro', 'Android 10', 'Snapdragon 765G', 6.56, 4800, 8, 256, 4315, 1, 'vivo X50 Pro 支援微雲台防手震\r\n6.56 吋曲面螢幕\r\nvivo X50 Pro 配置 6.56 吋 2,376 x 1,080pixels 解析度「挖孔」AMOLED 螢幕，螢幕採用 55 度微曲面設計，擁有 92% 螢幕占比，支援 90Hz 螢幕更新率、180Hz 觸控採樣率，具備 DCI-P3 廣色域、103％ NTSC 色彩飽和度、6,000,000：1 對比度，通過 HDR10 與 HDR10+ 顯示認證。機身選用玻璃背蓋搭配金屬中框設計，提供唯美華麗的視覺表現；支援螢幕指紋辨識功能，有效防止個人隱私不輕易外洩，還可做為行動交易前的身分認證使用。\r\n\r\n5G 上網\r\nvivo X50 Pro 運行 Android 10 作業系統、Funtouch OS 10.5 操作介面，內建 Qualcomm Snapdragon 765G, 2.4GHz 八核心處理器、8GB LPDDR4X RAM / 256GB UFS2.1 ROM，支援 5G + 4G 雙卡雙待，提供 NSA 非獨立組網，擁有藍牙 5.1、NFC 功能。音效方面通過 Hi-Res AUDIO 認證，搭載 AK4377A 獨立音訊解碼晶片，帶來 Hi-Fi 音質表現；此外，配備 4,315mAh 電池，具備 33W vivo Flash Charge 閃充。\r\n\r\n5 倍光學變焦\r\nvivo X50 Pro 後置四鏡頭主相機，首度搭載微雲台主鏡頭設計，將以往用於專業攝影設備的「雲台」功能重現於手機之中，解決手持拍照容易產生的晃動問題，同時採用「異形結構磁動框架」搭配雙滾珠懸架設計，防震角度可達 OIS 光學防手震的 3 倍；分別配置 4,800 萬畫素主鏡頭（Sony IMX598、7P 鏡頭、F1.6 光圈） +  1,300 萬畫素人像（50mm 等效焦段、F2.46 光圈）+ 800 萬畫素潛望式望遠（5 倍光學變焦、60 倍數位變焦、F3.4 光圈）+ 800 萬畫素廣角 / 微距（120 度超廣角、2.5cm 微距、F2.2 光圈）鏡頭，前置 3,200 萬畫素鏡頭、F2.45 光圈，支援人像美顏、臉部解鎖功能。\r\n\r\nvivo X50 Pro 功能特色\r\n◎ 5G + 4G 雙卡雙待\r\n◎ Android 10 作業系統、Funtouch OS 10.5 操作介面\r\n◎ 6.56 吋 2,376 x 1,080pixels 解析度 AMOLED 螢幕（90Hz 螢幕更新率）\r\n◎ Qualcomm Snapdragon 765G, 2.4GHz 八核心處理器\r\n◎ 8GB RAM / 256GB ROM\r\n◎ 3,200 萬畫素前鏡頭\r\n◎ 4,800 萬畫素 + 1,300 萬畫素 + 800 萬畫素 + 800 萬畫素主相機\r\n◎ 微雲台防手震架構、5 倍光學變焦\r\n◎ Wi-Fi、藍牙 5.1、NFC\r\n◎ 螢幕指紋辨識、臉部解鎖\r\n◎ 4,315mAh 電池\r\n◎ 採用 USB Type-C 規格，支援 33W vivo Flash Charge 閃充\r\n◎ 盒裝配件：33W 電源充電器、USB Type-C 數據線、3.5mm 耳機、Type-C to 3.5mm 音源線、透明保護套、SIM 卡插針'),
('Apple iPhone 11 Pro', 'iOS 13', 'A13 Bionic', 5.8, 1200, 4, 64, 0, 0, '超 Retina XDR 顯示器\r\nApple iPhone 11 Pro 256GB 配置 5.8 吋 OLED 螢幕，搭載超 Retina XDR 顯示器的最高亮度，陽光下螢幕亮度最高可達 800nit，當你觀看動態範圍內容時亮度則為 1,200nit，搭配原彩顯示技術，可調整白平衡，以配合你所處環境光線的色溫，時給予你極佳的閱讀體驗。Apple iPhone 11 Pro 256GB 搭載杜比全景聲，具備 3D 空間環繞音效，讓你感覺彷彿身臨其境，還擁有空間音訊技術，能模擬環繞聲，營造更引人入勝的體驗；享有「觸覺回饋觸控」，能使用項目特色選單與捷徑，讓操作更便捷。此外，機身以手術級的不鏽鋼材質打造，搭配霧面玻璃設計，支援 IP68 防水防塵，在最深達 4 公尺水中最長可達 30 分鐘，給予手機極佳防護力。\r\n\r\nHomeKit 安全錄影\r\nApple iPhone 11 Pro 256GB 運行 iOS 13 作業系統，內建 7nm FinFET 製程 A13 Bionic 六核心處理器、256GB ROM，專為機器學習而設計，CPU、GPU 速度較前一代增強 20%，搭配節能技術，電池續航力更持久。Apple iPhone 11 Pro 256GB 搭載全新 U1 晶片，使用具備空間感知功能的超寬頻技術，使手機可精準定位其他配備 U1 的 Apple 裝置；新增 HomeKit 安全錄影，專為安全與隱私而設計的影片儲存空間。此外，採用實體 SIM 卡 + eSIM 規格，提供 4G LTE Advanced，有效提升下載速度；透過 Face ID，具備面孔認證技術，只要看一眼即可解鎖、登入 APP 並進行付款。\r\n\r\n人像光線控制\r\nApple iPhone 11 Pro 256GB 後置 1,200 萬畫素廣角鏡頭（F1.8 光圈）+ 1,200 萬畫素望遠鏡頭（F2.0 光圈）+ 1,200 萬畫素 120° 超廣角鏡頭（F2.4 光圈），支援 2 倍光學變焦、10 倍數位變焦，超廣角相機能捕捉四倍寬廣的取景範圍；新增夜間模式，低光源環境下不用閃光燈，讓色彩更自然、照片更明亮；擁有 QuickTake 功能，在室外拍攝時，A13 仿生可透過機器學習來自動追蹤移動的物體。Apple iPhone 11 Pro 256GB 前置 1,200 萬畫素鏡頭（F2.2 光圈），搭配 Animoji 與 Memoji，給予你豐富的拍攝樂趣；具備散景效果與景深控制的人像模式，以及提供自然光、攝影棚燈光、輪廓光、舞台燈光、舞台燈光黑白、高色調燈光黑白等六種人像光線控制，改變拍攝主體上的光線強度，創造出你想要的照片樣貌。\r\n\r\nApple iPhone 11 Pro 256GB 功能特色\r\n◎ iOS 13 作業系統\r\n◎ 5.8 吋 2,436 x 1,125pixels 解析度 OLED 觸控螢幕（458ppi）\r\n◎ A13 Bionic 六核心處理器\r\n◎ 256GB ROM\r\n◎ 1,200 萬畫素 + 1,200 萬畫素 + 1,200 萬畫素 iSight 攝錄鏡頭、1,200 萬畫素前鏡頭\r\n◎ 4G、Wi-Fi 802.11 a/b/g/n/ac/ax（2.4GHz & 5GHz）MIMO、藍牙 5.0\r\n◎ IP68 防水防塵\r\n◎ Face ID 臉部解鎖\r\n◎ 支援 18W 快充、Qi 無線充電\r\n◎ 盒裝配件：18W 電源充電器、USB Type-C to Lightning 數據線、Lightning EarPods 耳機、SIM 卡插針');

-- --------------------------------------------------------

--
-- 資料表結構 `phonememory`
--

CREATE TABLE `phonememory` (
  `Phone` varchar(30) NOT NULL,
  `MemoryNum` int(11) NOT NULL,
  `Memory` varchar(8) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `phonememory`
--

INSERT INTO `phonememory` (`Phone`, `MemoryNum`, `Memory`, `Price`) VALUES
('Apple iPhone 12 Pro Max', 3, '128', 36088),
('Apple iPhone 12 Pro Max', 3, '256', 38500),
('Apple iPhone 12 Pro Max', 3, '512', 47288),
('Apple iPhone 12 Pro', 3, '128', 32900),
('Apple iPhone 12 Pro', 3, '256', 25588),
('Apple iPhone 12 Pro', 3, '512', 42499),
('Apple iPhone 12', 3, '64', 26900),
('Apple iPhone 12', 3, '128', 28500),
('Apple iPhone 12', 3, '256', 32000),
('Apple iPhone 12 mini', 3, '64', 23900),
('Apple iPhone 12 mini', 3, '128', 25500),
('Apple iPhone 12 mini', 3, '256', 29000),
('SAMSUNG Galaxy A52 5G', 2, '128', 13500),
('SAMSUNG Galaxy A52 5G', 2, '256', 12050),
('SAMSUNG Galaxy A42 5G', 2, '8/128', 9550),
('SAMSUNG Galaxy A42 5G', 2, '6/128', 8290),
('SAMSUNG Galaxy S21 Ultra 5G', 2, '128', 25900),
('SAMSUNG Galaxy S21 Ultra 5G', 2, '256', 27900),
('OPPO Reno5 5G', 1, '128', 13990),
('OPPO A73 5G', 1, '128', 6790),
('OPPO Reno4 5G', 1, '128', 9750),
('OPPO A53', 1, '64', 4650),
('Sony Xperia 1 II', 1, '256', 22900),
('Sony Xperia 10 II', 1, '128', 8790),
('Sony Xperia 5 II', 1, '8/128', 8790),
('realme X3', 1, '8/128', 7990),
('realme X50', 2, '8/128', 7590),
('realme X50', 2, '6/128', 5990),
('realme 7 5G', 1, '8/128', 7990),
('vivo X60 Pro', 1, '12/256', 23900),
('vivo X50 Pro', 1, '8/256', 13680),
('Apple iPhone 11 Pro', 2, '64', 24500),
('Apple iPhone 11 Pro', 2, '256', 29200);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `addressee`
--
ALTER TABLE `addressee`
  ADD PRIMARY KEY (`AddId`);

--
-- 資料表索引 `memberlike`
--
ALTER TABLE `memberlike`
  ADD PRIMARY KEY (`LikeId`);

--
-- 資料表索引 `phonebrand`
--
ALTER TABLE `phonebrand`
  ADD PRIMARY KEY (`Number`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `addressee`
--
ALTER TABLE `addressee`
  MODIFY `AddId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `memberlike`
--
ALTER TABLE `memberlike`
  MODIFY `LikeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `phonebrand`
--
ALTER TABLE `phonebrand`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
