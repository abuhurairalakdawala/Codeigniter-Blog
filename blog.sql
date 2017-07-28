-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2017 at 07:15 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.6.30-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_title` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `blog_content` text COLLATE utf8_unicode_ci NOT NULL,
  `blog_banner` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_content`, `blog_banner`, `updated_at`, `created_at`) VALUES
(17, 'afdafd', '<p>fdsfds</p>', '40d2601cc8d134c4892dc9abbfa3a066.jpg', '2017-07-28 11:07:35', '2017-07-28 16:37:35'),
(18, '5 Ways In Which Technology Is Changing Driving Training In India', '<p>CEAT tyres hit the nail on the head with their funny, witty, and thought-provoking &quot;Be Idiot Safe&quot; ad &ndash; if you haven&#39;t watched it already, watch it&nbsp;<a href="https://www.youtube.com/watch?v=N653KZOersE" rel="nofollow">here</a>. As life moves from being 24 hours to 140-characters, our attention spans have shrunk to the duration of that commercial&mdash;30 seconds, and no more. And so, like most of you, I watched, I laughed, and I moved on, but not quite.</p>\r\n\r\n<p>Thought: how can we be better drivers, if we don&#39;t have better driving teachers? Why is it that we&#39;ve moved from feature phones to smartphones, but we continue to rely on archaic training methods for driving?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>Not too long ago... a pot-bellied, sleepy, semi-skilled instructor would give you a textbook lesson, and follow that up with a few near-death experiences on a rickety car, driven on a busy road.</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Not too long ago, driving training was a four-day affair (seven, if you were lucky). A pot-bellied, sleepy, semi-skilled instructor would give you a textbook lesson, and follow that up with a few near-death experiences on a rickety car, driven on a busy road. Today, I&#39;m happy to report, the story is a different one &ndash; and we have technology to thank for this.</p>', 'c91edca9e6f2009f180b45ff56cbd460.jpeg', '2017-07-28 12:16:07', '2017-07-28 17:46:07'),
(19, 'stgdgf', '<p>xfgxvxcv&nbsp;</p>', '72c74c7a7e3f4518ef79078395c396ff.jpg', '2017-07-28 12:25:09', '2017-07-28 17:55:09'),
(20, 'asfadf', '<p>A</p>\r\n\r\n<p><strong>B</strong></p>\r\n\r\n<p><u>Idasfdsgfs</u></p>\r\n\r\n<p><s>Abu</s></p>\r\n\r\n<p><sub>afadf</sub></p>\r\n\r\n<p><sup>adfsfssfgs</sup></p>\r\n\r\n<p><a href="http://erererere" target="_blank">dfsgfgd</a></p>\r\n\r\n<p>&nbsp;</p>', 'c95a59632faafdf3f30e0cc67bd68d99.jpg', '2017-07-28 12:54:26', '2017-07-28 18:24:26'),
(21, 'sdsad', '<p><img alt="smiley" height="23" src="http://127.0.0.1/blog/assets/ckeditor/plugins/smiley/images/regular_smile.png" title="smiley" width="23" /></p>', '3e6efb9269448542ab390df88a4fbd39.jpg', '2017-07-28 12:59:12', '2017-07-28 18:29:12'),
(22, 'zvzcv', '<div><span style="font-family:Lucida Sans Unicode,Lucida Grande,sans-serif"><span style="font-size:12px">asfadf</span></span></div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div><span class="marker"><span style="font-family:Lucida Sans Unicode,Lucida Grande,sans-serif"><span style="font-size:12px">Abu</span></span></span></div>', '95fae10f6c0c806e31d6a8b363ca6e30.jpg', '2017-07-28 13:45:15', '2017-07-28 19:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` tinyint(1) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `role_id`, `created_at`) VALUES
(1, 'abu2602', '', '', 1, '2017-07-28 10:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` char(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `created_at`) VALUES
(1, 'Admin', '2017-07-28 08:43:18'),
(2, 'Editor', '2017-07-28 08:43:18'),
(3, 'User', '2017-07-28 08:43:29');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
