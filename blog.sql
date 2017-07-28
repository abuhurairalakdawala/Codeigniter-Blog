-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2017 at 09:24 PM
-- Server version: 5.6.17
-- PHP Version: 5.6.30

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
  `user_id` int(10) unsigned NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_blog_user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_content`, `blog_banner`, `user_id`, `updated_at`, `created_at`) VALUES
(18, '5 Ways In Which Technology Is Changing Driving Training In India', '<p>CEAT tyres hit the nail on the head with their funny, witty, and thought-provoking &quot;Be Idiot Safe&quot; ad &ndash; if you haven&#39;t watched it already, watch it&nbsp;<a href="https://www.youtube.com/watch?v=N653KZOersE" rel="nofollow">here</a>. As life moves from being 24 hours to 140-characters, our attention spans have shrunk to the duration of that commercial&mdash;30 seconds, and no more. And so, like most of you, I watched, I laughed, and I moved on, but not quite.</p>\r\n\r\n<p>Thought: how can we be better drivers, if we don&#39;t have better driving teachers? Why is it that we&#39;ve moved from feature phones to smartphones, but we continue to rely on archaic training methods for driving?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>Not too long ago... a pot-bellied, sleepy, semi-skilled instructor would give you a textbook lesson, and follow that up with a few near-death experiences on a rickety car, driven on a busy road.</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Not too long ago, driving training was a four-day affair (seven, if you were lucky). A pot-bellied, sleepy, semi-skilled instructor would give you a textbook lesson, and follow that up with a few near-death experiences on a rickety car, driven on a busy road. Today, I&#39;m happy to report, the story is a different one &ndash; and we have technology to thank for this.</p>', 'c91edca9e6f2009f180b45ff56cbd460.jpeg', 1, '2017-07-28 18:55:23', '2017-07-28 17:46:07'),
(19, 'stgdgf', '<p>xfgxvxcv&nbsp;</p>', '72c74c7a7e3f4518ef79078395c396ff.jpg', 1, '2017-07-28 18:55:23', '2017-07-28 17:55:09'),
(20, 'asfadf', '<p>A</p>\r\n\r\n<p><strong>B</strong></p>\r\n\r\n<p><u>Idasfdsgfs</u></p>\r\n\r\n<p><s>Abu</s></p>\r\n\r\n<p><sub>afadf</sub></p>\r\n\r\n<p><sup>adfsfssfgs</sup></p>\r\n\r\n<p><a href="http://erererere" target="_blank">dfsgfgd</a></p>\r\n\r\n<p>&nbsp;</p>', 'c95a59632faafdf3f30e0cc67bd68d99.jpg', 1, '2017-07-28 18:55:23', '2017-07-28 18:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `role_id`, `created_at`) VALUES
(1, 'admin', '3ddda464d29696d7dabe9a574b70313107e072e2301fc960684833608e448725', '283ed9a1167959f77926bcce78741c9e', 1, '2017-07-28 18:13:16'),
(2, 'editor', '3ddda464d29696d7dabe9a574b70313107e072e2301fc960684833608e448725', '283ed9a1167959f77926bcce78741c9e', 2, '2017-07-28 18:13:16'),
(3, 'user', '3ddda464d29696d7dabe9a574b70313107e072e2301fc960684833608e448725', '283ed9a1167959f77926bcce78741c9e', 3, '2017-07-28 18:13:16');

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
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `fk_blog_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
