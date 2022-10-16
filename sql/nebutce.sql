-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 24 Şub 2022, 19:05:59
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `nebutce`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `expenses`
--

CREATE TABLE `expenses` (
  `expenses_id` int(15) NOT NULL,
  `expenses_price` float(9,2) DEFAULT NULL,
  `expenses_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `expenses_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `expenses_timedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `expenses`
--

INSERT INTO `expenses` (`expenses_id`, `expenses_price`, `expenses_category`, `expenses_date`, `expenses_timedate`) VALUES
(2, 34.00, 'Sağlık', '21-12-2021', '2022-02-16 22:36:50'),
(3, 3434.00, 'Eğitim', '21-12-2021', '2022-02-16 22:37:28'),
(4, 2000.00, 'Faturalar', '21-12-2021', '2022-02-16 22:37:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `income`
--

CREATE TABLE `income` (
  `income_id` int(15) NOT NULL,
  `income_price` float(9,2) DEFAULT NULL,
  `income_category` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `income_date` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `income_timedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `income`
--

INSERT INTO `income` (`income_id`, `income_price`, `income_category`, `income_date`, `income_timedate`) VALUES
(2, 45.00, 'telif', '2022-02-08', '2022-02-07 21:39:10'),
(3, 45.00, 'telif', '2022-02-08', '2022-02-07 21:40:20'),
(4, 34.00, 'Maaş', '0000-00-00', '2022-02-07 21:41:28'),
(5, 34.00, 'Maaş', '21-12-2021', '2022-02-07 21:42:17'),
(6, 34.00, 'Maaş', '21-12-2021', '2022-02-07 21:45:06'),
(7, 34.00, 'Maaş', '21-12-2021', '2022-02-07 21:46:45'),
(8, 34.00, 'Maaş', '21-12-2021', '2022-02-07 21:48:43'),
(9, 34.00, 'Maaş', '21-12-2021', '2022-02-07 21:51:52'),
(10, 145.00, 'Kira', '21-12-2021', '2022-02-07 21:55:58'),
(11, 34.00, 'Maaş', '21/12/2021', '2022-02-16 21:28:28'),
(12, 34.00, 'Maaş', '21-12-2021', '2022-02-16 21:52:53'),
(13, 34.00, 'Maaş', '21-12-2021', '2022-02-16 22:37:24'),
(14, 45.00, 'diğer', '2022-02-08', '2022-02-07 21:39:10'),
(15, 1456.00, 'Kira', '21-12-2021', '2022-02-24 11:49:10'),
(16, 1000.00, 'Telif', '21-12-2021', '2022-02-24 11:50:26'),
(17, 45.00, 'emrah', '2022-02-08', '2022-02-07 21:39:10'),
(18, 34.00, 'Telif', '22/12/2021', '2022-02-24 22:01:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` text COLLATE utf8_turkish_ci,
  `slider_image_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_image`, `slider_image_order`) VALUES
(1, 'slider01.png', 1),
(3, 'slider02.png', 2),
(4, 'slider03.png', 3);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenses_id`);

--
-- Tablo için indeksler `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`income_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenses_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `income`
--
ALTER TABLE `income`
  MODIFY `income_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
