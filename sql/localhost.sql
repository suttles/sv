-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 20 2013 г., 18:05
-- Версия сервера: 5.5.32-MariaDB-log
-- Версия PHP: 5.3.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `suttl114_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `putdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` tinytext NOT NULL,
  `url_text` tinytext NOT NULL,
  `url_pict` tinytext NOT NULL,
  `hide` enum('show','hide') NOT NULL DEFAULT 'show',
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id_news`, `name`, `body`, `putdate`, `url`, `url_text`, `url_pict`, `hide`) VALUES
(1, 'Creatednews block', 'Today was established news block with php and muscle', '2013-11-17 22:26:05', '', '', 'http://server-css.ru/files/news1.jpg', 'show'),
(2, 'Problems with the news', 'News not yet support UTF-8', '2013-11-18 22:31:00', '', '', '', 'show'),
(3, 'Починил новости', 'Всё теперь новости поддерживают UTF-8', '2013-11-18 22:32:22', '', '', '', 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `me` text,
  `date` date DEFAULT NULL,
  `balance` varchar(32) NOT NULL,
  `wmr` varchar(64) NOT NULL,
  `yad` varchar(64) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `email`, `name`, `firstname`, `password`, `me`, `date`, `balance`, `wmr`, `yad`) VALUES
(1, 'reg@admin.com', 'Главный админ', 'Админ', '240290', 'admin', '2011-04-22', '', '', ''),
(31, 'misha.guzenkov@yandex.ru', 'Mihaill', '', '96e79218965eb72c92a549dd5a330112', '', '2013-11-20', '487', 'R52762727823', '410721754996050');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
