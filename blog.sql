-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 11:07 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_content`, `blog_banner`, `user_id`, `updated_at`, `created_at`) VALUES
(18, '5 Ways In Which Technology Is Changing Driving Training In India..............', '<p>CEAT tyres hit the nail on the head with their funny, witty, and thought-provoking &quot;Be Idiot Safe&quot; ad &ndash; if you haven&#39;t watched it already, watch it&nbsp;<a href="https://www.youtube.com/watch?v=N653KZOersE" rel="nofollow">here</a>. As life moves from being 24 hours to 140-characters, our attention spans have shrunk to the duration of that commercial&mdash;30 seconds, and no more. And so, like most of you, I watched, I laughed, and I moved on, but not quite.</p>\r\n\r\n<p>Thought: how can we be better drivers, if we don&#39;t have better driving teachers? Why is it that we&#39;ve moved from feature phones to smartphones, but we continue to rely on archaic training methods for driving?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>Not too long ago... a pot-bellied, sleepy, semi-skilled instructor would give you a textbook lesson, and follow that up with a few near-death experiences on a rickety car, driven on a busy road.</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Not too long ago, driving training was a four-day affair (seven, if you were lucky). A pot-bellied, sleepy, semi-skilled instructor would give you a textbook lesson, and follow that up with a few near-death experiences on a rickety car, driven on a busy road. Today, I&#39;m happy to report, the story is a different one &ndash; and we have technology to thank for this.</p>', 'c91edca9e6f2009f180b45ff56cbd460.jpeg', 1, '2017-07-29 07:48:50', '2017-07-28 17:46:07'),
(23, 'Leap Motion review: A glimpse into the future of computing', '<p>Now that touchscreens have moved the human-computer interaction beyond the monopoly of the mouse-keyboard union for the first time in 30 years, are we now at a point where we can put some distance between us and our computers? Can we instruct them without direct contact but now move to the new union of voice-gesture?</p>\r\n\r\n<p>Leap Motion&nbsp;is the first serious mainstream contender for a high fidelity gesture peripheral. It tracks the movement of hands in two square feet of space above it with unbelievable speed and accuracy.</p>\r\n\r\n<p>The first question everybody asks is, &lsquo;So what can it do?&rsquo;. The short answer is, today, very little. Tomorrow? Well, I for one am a believer. What we have here is a limitation of imagination, not of technology. That is usually a catalyst for innovation.</p>\r\n\r\n<h2>Device itself</h2>\r\n\r\n<p>Receiving my Developer Kit a few weeks ago was a cause for a large crowd to gather in the development team at the Guardian. Only a handful of new gadgets really generate this level of excitement and people wanted to see for themselves whether it lived up to the hype.</p>\r\n\r\n<p>At the point of receiving the developer kits, the demos available were basic but captivating. The ability to interact with a school of digital fish or navigate through central London like a helicopter was briefly entertaining.</p>', '7f98cc4308cbc753480d94f522e800c1.jpeg', 1, '2017-07-29 09:01:37', '2017-07-29 11:01:37'),
(24, 'Report claims a third of UK jobs at risk from robots', '<p>The UK&rsquo;s next general election looks like it may be dominated by the topic of immigration, thanks to the rise of UKIP and the desire of the established political parties to head off a drain in supporters by edging closer to its policies.</p>\r\n\r\n<p>If there&rsquo;s a looming threat to British jobs, though, isn&rsquo;t it more likely to come from robots rather than immigration? A&nbsp;<a href="http://www.deloitte.com/view/en_GB/uk/market-insights/uk-futures/london-futures/index.htm">new report published by Deloitte, the Oxford Martin School and the University of Oxford</a>&nbsp;hints at exactly that.</p>\r\n\r\n<p>It claims that 35% of existing UK jobs are at &ldquo;high risk of replacement in the next 20 years&rdquo; from technology, automation and robotics, with lower-paid jobs more than five times as likely to be replaced than higher-paid jobs.</p>\r\n\r\n<p>&ldquo;Unless these changes coming in the next two decades are fully understood and anticipated by businesses, policy makers and educators, there will be a risk of avoidable unemployment and under-employment,&rdquo; warns Deloitte&rsquo;s senior partner Angus Knowles-Cutler.</p>\r\n\r\n<p>Yet the report also suggests that in London specifically, 73% of businesses are planning to increase their overall headcount, to bring in the new skills and roles required by technology advances.</p>\r\n\r\n<p>Even so, are we sleepwalking into a dangerous situation if we don&rsquo;t put the correct educational elements in place to retrain people for these new kinds of jobs? Is this just a problem for politicians, or does the technology industry have social responsibilities too?</p>', '1bdeab6ace3d9aba6598d5f54ee2bd60.jpeg', 1, '2017-07-29 09:03:38', '2017-07-29 11:03:38'),
(25, 'Elon Musk hands over first Tesla Model 3 electric cars to buyers', '<p>Tesla boss&nbsp;<a href="https://www.theguardian.com/technology/elon-musk">Elon Musk</a>&nbsp;has handed over the first of what he hopes will be a mass-market electric car to employee buyers,setting the stage for the biggest test yet of the company&rsquo;s plans to revolutionise the auto industry. .</p>\r\n\r\n<p>Outside Tesla&rsquo;s factory in Fremont, California on Friday night, Musk showed off the&nbsp;<a href="https://www.theguardian.com/technology/2017/jul/10/first-tesla-model-3-production-line-hands-elon-musk">$35,000 Model 3&nbsp;</a>which has a range of 220 miles (350 km) on a charge that marks a departure from the company&rsquo;s earlier luxury electric cars.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Britain to ban sale of all diesel and petrol cars and vans from 2040</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Read more</p>\r\n\r\n<p>Hours before the event, Musk acknowledged it would be &ldquo;quite a challenge&rdquo; to build the car during the early days of production.</p>\r\n\r\n<p>&ldquo;We&rsquo;re going to go through at least six months of manufacturing hell,&rdquo; Musk told journalists.</p>\r\n\r\n<p>The over half a million reservations are up from about 373,000 disclosed in April 2016. Customers pay $1,000 refundable deposits for the car, which is eligible for tax credits. Any new buyers would likely not receive their car until the end of 2018, Musk said.</p>\r\n\r\n<p>A longer-range version of the car is priced at $44,000 and will drive 310 miles (500 km) on a single charge. The cars feature a streamlined dashboard devoid of buttons or knobs, with a touchstream display to the right of the driver.</p>\r\n\r\n<p>Tesla faces major hurdles living up to the Model 3 hype. The 500,000 vehicles&nbsp;<a href="https://www.theguardian.com/technology/tesla">Tesla</a>&nbsp;vows to produce next year are nearly six times its 2016 production.</p>\r\n\r\n<p>Were Tesla to produce, and sell 500,000 cars per year, the company would likely outsell the BMW, Mercedes, or Lexus brands in the United States.</p>\r\n\r\n<p>Production delays and quality issues marred the launches of Tesla&rsquo;s Model S and Model X vehicles, and the company blamed production problems for a shortfall during the second quarter of this year. Musk has said a simpler Model 3 design will greatly reduce potential assembly-line problems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Sparks fly on Wall Street over Tesla&rsquo;s current valuation</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Read more</p>\r\n\r\n<p>Tesla has burned through more than $2bn in cash so far this year ahead of the launch. A troubled Model 3 launch could heighten the risks for the company, while a steady delivery of Model 3s could generate a stream of cash that would allow Tesla to avoid going again to the capital markets to fund its operations.</p>\r\n\r\n<p>Tesla&rsquo;s share price has surged 54% since January in anticipation of the Model 3 launch, and Tesla&rsquo;s pricey valuation&nbsp;<a href="https://www.theguardian.com/technology/2017/apr/10/tesla-most-valuable-car-company-gm-stock-price">now exceeds that of traditional rivals like General Motors and Ford&nbsp;</a>.</p>\r\n\r\n<p>Until now, Tesla has operated as a niche producer of luxury electric vehicles, with a charismatic, showman chief executive who regularly interacts with fans on his Twitter account. Now loss-making Tesla is trying to move into a different league, building vehicles in high volume for customers able to pay only a few thousand dollars more than the average price of a conventional car or truck sold in the US.</p>\r\n\r\n<p>The Model 3 is part of Musk&rsquo;s broader plan to build a clean energy and transportation company that offers electric semi trucks, rooftop solar energy systems and large-scale battery storage systems.</p>', 'ab6b141d03d17b4d7296e0f8939674e6.jpg', 1, '2017-07-29 09:05:55', '2017-07-29 11:05:55');

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
