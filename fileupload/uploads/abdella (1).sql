-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 04:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abdella`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_status_chat`
--

CREATE TABLE `delivery_status_chat` (
  `chat_id` int(11) NOT NULL,
  `delStatus_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `mer_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `send_by` int(11) NOT NULL COMMENT '''1''-customer,''2''-merchant,''3''-admin',
  `note` text NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_aboutus`
--

CREATE TABLE `nm_aboutus` (
  `ap_id` int(11) NOT NULL,
  `ap_description` longtext NOT NULL,
  `ap_description_fr` longtext NOT NULL,
  `ap_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_aboutus`
--

INSERT INTO `nm_aboutus` (`ap_id`, `ap_description`, `ap_description_fr`, `ap_date`) VALUES
(1, 'About Us<br><br>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br>&nbsp;', 'À propos de nous', '2017-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_add`
--

CREATE TABLE `nm_add` (
  `ad_id` smallint(5) UNSIGNED NOT NULL,
  `ad_name` varchar(100) NOT NULL,
  `ad_name_fr` varchar(200) NOT NULL,
  `ad_position` tinyint(4) NOT NULL COMMENT '1-left,2-middle,3-right',
  `ad_pages` tinyint(4) NOT NULL COMMENT '1-home,2-product,3-Deal,4-Auction',
  `ad_redirecturl` varchar(150) NOT NULL,
  `ad_img` varchar(150) NOT NULL,
  `ad_type` int(11) NOT NULL DEFAULT '1' COMMENT '1-admin 2 customer',
  `ad_status` tinyint(3) UNSIGNED NOT NULL,
  `ad_read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-not read 1 read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_add`
--

INSERT INTO `nm_add` (`ad_id`, `ad_name`, `ad_name_fr`, `ad_position`, `ad_pages`, `ad_redirecturl`, `ad_img`, `ad_type`, `ad_status`, `ad_read_status`) VALUES
(10, 'Ads', '', 1, 1, 'http://www.google.com', 'Ads_1531288418.jpg', 1, 0, 1),
(11, 'Ads1', '', 2, 1, 'http://www.google.com', 'Ads_1531288434.jpg', 1, 0, 1),
(13, 'Ads4', '', 4, 1, 'http://www.google.com', 'Ads_1531288470.jpg', 1, 0, 1),
(14, 'Ads5', '', 5, 1, 'http://www.google.com', 'Ads_1531288489.jpg', 1, 0, 1),
(15, 'Ads6', '', 6, 1, 'https://JLCBH265.expandcart.com/image/JLCBH265/data/elite/ad7.jpg', 'Ads_1531288538.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_admin`
--

CREATE TABLE `nm_admin` (
  `adm_id` int(10) UNSIGNED NOT NULL,
  `adm_fname` varchar(150) NOT NULL,
  `adm_lname` varchar(150) NOT NULL,
  `adm_password` varchar(150) NOT NULL,
  `adm_email` varchar(150) NOT NULL,
  `adm_phone` varchar(20) NOT NULL,
  `adm_address1` varchar(150) NOT NULL,
  `adm_address2` varchar(150) NOT NULL,
  `adm_ci_id` int(10) UNSIGNED NOT NULL COMMENT 'city id',
  `adm_co_id` smallint(5) UNSIGNED NOT NULL COMMENT 'country id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_admin`
--

INSERT INTO `nm_admin` (`adm_id`, `adm_fname`, `adm_lname`, `adm_password`, `adm_email`, `adm_phone`, `adm_address1`, `adm_address2`, `adm_ci_id`, `adm_co_id`) VALUES
(1, 'admin', 'admin', 'admin', 'ragulgandhi@pofitec.com', '9790153222', 'chennai', 'chennai', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_adminreply_comments`
--

CREATE TABLE `nm_adminreply_comments` (
  `reply_id` int(11) NOT NULL,
  `reply_blog_id` int(11) NOT NULL,
  `reply_cmt_id` int(11) NOT NULL,
  `reply_msg` text NOT NULL,
  `reply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_adminreply_comments`
--

INSERT INTO `nm_adminreply_comments` (`reply_id`, `reply_blog_id`, `reply_cmt_id`, `reply_msg`, `reply_date`) VALUES
(1, 1, 2, 'otos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos&nbsp;', '2018-05-04 22:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `nm_auction`
--

CREATE TABLE `nm_auction` (
  `auc_id` int(10) UNSIGNED NOT NULL,
  `auc_title` varchar(500) NOT NULL,
  `auc_category` int(11) NOT NULL,
  `auc_main_category` int(11) NOT NULL,
  `auc_sub_category` int(11) NOT NULL,
  `auc_second_sub_category` int(11) NOT NULL,
  `auc_original_price` int(11) NOT NULL,
  `auc_auction_price` int(11) NOT NULL,
  `auc_bitinc` smallint(5) UNSIGNED NOT NULL,
  `auc_saving_price` int(11) NOT NULL,
  `auc_start_date` datetime NOT NULL,
  `auc_end_date` datetime NOT NULL,
  `auc_shippingfee` decimal(10,2) NOT NULL,
  `auc_shippinginfo` text NOT NULL,
  `auc_description` text NOT NULL,
  `auc_merchant_id` int(11) NOT NULL,
  `auc_shop_id` int(11) NOT NULL,
  `auc_meta_keyword` varchar(250) NOT NULL,
  `auc_meta_description` varchar(500) NOT NULL,
  `auc_image_count` int(11) NOT NULL,
  `auc_image` varchar(500) NOT NULL,
  `auc_status` int(11) NOT NULL DEFAULT '1' COMMENT '1-active, 0-block',
  `auc_posted_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_auction`
--

INSERT INTO `nm_auction` (`auc_id`, `auc_title`, `auc_category`, `auc_main_category`, `auc_sub_category`, `auc_second_sub_category`, `auc_original_price`, `auc_auction_price`, `auc_bitinc`, `auc_saving_price`, `auc_start_date`, `auc_end_date`, `auc_shippingfee`, `auc_shippinginfo`, `auc_description`, `auc_merchant_id`, `auc_shop_id`, `auc_meta_keyword`, `auc_meta_description`, `auc_image_count`, `auc_image`, `auc_status`, `auc_posted_date`) VALUES
(1, 'Diamond necklace', 1, 1, 1, 1, 15000, 10500, 10, 4500, '2014-08-09 12:50:47', '2014-09-09 12:50:47', '10.00', 'Ships to india', 'Diamond necklace will take you to a completely different world with \r\nspectacular views. Jewelry diamond necklaces the most beautiful state. \r\nJewelry design is an art. The worldâ€™s most valuable asset is the people.\r\n Charms adorn people. So, Jewelry design is the art of human adornment. \r\nJewelry design is one of the oldest professions. Diamond necklaces are \r\ndesigned by expert designers. We chose the most beautiful diamond \r\nnecklace designs for you. There are two predominant objective in the \r\ndesign of diamond necklaces. Exquisite designs, modesty shows in the \r\nwealth. Large stone adorned with necklaces, are influenced environment. \r\nYou can choose the most special days of the diamond necklace.<br><br><br>', 6, 5, 'Diamond', 'Diamond', 2, 'jewelzc8BoIZr.jpg/**/new2jdMILdT7.jpg/**/new1PhpgKukL.jpg/**/', 1, '2014-08-13 04:11:08'),
(2, 'hand bags', 1, 1, 1, 1, 1500, 1000, 10, 500, '2014-08-13 16:49:34', '2014-08-06 16:49:34', '25.00', 'free', 'asds', 2, 1, 'asd', 'asss', 4, '2YmlkRqJC.png/**/5UCkEi0zv.png/**/4TZEEKtZ7.png/**/1Zfw5yHW8.png/**/6A9AOLRAx.png/**/', 1, '2014-08-11 11:20:54'),
(3, 'hand bags', 1, 1, 1, 1, 1500, 1000, 10, 500, '2014-08-09 12:50:47', '2014-08-12 16:51:17', '25.00', 'swds', 'sdsa', 2, 1, 'sads', 'asdsa', 4, '2w4QZLuE2.png/**/5iJNcTQKA.png/**/62wJiGqDm.png/**/1r11FrvLT.png/**/3hypyZDuW.png/**/', 1, '2014-08-11 11:22:15'),
(4, 'Merchant deal', 2, 2, 2, 2, 10000, 9000, 10, 1000, '2014-08-12 09:38:54', '2014-08-13 15:24:54', '10.00', 'coimbatore vadavalli', 'Meta keywords<br>', 4, 3, 'fdafds', 'dsfds', 2, 'flower3SIH0fbjz.jpg/**/flower1Fk1kQ6Cw.jpg/**/flower2jaBoQuEf.jpg/**/', 1, '2014-08-13 04:10:25'),
(5, 'sasa', 1, 1, 1, 1, 150, 100, 5, 50, '2014-11-21 19:41:48', '2014-11-28 19:41:48', '12.00', 'wewewe', 'weewe', 1, 1, 'wewe', 'wewe', 0, 'DMR_48xTLGZCgG.jpg/**/', 1, '2014-11-20 16:14:58'),
(6, 'BiG Bazar', 2, 2, 0, 0, 1000, 100, 10, 900, '2014-12-10 11:20:30', '2014-12-16 11:20:30', '3.00', 'shipp', 'auction', 5, 4, 'rterte', 'ertert', 0, 'IMG_1269_wUYY6ufcW.jpg/**/', 1, '2014-12-10 10:22:18'),
(7, 'Senbagam', 5, 9, 19, 49, 400, 300, 10, 100, '2015-05-11 08:15:34', '2015-05-12 08:04:34', '0.00', 'item shipping', 'This product which unique<br>', 3, 2, 'keywords', 'keywords', 0, 'ChrysanthemumZVXd9lBr.jpg/**/', 1, '2015-05-11 02:49:23'),
(8, 'shoe sport', 4, 7, 33, 0, 100, 50, 1, 50, '2016-02-17 18:34:37', '2016-02-25 18:34:37', '0.00', 'ship to you', 'is a sport shoe, nike', 1, 1, 'ss', 'ss', 0, 'slide1-2mwb33rdS.png/**/', 1, '2016-02-17 10:36:00'),
(9, 'Test Auc', 5, 8, 14, 35, 320, 250, 10, 70, '2016-03-09 17:40:47', '2016-03-25 17:40:47', '20.00', 'Test', 'Test', 1, 140, 'Test', 'Test', 0, 'imagesRT1JF5cz.jpeg/**/', 1, '2016-03-09 12:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `nm_banner`
--

CREATE TABLE `nm_banner` (
  `bn_id` smallint(5) UNSIGNED NOT NULL,
  `bn_title` varchar(150) NOT NULL,
  `bn_title_fr` varchar(150) NOT NULL,
  `bn_type` varchar(10) NOT NULL COMMENT '1-home,2-product,3-deal,4-auction',
  `bn_img` varchar(150) NOT NULL,
  `bn_status` int(11) NOT NULL COMMENT '1-block,0-unblock',
  `bn_redirecturl` text NOT NULL,
  `bn_slider_position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_banner`
--

INSERT INTO `nm_banner` (`bn_id`, `bn_title`, `bn_title_fr`, `bn_type`, `bn_img`, `bn_status`, `bn_redirecturl`, `bn_slider_position`) VALUES
(1, 'test1', '', '1,1,1', 'Banner1525343015.jpg', 1, 'https://www.google.co.in/', '1'),
(2, 'Test2', '', '1,1,1', 'banner_15253431061857605603.jpg', 1, 'http://www.google.com', '1'),
(3, 'Test2', '', '1,1,1', 'Banner1525343230.jpg', 1, 'http://www.google.com', '1'),
(4, 'b1', '', '1,1,1', 'Banner_1531210215.png', 0, 'http://www.demo.laravelecommerce.com', '1'),
(5, 'b2', '', '1,1,1', 'Banner1527126348.jpg', 1, 'http://www.demo.laravelecommerce.com', '1'),
(6, 'b3', '', '1,1,1', 'Banner1527126364.jpg', 1, 'http://www.demo.laravelecommerce.com', '1'),
(7, 'b4', '', '1,1,1', 'Banner1527126377.jpg', 1, 'https://demo.laravelecommerce.com/productview/kids/dolls/Ng==', '1'),
(8, 'b5', '', '1,1,1', 'Banner1527126392.jpg', 1, 'http://www.demo.laravelecommerce.com', '1'),
(9, 'b6', '', '1,1,1', 'Banner1527126407.jpg', 1, 'http://www.demo.laravelecommerce.com', '1'),
(11, 'b5', '', '1,1,1', 'Banner1529309138.png', 1, 'https://demo.laravelecommerce.com', '1'),
(13, 'test', '', '1,1,1', 'Banner1530251019.jpg', 1, 'http://demo.laravelecommerce.com/', '1'),
(14, 'test', '', '1,1,1', 'Banner1530251791.jpg', 1, 'http://demo.laravelecommerce.com/', '1'),
(15, 'hjh', '', '1,1,1', 'Banner1531211159.jpg', 0, 'http://www.google.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nm_blog`
--

CREATE TABLE `nm_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(50) NOT NULL,
  `blog_title_fr` varchar(100) NOT NULL,
  `blog_desc` text NOT NULL,
  `blog_desc_fr` text NOT NULL,
  `blog_catid` int(11) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `blog_metatitle` varchar(100) NOT NULL,
  `blog_metatitle_fr` varchar(150) NOT NULL,
  `blog_metadesc` text NOT NULL,
  `blog_metadesc_fr` text NOT NULL,
  `blog_metakey` varchar(100) NOT NULL,
  `blog_metakey_fr` varchar(150) NOT NULL,
  `blog_tags` varchar(100) NOT NULL,
  `blog_comments` int(5) NOT NULL COMMENT '0-not allow,1-allow',
  `blog_type` int(5) UNSIGNED NOT NULL COMMENT '1-publish,2-drafts',
  `blog_status` tinyint(3) UNSIGNED NOT NULL COMMENT '1-block,0-unblock',
  `blog_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_blog`
--

INSERT INTO `nm_blog` (`blog_id`, `blog_title`, `blog_title_fr`, `blog_desc`, `blog_desc_fr`, `blog_catid`, `blog_image`, `blog_metatitle`, `blog_metatitle_fr`, `blog_metadesc`, `blog_metadesc_fr`, `blog_metakey`, `blog_metakey_fr`, `blog_tags`, `blog_comments`, `blog_type`, `blog_status`, `blog_created_date`) VALUES
(2, 'MOBILES BONANZA SALE: UNBEATABLE DEALS ON XIAOMI, ', '', 'The New Year is a time to welcome change. And what better way to do it than with a brand-new smartphone? During the Flipkart Mobiles Bonanza sale 2018, from Jan 3-5, you can upgrade without spending a fortune! Be it a Moto or a Lenovo, a Redmi or an iPhone, the latest Samsung or a Google Pixel, you’ll get it all here — budget, mid-range or even premium. Here’s a look at some of the discounts and deals you can make the most of. Take a look at all offers here. Premium phones on offer SAMSUNG GALAXY S7 The S7’s curvy metal alloy body houses a Dual Pixel 12MP rear camera, a CMOS 5MP front camera, 4GB RAM, 32 GB ROM and a 3000 mAh battery. With a 5.1-inch Super AMOLED display, fast wireless charging and a 2.3 GHz octa-core processor, this is a fantastic buy at a ?19,010 discount! Price before sale: ?46,000 Price during sale: ?26,990 GOOGLE PIXEL 2 AND 2 XL Want a flagship experience that isn’t easy to rival? You can’t go wrong with the Pixel 2 or Pixel 2XL. What’s more, during the flash sale at 4:30 pm on January 3, you’ll get a discount of ?13,001 <br>on the Pixel 2 and ?8,001 on the 2 XL! With the built-in Google Assistant, 4 GB RAM, a Qualcomm Snapdragon 835 processor, a high-performing 12.2MP rear camera and 8MP rear camera, both phones are a treat to use. Pixel 2 Price before sale: ?61,000 Price during sale: ?39,999* Pixel 2 XL Price before sale: ?73,000 Price during sale: ?52,999* * Including ?8,000 Cashback on HDFC Credit EMI and exchange discount; T&amp;C Apply MI A1 A flat ?2,000 discount simply adds to the shine of the Mi A1. Featuring a flagship dual rear camera, 12MP + 12MP, the phone makes taking a photograph pure pleasure! Its stylish full metal body houses a 5.5-inch FHD display, 4GB RAM and a fingerprint sensor. Price before sale: ?14,999 Price during sale: ?12,999', '', 4, 'Blog_1527139804_buy-mobile-on-emi-with-debit-card-320x190.jpg', 'MOBILES BONANZA SALE: UNBEATABLE DEALS ON XIAOMI, SAMSUNG, GOOGLE PIXEL 2 & MORE', '', 'MOBILES BONANZA SALE: UNBEATABLE DEALS ON XIAOMI, SAMSUNG, GOOGLE PIXEL 2 & MORE', '', 'MOBILES BONANZA SALE: UNBEATABLE DEALS ON XIAOMI, SAMSUNG, GOOGLE PIXEL 2 & MORE', '', 'MOBILES BONANZA SALE: UNBEATABLE DEALS ON XIAOMI, SAMSUNG, GOOGLE PIXEL 2 & MORE', 1, 1, 0, '2018-05-24 15:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `nm_blogsetting`
--

CREATE TABLE `nm_blogsetting` (
  `bs_id` tinyint(3) UNSIGNED NOT NULL,
  `bs_allowcommt` tinyint(4) NOT NULL,
  `bs_radminapproval` tinyint(4) NOT NULL COMMENT 'Require Admin Approval (1-yes & 0-No)',
  `bs_postsppage` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_blogsetting`
--

INSERT INTO `nm_blogsetting` (`bs_id`, `bs_allowcommt`, `bs_radminapproval`, `bs_postsppage`) VALUES
(1, 1, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nm_blog_cus_comments`
--

CREATE TABLE `nm_blog_cus_comments` (
  `cmt_id` int(11) NOT NULL,
  `cmt_blog_id` int(11) NOT NULL,
  `cmt_name` varchar(250) NOT NULL,
  `cmt_email` varchar(250) NOT NULL,
  `cmt_website` varchar(250) NOT NULL,
  `cmt_msg` text NOT NULL,
  `cmt_admin_approve` int(11) NOT NULL DEFAULT '0' COMMENT '1 => Approved, 2 => Unapproved',
  `cmt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cmt_msg_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-not read ,1 Read '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_blog_cus_comments`
--

INSERT INTO `nm_blog_cus_comments` (`cmt_id`, `cmt_blog_id`, `cmt_name`, `cmt_email`, `cmt_website`, `cmt_msg`, `cmt_admin_approve`, `cmt_date`, `cmt_msg_status`) VALUES
(1, 1, 'tesde', 'test@mailinator.com', 'https://www.google.co.in/', 'Testing', 1, '2018-05-03 22:00:12', 1),
(2, 1, 'Testing', 'testing@mailinator.com', 'https://www.google.co.in/', 'Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.vDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.vDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online. Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.v', 0, '2018-05-04 21:21:40', 1),
(3, 1, 'Tesr', 'tesr@mailinator.com', 'www.google.com', 'Testing', 0, '2018-05-05 15:05:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_category_ad`
--

CREATE TABLE `nm_category_ad` (
  `cat_ad_id` int(11) NOT NULL,
  `cat_ad_maincat_id` int(11) NOT NULL,
  `cat_ad_img` varchar(512) NOT NULL,
  `cat_ad_status` int(11) NOT NULL COMMENT '1-block,0-Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_category_ad`
--

INSERT INTO `nm_category_ad` (`cat_ad_id`, `cat_ad_maincat_id`, `cat_ad_img`, `cat_ad_status`) VALUES
(13, 2, 'Category_advertisment1530101862.jpg/**//**//**/', 0),
(14, 1, 'Category_advertisment_1530162016.jpg/**/', 0),
(15, 4, 'Category_advertisment1530162883.jpg/**/Category_advertisment1530162883.jpg/**/Category_advertisment1530162883.jpg/**/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_category_banner`
--

CREATE TABLE `nm_category_banner` (
  `cat_bn_id` int(11) NOT NULL,
  `cat_bn_maincat_id` int(11) NOT NULL,
  `cat_bn_img` varchar(512) NOT NULL,
  `cat_bn_status` int(1) NOT NULL COMMENT '1-block,0-Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_category_banner`
--

INSERT INTO `nm_category_banner` (`cat_bn_id`, `cat_bn_maincat_id`, `cat_bn_img`, `cat_bn_status`) VALUES
(1, 14, 'Category_banner_1527768992_250X200.png/**/', 0),
(2, 2, 'Category_banner_1527769016_250X200.png/**/', 0),
(3, 1, 'Category_banner_1527769114_250X200.png/**/Category_banner_1527769114_250X200.png/**/Category_banner_1527769114_250X200.png/**/', 0),
(4, 10, 'Category_banner_1527828302_250200-123.jpg/**//**//**/', 0),
(5, 13, 'Category_banner_1527828372_250200-123.jpg/**//**//**/', 0),
(6, 15, 'Category_banner_1527828395_250200-123.jpg/**//**//**/', 0),
(7, 22, 'Category_banner_1529042604_250200-123.jpg/**/Category_banner_1529042604_250 200- teddy.jpg/**/Category_banner_1529042604_250 200- 123.jpg/**/', 0),
(8, 23, 'Category_banner_1529042628_250 200- 123.jpg/**/Category_banner_1529042628_250 200- teddy.jpg/**/Category_banner_1529042628_250 200-micky123435.jpg/**/', 0),
(9, 25, 'Category_banner_1530093563_250 200- 123.jpg/**/Category_banner_1530093564_250 200- teddy.jpg/**/Category_banner_1530093564_250 200- teddy1111.jpg/**/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_city`
--

CREATE TABLE `nm_city` (
  `ci_id` int(10) UNSIGNED NOT NULL,
  `ci_name` varchar(100) NOT NULL,
  `ci_name_fr` varchar(150) NOT NULL,
  `ci_con_id` smallint(6) NOT NULL,
  `ci_lati` varchar(150) NOT NULL,
  `ci_long` varchar(150) NOT NULL,
  `ci_default` tinyint(4) NOT NULL,
  `ci_status` tinyint(4) NOT NULL COMMENT '1=>unblock,0=>block'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_city`
--

INSERT INTO `nm_city` (`ci_id`, `ci_name`, `ci_name_fr`, `ci_con_id`, `ci_lati`, `ci_long`, `ci_default`, `ci_status`) VALUES
(1, 'Coimbtore', '', 1, '11.0168445', '76.95583209999995', 1, 1),
(2, 'chennai', '', 1, '13.0826802', '80.27071840000008', 1, 1),
(3, 'los angeles', '', 3, '34.0522342', '-118.2436849', 0, 1),
(4, 'Morrisville', '', 3, '35.823483', '-78.82556210000001', 0, 1),
(5, 'New', '', 3, '37.09024', '-95.71289100000001', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_cms_pages`
--

CREATE TABLE `nm_cms_pages` (
  `cp_id` smallint(5) UNSIGNED NOT NULL,
  `cp_title` varchar(250) NOT NULL,
  `cp_title_fr` varchar(250) NOT NULL,
  `cp_description` longtext NOT NULL,
  `cp_description_fr` longtext NOT NULL,
  `cp_status` tinyint(4) NOT NULL DEFAULT '1',
  `cp_created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_cms_pages`
--

INSERT INTO `nm_cms_pages` (`cp_id`, `cp_title`, `cp_title_fr`, `cp_description`, `cp_description_fr`, `cp_status`, `cp_created_date`) VALUES
(9, 'Security', '', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 1, '2018-04-16 16:33:32'),
(13, 'Help', '', 'What Information Do You We Collect<br>We collect information from you when&nbsp;register&nbsp;on our site or fill out our contact form.<br>When ordering or raising&nbsp;enquiry&nbsp;on our website, as appropriate, you may be asked to enter your Name, Email id, Phone&nbsp;number&nbsp;and&nbsp;skype&nbsp;ID.&nbsp;However&nbsp;you could visit Laravel&nbsp;ecommerce&nbsp;website anonymously.<br><br>Special Notice&nbsp;<br>If you are under 13 years old Laravel&nbsp;Ecommerce&nbsp;website is not anticipated at children under 13 years old and we do not collect, use, provide or process in any other form any personal information of children under the age of 13 consciously. We therefore also ask you, if you are under 13 years old, please do not send us your personal information (for example, your name, address and email address).<br><br>Purposes of the collection of your data<br>&nbsp;Laravel&nbsp;Ecommerce&nbsp;is&nbsp;intent&nbsp;to inform you of who we are and what we do. We collect and use personal information (including name, phone&nbsp;number&nbsp;and email ID) to better provide you with the required services, or information. We&nbsp;would therefore&nbsp;use your personal information in order to:<ul><li>Acknowledge to your queries or requests</li><li>Govern our obligations in relation to any agreement you have with us</li><li>Anticipate and resolve problems with any goods or services supplied to you</li><li>Create products or services that may meet your needs</li></ul>Keeping our records accurate<br>&nbsp;We aim to keep our data confidential about you as authentic as possible. If you would like to review, change or delete the details you have provided with us, please contact us via email which is&nbsp;mentioned in&nbsp;our website.<br><br>Security of your personal data<br>&nbsp;As we value your personal information, we will establish sufficient level of protection. We have therefore enforced technology and policies with the objective of protecting your privacy from illegal access and erroneous use and will update these measures as new technology becomes available, as relevant.<br>Cookies policy<h4>Why do we use cookies?</h4>We use browser cookies to learn more about the way you interact with our content and help us to improve your experience when visiting our website.<br>Cookies remember the type of browser you use and which additional browser software you have installed. They also remember your preferences, such as language and region, which remain as your default settings when you revisit the website. Cookies also allow you to rate pages and fill in comment forms.<br>Some of the cookies we use are session cookies and only last until you close your browser, others are persistent cookies which are stored on your computer for longer.<br>Changes on privacy policy<br>&nbsp;We may make&nbsp;changes on&nbsp;our website’s privacy policy at any time. If we make any consequential changes to this privacy policy and the way in which we use your personal data we will post these changes on this page and will do our best to notify you of any significant changes. Kindly often check our privacy policies.', '', 1, '2017-12-18 16:47:27'),
(14, 'Returns Policy', '', '1.merchant terms and conditions<br>sdfsdf<br><br><h2>sdf</h2>sdf<br><h1>sdf</h1>', '', 1, '2018-07-04 16:20:59'),
(15, 'Privacy', '', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 1, '2018-04-16 16:33:16'),
(17, 'fgfdh', '', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, '2018-04-16 16:33:07'),
(18, 'test', '', 'testing', '', 0, '2018-05-05 17:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_cod_commission_paid`
--

CREATE TABLE `nm_cod_commission_paid` (
  `comPaid_id` int(11) NOT NULL,
  `com_merchant_id` int(11) NOT NULL,
  `com_mer_name` varchar(255) NOT NULL,
  `paidAmount` double NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_type` enum('0','1') NOT NULL COMMENT '0-offline,1-paypal',
  `online_payment_returnStatus` varchar(255) NOT NULL,
  `com_status` enum('0','1','2') NOT NULL COMMENT '1 => paid, 0=> Hold,''2''=>Cancelled',
  `com_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_cod_commission_paid`
--

INSERT INTO `nm_cod_commission_paid` (`comPaid_id`, `com_merchant_id`, `com_mer_name`, `paidAmount`, `transaction_id`, `payment_type`, `online_payment_returnStatus`, `com_status`, `com_date`) VALUES
(1, 1, 'ishwarya pofi', 95.5, '10', '0', '', '1', '2018-05-04 12:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `nm_cod_commission_tracking`
--

CREATE TABLE `nm_cod_commission_tracking` (
  `com_id` int(11) NOT NULL,
  `com_merchant_id` int(11) NOT NULL,
  `com_cod_id` int(11) NOT NULL,
  `com_pro_id` int(11) NOT NULL,
  `com_cod_amt` double NOT NULL,
  `cod_currency` varchar(255) NOT NULL,
  `cod_transaction_id` varchar(255) NOT NULL,
  `com_percentAmount` double NOT NULL,
  `exchange_rate` double NOT NULL,
  `exchange_currency` varchar(255) NOT NULL,
  `com_status` enum('0','1') NOT NULL COMMENT '1 => paid, 0=> Hold',
  `com_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_color`
--

CREATE TABLE `nm_color` (
  `co_id` smallint(5) UNSIGNED NOT NULL,
  `co_code` varchar(10) NOT NULL,
  `co_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_color`
--

INSERT INTO `nm_color` (`co_id`, `co_code`, `co_name`) VALUES
(1, '#6195ED', 'Cornflower Blue'),
(2, '#BE61ED', 'Lavender'),
(3, '#70ED61', 'Pastel Green'),
(4, '#D0ED61', 'Sulu'),
(5, '#EDCF61', 'Confetti'),
(6, '#ED61CC', 'Lavender Magenta'),
(7, '#ED6161', 'Burnt Sienna'),
(8, '#ED61E7', 'Lavender Magenta'),
(9, '#B2ED61', 'Sulu'),
(10, '#61EDC0', 'Turquoise Blue'),
(11, '#000000', 'Black'),
(12, '#FFFFFF', 'White'),
(13, '#FF1F54', 'Radical Red'),
(14, '#D1D9E5', 'Geyser');

-- --------------------------------------------------------

--
-- Table structure for table `nm_contact`
--

CREATE TABLE `nm_contact` (
  `cont_id` int(10) UNSIGNED NOT NULL,
  `cont_name` varchar(100) NOT NULL,
  `cont_email` varchar(150) NOT NULL,
  `cont_no` varchar(50) NOT NULL,
  `cont_message` text NOT NULL,
  `cont_restatus` tinyint(4) NOT NULL,
  `cont_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_country`
--

CREATE TABLE `nm_country` (
  `co_id` smallint(5) UNSIGNED NOT NULL,
  `co_code` varchar(10) NOT NULL,
  `co_name` varchar(30) NOT NULL,
  `co_name_fr` varchar(150) NOT NULL,
  `co_cursymbol` varchar(5) NOT NULL,
  `co_curcode` varchar(10) NOT NULL,
  `co_status` tinyint(4) NOT NULL COMMENT '1-block,0-unblock'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_country`
--

INSERT INTO `nm_country` (`co_id`, `co_code`, `co_name`, `co_name_fr`, `co_cursymbol`, `co_curcode`, `co_status`) VALUES
(1, ' IN', 'India', '', 'RS', 'INR', 0),
(2, ' SG', 'Singapore', '', '$', 'BND', 0),
(3, ' US', 'United States', '', '$', 'USD', 0),
(4, ' BT', 'Bhutan', '', 'Nu.', 'BTN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_coupon`
--

CREATE TABLE `nm_coupon` (
  `id` int(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=>flat, 2=>percentage',
  `value` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` int(100) NOT NULL DEFAULT '1',
  `type_of_coupon` varchar(100) NOT NULL COMMENT 'product coupon->1, user coupon->2',
  `terms` longtext NOT NULL,
  `coupon_per_product` varchar(155) NOT NULL,
  `coupon_per_user` varchar(155) NOT NULL,
  `tot_cart_val` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_coupon`
--

INSERT INTO `nm_coupon` (`id`, `coupon_code`, `coupon_name`, `product_id`, `quantity`, `user_id`, `type`, `value`, `start_date`, `end_date`, `status`, `type_of_coupon`, `terms`, `coupon_per_product`, `coupon_per_user`, `tot_cart_val`, `created_at`) VALUES
(1, 'uJFDI2zt8z', 'test', '3', 1, '0', 1, '10', '2018-05-06 17:21:00', '2018-05-08 17:21:00', 1, '1', 'Testing', '10', '1', '0', '2018-05-05 17:05:38'),
(2, 'znInxs07HG', 'use coupon', '0', 0, '2', 1, '10', '2018-05-12 16:15:00', '2018-05-12 19:30:00', 1, '2', 'Accept', '0', '0', '5', '2018-05-12 16:05:59'),
(3, 'F4R2A5U7D0', 'diwali offer', '0', 0, '45', 1, '5', '2018-06-22 17:13:00', '2018-07-24 17:12:00', 1, '2', 'hi fghfhfyfhfvhfhgfvhgfukyttguytguijh', '0', '0', '400', '2018-06-21 17:06:49'),
(4, 'HyHIvyyppE', 'testing', '37', 1, '0', 1, '20', '2018-06-22 11:04:00', '2018-06-23 11:04:00', 1, '1', 'test', '9', '2', '0', '2018-06-22 11:06:47'),
(5, '7wvM1yspDz', 'new', '38', 1, '0', 1, '10', '2018-06-22 11:06:00', '2018-06-25 11:06:00', 1, '1', 'test', '9', '2', '0', '2018-06-22 11:06:20'),
(6, 'J7IqnHzEzn', 'percentage', '4', 1, '0', 2, '5', '2018-07-03 15:15:00', '2018-07-07 15:15:00', 1, '1', 'TEst', '9', '2', '1', '2018-07-03 15:07:30'),
(7, 'CCpFDMtpLI', 'Thousand Years', '0', 0, '11', 1, '23', '2018-07-03 15:16:00', '2018-07-07 10:44:00', 1, '2', 'Hi! Make use of this coupon and purchase alot:)<br><br>Happy Purchasing!!', '0', '0', '500', '2018-07-03 15:07:33'),
(8, 'ESP75fthgwfh', 'Exclusive ', '0', 0, '17', 2, '10', '2018-07-03 15:17:00', '2018-10-13 10:50:00', 1, '2', 'Gwhsghdjghdewjk', '0', '0', '300', '2018-07-03 15:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `nm_coupon_purchage`
--

CREATE TABLE `nm_coupon_purchage` (
  `id` int(100) NOT NULL,
  `coupon_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `sold_user` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `pro_qty` varchar(255) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `type_of_coupon` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_coupon_purchage`
--

INSERT INTO `nm_coupon_purchage` (`id`, `coupon_id`, `product_id`, `sold_user`, `type`, `value`, `product_price`, `pro_qty`, `color`, `size`, `type_of_coupon`, `date`) VALUES
(1, 'znInxs07HG', '0', '2', '1', '10', '0', '0', '0', '0', '2', '2018-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `nm_currency`
--

CREATE TABLE `nm_currency` (
  `cur_id` int(10) UNSIGNED NOT NULL,
  `cur_name` varchar(100) NOT NULL,
  `cur_code` varchar(5) NOT NULL,
  `cur_symbol` varchar(10) NOT NULL,
  `cur_status` tinyint(11) NOT NULL DEFAULT '1',
  `cur_default` tinyint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_customer`
--

CREATE TABLE `nm_customer` (
  `cus_id` bigint(10) UNSIGNED NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `facebook_id` varchar(150) NOT NULL,
  `google_id` varchar(255) NOT NULL,
  `cus_email` varchar(150) NOT NULL,
  `cus_pwd` varchar(40) NOT NULL,
  `cus_phone` varchar(20) NOT NULL,
  `cus_address1` varchar(150) NOT NULL,
  `cus_address2` varchar(150) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cus_logintype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>Admin user, 2=> Website User, 3=> Facebook User, 4=>Google+ User',
  `cus_status` int(11) NOT NULL COMMENT '0 unblock 1 block',
  `cus_pic` varchar(150) NOT NULL,
  `created_date` date NOT NULL,
  `wallet` bigint(100) NOT NULL,
  `ship_name` varchar(50) NOT NULL,
  `ship_address1` varchar(100) NOT NULL,
  `ship_address2` varchar(100) NOT NULL,
  `ship_ci_id` int(11) NOT NULL,
  `ship_state` varchar(100) NOT NULL,
  `ship_country` int(11) NOT NULL,
  `ship_postalcode` varchar(30) NOT NULL,
  `ship_phone` varchar(25) NOT NULL,
  `ship_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_customer`
--

INSERT INTO `nm_customer` (`cus_id`, `cus_name`, `facebook_id`, `google_id`, `cus_email`, `cus_pwd`, `cus_phone`, `cus_address1`, `cus_address2`, `cus_country`, `cus_city`, `cus_joindate`, `cus_logintype`, `cus_status`, `cus_pic`, `created_date`, `wallet`, `ship_name`, `ship_address1`, `ship_address2`, `ship_ci_id`, `ship_state`, `ship_country`, `ship_postalcode`, `ship_phone`, `ship_email`) VALUES
(1, 'Malar M', '225941908215843', '', 'malar.pofi@yahoo.com', '', '9632587410', 'Test', 'Test', '1', '1', '2018-05-03 10:39:35', 3, 1, '', '0000-00-00', 10, '', '', '', 0, '', 0, '', '', ''),
(2, 'Ishwarya', '', '', 'suganya.t@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9944349002', 'cbe', 'cbe', '1', '1', '2018-05-04 11:19:19', 2, 0, '', '2018-05-04', 0, 'Ishwarya', '', '', 1, '', 1, '', '9944349002', 'prmg@mailinator.com'),
(3, 'Ishwarya', '', '', 'ish@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', '', '', '1', '1', '2018-05-04 11:31:26', 2, 0, '', '2018-05-04', 0, 'Ishwarya', '', '', 1, '', 1, '', '9876543210', 'ish@mailinator.com'),
(4, 'New', '', '', 'new@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', '', '', '1', '1', '2018-05-05 05:30:05', 2, 0, '', '2018-05-05', 0, 'New', '', '', 1, '', 1, '', '9876543210', 'new@mailinator.com'),
(5, 'Vinod Vinod', '2054827381404303', '', 'test21689@gmail.com', '', '', '', '', '', '', '2018-05-12 10:42:03', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(6, 'Kshitij Verma', '2063013387273794', '', 'kshitijv160@gmail.com', '', '', '', '', '', '', '2018-05-21 08:43:37', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(7, 'priya', '', '', 'priyadharsini@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', '', '', '1', '1', '2018-05-24 04:20:15', 2, 0, '', '2018-05-24', 10, 'priya', '', '', 1, '', 1, '', '1234567890', 'priyadharsini@pofitec.com'),
(8, 'rajeshkumar', '', '', 'erkprajesh@gmail.com', '4297f44b13955235245b2497399d7a93', '9500818702', '', '', '1', '1', '2018-05-24 10:31:14', 2, 0, '', '2018-05-24', 0, 'rajeshkumar', '', '', 1, '', 1, '', '9500818702', 'erkprajesh@gmail.com'),
(9, 'mahes', '', '', 'maheswaran@pofitec.com', '49bb197bec17b7d20b2df6b1f3c3434a', '9789310461', '', '', '1', '1', '2018-05-24 10:32:34', 2, 0, '', '2018-05-24', 0, 'mahes', '', '', 1, '', 1, '', '9789310461', 'maheswaran@pofitec.com'),
(10, 'Rajesh Kumar', '248521882371186', '', 'ramyaa.mike@gmail.com', '', '', '', '', '', '', '2018-05-24 10:41:27', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(11, 'venugopal', '', '', 'venugopal@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '3456765434', '', '', '1', '1', '2018-05-24 11:12:50', 2, 0, '', '2018-05-24', 0, 'venugopal', '', '', 1, '', 1, '', '3456765434', 'venugopal@pofitec.com'),
(12, 'User', '', '', 'kumar@laravelecommerce.com', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', '', '', '1', '1', '2018-05-24 11:14:29', 2, 0, 'venusA3WmxdBP.png', '2018-05-24', 55, 'user', '', '', 1, '', 1, '', '1234567890', 'user@laravelecommerce.com'),
(13, 'ishwarya', '', '', 'ishwarya@pofitec.com', '81dc9bdb52d04dc20036dbd8313ed055', '9789310461', '', '', '1', '1', '2018-05-24 11:45:46', 2, 0, '', '2018-05-24', 0, 'ishwarya', '', '', 1, '', 1, '', '9789310461', 'ishwarya@pofitec.com'),
(14, 'kumar', '', '', 'kumar@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:48:18', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(15, 'Demo', '', '', 'demo@testu.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:48:43', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(16, 'kumar', '', '', 'kumar@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:49:45', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(17, 'kumar', '', '', 'kumar@laravelecommerce.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:50:02', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(18, 'kumar', '', '', 'kumar@laravelecommerce.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:50:08', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(19, 'kumar', '', '', 'kumar@laravelecommerce.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:50:17', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(20, 'kumar', '', '', 'kumar@laravelecommerce.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 09:51:23', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(21, 'vishnu', '', '', 'vishnu@pofitec.com', '1963fd70e789022f6f5b11498f992404', '', '', '', '1', '1', '2018-05-30 09:53:05', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(22, 'kumar', '', '', 'vishnu@pofitec.com', 'eb6d009ff37f38ef7c025c3eba4b191e', '', '', '', '1', '1', '2018-05-30 09:53:12', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(23, 'kumar', '', '', 'vis4u@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-05-30 10:07:47', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(24, 'Test', '', '', 'test@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '9638527410', '', '', '1', '1', '2018-05-30 11:40:42', 2, 0, 'Dkw5Zp-112664068_1526605491060HokathUS.gif', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(25, 'Rubic Boa', '10217149981210194', '', 'ihor.kashuba@gmail.com', '', '', '', '', '', '', '2018-05-30 19:14:52', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(26, 'New', '', '', 'new123@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '9638527089', '', '', '1', '1', '2018-05-31 05:52:14', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(27, 'Deepak', '', '', 'kundra45@gmail.com', 'fa49efa05da3c6ef4657471f8f28eec4', '9888428466', '', '', '1', '1', '2018-05-31 06:54:31', 2, 0, '', '2018-05-31', 0, 'Deepak', '', '', 1, '', 1, '', '9888428466', 'kundra45@gmail.com'),
(28, 'Arun Jain', '', '', 'arunjain312@yahoo.com', '25d55ad283aa400af464c76d713c07ad', '9198892630', '', '', '3', '4', '2018-05-31 12:27:47', 2, 0, '', '2018-05-31', 0, 'Arun Jain', '', '', 4, '', 3, '', '9198892630', 'arunjain312@yahoo.com'),
(29, 'Emran Khan', '1805119716215522', '', 'emrannkhan@ymail.com', '', '', '', '', '', '', '2018-06-01 07:11:18', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(30, 'Madhu', '', '', 'madhu@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', '', '1', '1', '2018-06-13 12:44:36', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(31, 'Gugan', '', '', 'gugangugan94@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9638527410', '', '', '1', '1', '2018-06-13 15:12:21', 2, 0, 'user-profileOpHGHbye.jpg', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(32, 'Check', '', '', 'check@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-06-14 05:06:33', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(33, 'isg', '', '', 'ishwarya@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '9632587410', 'test', 'test', '1', '1', '2018-06-14 05:07:38', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(34, 'Test', '', '', 'testing@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9638521470', '', '', '1', '1', '2018-06-15 05:37:53', 2, 0, 'images-25bQBumGCl.jpg', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(35, 'Nazeer Pofitec', '126255461599608', '', 'nazeer@pofitec.com', '', '9445847696', '', '', '', '', '2018-06-15 11:09:51', 3, 0, 'IMG_20180326_105803GBJdCuEe.jpg', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(36, 'kailash', '', '', 'kumarkailash075@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9092398789', '', '', '1', '1', '2018-06-16 05:43:37', 2, 0, '', '2018-06-16', 0, 'kailash', '', '', 1, '', 1, '', '9092398789', 'kumarkailash075@gmail.com'),
(37, 'Test', '', '', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-06-16 07:59:28', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(38, 'Anjar Sasongko', '', '', 'widhyosasongko@gmail.com', 'b11d5ece6353d17f85c5ad30e0a02360', '', '', '', '3', '3', '2018-06-17 02:18:50', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(39, 'Ugyen Pelden Dorji', '1119860704819348', '', 'udorji625@gmail.com', '', '', '', '', '', '', '2018-06-17 14:34:42', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(40, 'Fly', '404281243386185', '', 'flyflyerson@gmail.com', '', '', '', '', '', '', '2018-06-17 14:55:04', 3, 1, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(41, 'ramiz', '', '', 'tweetwap@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9876543210', '', '', '1', '1', '2018-06-17 17:41:11', 2, 1, '', '2018-06-17', 0, 'ramiz', '', '', 1, '', 1, '', '9876543210', 'tweetwap@gmail.com'),
(42, 'Pofi', '230199371095840', '', 'tester.pofi@gmail.com', '', '', '', '', '', '', '2018-06-19 05:28:44', 3, 1, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(43, 'Pratap', '452254618557678', '', 'pratap13mnr@gmail.com', '', '8080809063', '', '', '', '', '2018-06-19 05:48:13', 3, 1, 'user-profileFWrJMe8J.jpg', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(44, 'Tshering', '1844574012513609', '', 'metsheringzangmo@gmail.com', '', '', '', '', '', '', '2018-06-19 09:31:01', 3, 1, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(45, 'Sherly Paris', '112318939672924', '', 'sherly@pofitec.com', '', '9874563210', 'testinfg', 'test', '1', '2', '2018-06-20 05:38:44', 3, 0, '', '0000-00-00', 10, '', '', '', 0, '', 0, '', '', ''),
(46, 'Test', '', '', 'ish@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9338527410', '', '', '1', '1', '2018-06-21 10:07:01', 2, 0, 'user-profileRwzYhzd3.jpg', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(47, 'suganya', '', '', 'suganya@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-06-21 11:05:37', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(48, 'aaa', '', '', 'a@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8765432108', '', '', '1', '1', '2018-06-21 11:38:19', 2, 0, '', '2018-06-21', 0, 'aaa', '', '', 1, '', 1, '', '8765432108', 'a@gmail.com'),
(49, 'Demo', '', '', 'demo@pofitec.com', '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', '1', '1', '2018-06-21 11:55:22', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(50, 'Dhurba Joshi', '10216327999813807', '', 'dr_joshi@live.com', '', '', '', '', '', '', '2018-06-21 17:20:08', 3, 2, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(51, 'Ishwarya', '', '', 'ish@gmail.con', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-06-22 04:42:28', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(52, 'New', '', '', 'recheck@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', '9874563210', 'Tesr', 'Tes345', '1', '1', '2018-06-22 06:11:18', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(53, 'Devaraj Palanisamy', '2106626679607332', '', 'undefined', '', '', '', '', '', '', '2018-06-23 09:40:31', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(54, 'Test', '', '', 'test@gmail.con', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-06-23 10:19:45', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(55, 'figxicoh', '', '', 'idditi@yoffoy.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-06-23 13:05:05', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(57, 'John Estrada ', '', '', 'john@myoffice.io', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '3', '3', '2018-06-25 17:50:44', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(58, 'Chhety ', '', '', 'chhety456@gmail.com', '4cb37599812cf0cd5b192943aff51b82', '', '', '', '1', '1', '2018-06-26 11:29:00', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(59, 'New', '', '', 'updated@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9632587410', '', '', '1', '1', '2018-06-27 09:43:21', 2, 0, 'GIF_1529825349031_1529825280408_1530059996916XE6mG2d6.gif', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(60, 'Naveen Reddy', '2147483647', '', 'naveenshd@gmail.com', '', '', '', '', '', '', '2018-06-28 07:22:25', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(61, 'Rabbi', '', '', 'info.office@rabbitek.com', '91ffa1ac80f74f33e888b2df7a7161d2', '', '', '', '3', '3', '2018-07-01 02:47:16', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(62, 'john', '', '', 'kaolin1974@gmail.com', '32250170a0dca92d53ec9624f336ca24', '', '', '', '3', '3', '2018-07-01 17:12:44', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(63, 'Malar M', '225941908215843', '', 'malar.pofi@yahoo.com', '', '', '', '', '', '', '2018-07-02 10:17:07', 3, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(64, 'Ggsdnh', '', '', 'gedjdjfnr@mail.com', '097c95ae58d14bf44171e7fda544054f', '', '', '', '3', '3', '2018-07-02 20:18:55', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(65, 'Kuber ', '', '', 'shankaraingjr535@gmail.com', '3281f6404a21cbef720084c883a555fc', '', '', '', '1', '2', '2018-07-03 18:05:22', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(66, 'Test Account', '', '', 'test@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '1', '1', '2018-07-04 05:05:57', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(67, 'santhosh', '', '', 'santhosh@pofitec.com', '57c9c46fb1350b9e4072c7486fb9c58a', '8300687371', '', '', '1', '2', '2018-07-04 13:21:45', 2, 0, '', '2018-07-04', 0, 'santhosh', '', '', 2, '', 1, '', '8300687371', 'santhosh@pofitec.com'),
(68, 'Sagar', '', '', 'sagar@mukesoft.com', '202cb962ac59075b964b07152d234b70', '', '', '', '1', '1', '2018-07-05 11:09:47', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(69, 'fhcjc', '', '', 'yusuf@gmail.clm', 'e08f1c1c177ee5d9742d523b8ef888b1', '', '', '', '1', '2', '2018-07-07 04:25:39', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(70, 'chamapk', '', '', 'ChMpak21@gmail.com', '02b1be0d48924c327124732726097157', '', '', '', '1', '2', '2018-07-07 05:49:32', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(71, 'Invento', '', '', 'shabonbusiness@gmail.com', 'eb04d3159584bfb71096646b6be75be3', '', '', '', '1', '1', '2018-07-07 06:48:05', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(72, 'I ', '', '', 'am@le.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '', '3', '3', '2018-07-09 08:46:23', 2, 0, '', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(73, 'Tuan', '', '', 'di4ldev@gmail.com', 'b24331b1a138cde62aa1f679164fc62f', '0986036164', '', '', '3', '4', '2018-07-10 04:49:24', 2, 0, 'user-profileS7y6bIb2.jpg', '0000-00-00', 0, '', '', '', 0, '', 0, '', '', ''),
(74, 'devaraj', '', '', 'devaraj@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9585850362', '', '', '1', '1', '2018-07-10 07:52:49', 2, 0, '', '2018-07-10', 0, 'devaraj', '', '', 1, '', 1, '', '9585850362', 'devaraj@pofitec.com'),
(75, 'vinodbabu', '', '', 'venugopal1@pofitec.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', '', '', '1', '1', '2018-07-11 08:56:26', 2, 0, '', '2018-07-11', 0, 'vinodbabu', '', '', 1, '', 1, '', '9876543210', 'venugopal1@pofitec.com');

-- --------------------------------------------------------

--
-- Table structure for table `nm_deals`
--

CREATE TABLE `nm_deals` (
  `deal_id` int(11) NOT NULL,
  `deal_title` varchar(500) NOT NULL,
  `deal_title_fr` varchar(250) NOT NULL,
  `deal_category` int(11) NOT NULL,
  `deal_main_category` int(11) NOT NULL,
  `deal_sub_category` int(11) NOT NULL,
  `deal_second_sub_category` int(11) NOT NULL,
  `deal_original_price` int(11) NOT NULL,
  `deal_discount_price` int(11) NOT NULL,
  `deal_discount_percentage` int(11) NOT NULL,
  `deal_saving_price` int(11) NOT NULL,
  `deal_inctax` varchar(10) NOT NULL DEFAULT '0',
  `deal_shippamt` varchar(10) NOT NULL,
  `deal_start_date` datetime NOT NULL,
  `deal_end_date` datetime NOT NULL,
  `deal_expiry_date` date NOT NULL,
  `deal_description` text NOT NULL,
  `deal_description_fr` text NOT NULL,
  `deal_merchant_id` int(11) NOT NULL,
  `deal_shop_id` int(11) NOT NULL,
  `deal_meta_keyword` varchar(250) NOT NULL,
  `deal_meta_keyword_fr` varchar(250) NOT NULL,
  `deal_meta_description` varchar(500) NOT NULL,
  `deal_meta_description_fr` varchar(500) NOT NULL,
  `deal_min_limit` int(11) NOT NULL,
  `deal_max_limit` int(11) NOT NULL,
  `deal_purchase_limit` int(11) NOT NULL,
  `deal_image_count` int(11) NOT NULL,
  `deal_image` varchar(500) NOT NULL,
  `deal_no_of_purchase` int(11) NOT NULL,
  `created_date` varchar(20) NOT NULL,
  `deal_status` int(11) NOT NULL DEFAULT '1' COMMENT '1-active, 0-block',
  `deal_posted_date` datetime NOT NULL,
  `deal_delivery` int(11) NOT NULL,
  `allow_cancel` enum('0','1') NOT NULL COMMENT '0-No,1-Yes',
  `allow_return` enum('0','1') NOT NULL COMMENT '0-No,1-Yes',
  `allow_replace` enum('0','1') NOT NULL COMMENT '0-No,1-Yes',
  `cancel_policy` text NOT NULL,
  `cancel_policy_fr` text NOT NULL,
  `return_policy` text NOT NULL,
  `return_policy_fr` text NOT NULL,
  `replace_policy` text NOT NULL,
  `replace_policy_fr` text NOT NULL,
  `cancel_days` int(11) NOT NULL,
  `return_days` int(11) NOT NULL,
  `replace_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_deals`
--

INSERT INTO `nm_deals` (`deal_id`, `deal_title`, `deal_title_fr`, `deal_category`, `deal_main_category`, `deal_sub_category`, `deal_second_sub_category`, `deal_original_price`, `deal_discount_price`, `deal_discount_percentage`, `deal_saving_price`, `deal_inctax`, `deal_shippamt`, `deal_start_date`, `deal_end_date`, `deal_expiry_date`, `deal_description`, `deal_description_fr`, `deal_merchant_id`, `deal_shop_id`, `deal_meta_keyword`, `deal_meta_keyword_fr`, `deal_meta_description`, `deal_meta_description_fr`, `deal_min_limit`, `deal_max_limit`, `deal_purchase_limit`, `deal_image_count`, `deal_image`, `deal_no_of_purchase`, `created_date`, `deal_status`, `deal_posted_date`, `deal_delivery`, `allow_cancel`, `allow_return`, `allow_replace`, `cancel_policy`, `cancel_policy_fr`, `return_policy`, `return_policy_fr`, `replace_policy`, `replace_policy_fr`, `cancel_days`, `return_days`, `replace_days`) VALUES
(1, 'toys', '', 1, 1, 0, 0, 100, 50, 50, 50, '', '0', '2018-06-15 16:16:00', '2018-06-15 21:16:00', '2018-06-15', 'See a rich collection of stock images, vectors, or photos for kids toys you can buy on Shutterstock. Explore quality images, photos, art &amp; more.', '', 1, 1, 'test    ', '', 'test', '', 0, 10, 0, 0, 'Deal_1525499648366326519.jpg/**/', 0, '05/03/2018', 0, '2018-06-15 10:30:35', 2, '1', '1', '1', 'See a rich collection of stock images, vectors, or photos for kids toys you can buy on Shutterstock. Explore quality images, photos, art &amp; more.', '', 'See a rich collection of stock images, vectors, or photos for kids toys you can buy on Shutterstock. Explore quality images, photos, art &amp; more.', '', 'See a rich collection of stock images, vectors, or photos for kids toys you can buy on Shutterstock. Explore quality images, photos, art &amp; more.', '', 1, 1, 1),
(2, 'micky toy', '', 1, 1, 0, 0, 5000, 4500, 10, 500, '10', '20', '2018-06-25 01:29:00', '2018-07-19 05:29:00', '2018-07-19', 'Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.', '', 1, 1, 'test    ', '', 'test', '', 0, 10, 0, 0, 'Deal_15253453151997521476.jpg/**/', 0, '05/03/2018', 0, '2018-06-25 11:23:27', 2, '1', '1', '1', 'Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.', '', 'Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.', '', 'Download 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.\r\nDownload 30076 Baby Toys Stock Photos for FREE or amazingly low rates! New users enjoy 60% OFF. 77770412 stock photos online.', '', 1, 1, 1),
(3, 'Saree', '', 2, 3, 0, 0, 100, 75, 25, 25, '10', '20', '2018-05-05 10:27:00', '2018-05-07 10:27:00', '2018-05-07', 'B1 something that tells you what something or someone is like: Write a description of your favourite beach. She has given the police a very detailed/full description of the robber. A girl answering (= matching) the description of the missing teenager was spotted in Glasgow.', '', 1, 1, 'Test    ', '', 'testing', '', 0, 10, 0, 0, 'Deal_15265376341310110854.jpg/**/', 0, '05/05/2018', 1, '2018-06-04 14:19:20', 2, '1', '1', '1', 'Testing', '', 'Testing', '', 'Testing', '', 1, 1, 1),
(4, 'Redmi Note 4 (Dark Grey, 64 GB)  (4 GB RAM)', '', 4, 9, 0, 0, 12999, 11999, 7, 1000, '', '0', '2018-05-24 08:58:00', '2018-07-31 08:58:00', '2018-07-31', '4 GB RAM | 64 GB ROM | Expandable Upto 128 GB\r\n5.5 inch Full HD Display\r\n13MP Rear Camera | 5MP Front Camera\r\n4100 mAh Li-Polymer Battery\r\nQualcomm Snapdragon 625 64-bit Octa Core 2GHz Processor', '', 3, 3, 'Redmi Note 4 (Dark Grey, 64 GB)  (4 GB RAM)\r\n ', '', 'Redmi Note 4 (Dark Grey, 64 GB)  (4 GB RAM)\r\n', '', 0, 26, 0, 0, 'Deal_1527133970209381822.jpg/**/Deal_152713397078259581.jpeg/**/', 21, '05/24/2018', 1, '2018-05-24 09:25:32', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(5, 'Honor 9 Lite (Sapphire Blue, 32 GB)  (3 GB RAM)', '', 4, 9, 0, 0, 13999, 12999, 7, 1000, '', '0', '2018-05-24 09:25:00', '2018-07-30 09:25:00', '2018-07-30', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB\r\n5.65 inch FHD+ Display\r\n13MP + 2MP Dual Rear Camera | 13MP + 2MP Dual Front Camera\r\n3000 mAh Battery\r\nKirin 659 Processor\r\nFace Unlock\r\nRide Mode', '', 3, 3, 'Honor 9 Lite (Sapphire Blue, 32 GB)  (3 GB RAM)', '', 'Honor 9 Lite (Sapphire Blue, 32 GB)  (3 GB RAM)', '', 0, 30, 0, 3, 'Deal_15271344191389866694.jpg/**/Deal_15271344191789304501.jpg/**/Deal_15271344191766347075.jpg/**/', 21, '05/24/2018', 1, '2018-05-24 09:30:19', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(6, 'Apple iPhone X (Space Gray, 64 GB)', '', 4, 9, 0, 0, 89000, 85999, 3, 3001, '', '0', '2018-05-24 09:33:00', '2018-07-31 09:33:00', '2018-07-31', '64 GB ROM |\r\n5.8 inch Super Retina HD Display\r\n12MP + 12MP Dual Rear Camera | 7MP Front Camera\r\nlithium-ion Battery\r\nA11 Bionic Chip with 64-bit Architecture, Neural Engine, Embedded M11 Motion Coprocessor Processor\r\n\r\nMeet the iPhone X - the device that’s so smart that it responds to a tap, your voice, and even a glance. Elegantly designed with a large 14.73 cm (5.8) Super Retina screen and a durable front-and-back glass, this smartphone is designed to impress. What’s more, you can charge this iPhone wirelessly.', '', 3, 3, 'Apple iPhone X (Space Gray, 64 GB)', '', 'Apple iPhone X (Space Gray, 64 GB)', '', 0, 34, 0, 3, 'Deal_15271348831622115352.jpg/**/Deal_15271348831175633686.jpg/**/Deal_1527134883820235975.jpg/**/', 8, '05/24/2018', 1, '2018-05-24 09:38:03', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(7, 'S7', '', 6, 13, 0, 0, 50000, 40000, 20, 10000, '10', '20', '2018-06-04 10:02:00', '2018-08-06 10:32:00', '2018-08-06', 'iPhone is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple\'s iOS mobile operating system software.\r\niPhone is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple\'s iOS mobile operating system software.', '', 4, 4, ' ', '', '', '', 0, 10, 0, 0, 'Deal_15277430811644480437.jpg/**/', 3, '05/31/2018', 1, '2018-06-04 10:06:02', 2, '1', '1', '1', 'test', '', 'test', '', 'test', '', 1, 1, 1),
(8, 'test1', '', 6, 13, 0, 0, 100, 50, 50, 50, '', '0', '2018-05-31 11:22:00', '2018-05-31 15:22:00', '2018-05-31', 'test', '', 4, 4, '', '', '', '', 0, 10, 0, 1, 'Deal_1527746040145084557.jpg/**/', 2, '05/31/2018', 1, '2018-05-31 11:24:00', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(9, 'i phone x', '', 5, 12, 0, 0, 250, 150, 40, 100, '5', '0', '2018-06-06 12:57:00', '2018-06-21 12:57:00', '2018-06-21', 'metal layout with outstanding specifications.', '', 1, 1, 'Al', '', 'Mobile phone ', '', 0, 50, 0, 1, 'Deal_15281839151651985757.jpeg/**/', 6, '06/05/2018', 1, '2018-06-05 13:01:55', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(10, 'deal ios', '', 8, 19, 0, 0, 100, 50, 50, 50, '10', '20', '2018-06-13 18:22:00', '2018-06-14 00:22:00', '2018-06-14', 'test', '', 6, 6, 'test', '', 'test', '', 0, 10, 0, 1, 'Deal_15288944041368671970.jpg/**/', 0, '06/13/2018', 1, '2018-06-13 18:23:24', 3, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(11, '123', '', 8, 19, 0, 0, 1000, 500, 50, 500, '', '0', '2018-06-13 18:32:00', '2018-06-13 22:32:00', '2018-06-13', 'test', '', 6, 6, 'test', '', 'test', '', 0, 10, 0, 1, 'Deal_15288949911586297213.jpg/**/', 1, '06/13/2018', 1, '2018-06-13 18:33:11', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(12, 'Testintg', '', 8, 19, 0, 0, 1000, 850, 15, 150, '10', '20', '2018-06-14 10:17:00', '2018-06-14 22:17:00', '2018-06-14', 'Test', '', 1, 1, 'test  ', '', 'test', '', 0, 20, 0, 0, 'Deal_1528951688634580685.jpg/**/', 10, '06/14/2018', 1, '2018-06-15 16:19:59', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(13, '111', '', 8, 18, 0, 0, 100, 50, 50, 50, '', '0', '2018-06-14 10:18:00', '2018-06-14 14:18:00', '2018-06-14', 'test', '', 1, 1, 'test', '', 'test', '', 0, 10, 0, 1, 'Deal_15289517291678917152.jpg/**/', 10, '06/14/2018', 1, '2018-06-14 10:18:49', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(14, 'deal testing1', '', 9, 21, 0, 0, 500, 450, 10, 50, '20', '10', '2018-06-14 18:23:00', '2018-06-14 21:23:00', '2018-06-14', 'testing\r\nnew process\r\nwith ui\r\nnew testing\r\ntesting\r\nnew process\r\nwith ui\r\nnew testing\r\n', '', 7, 7, '', '', '', '', 0, 10, 0, 1, 'Deal_15289808791084964164.jpg/**/', 2, '06/14/2018', 1, '2018-06-14 18:24:39', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(15, '1234566', '', 10, 22, 3, 0, 100, 100, 0, 0, '10', '20', '2018-06-15 11:24:00', '2018-06-15 18:24:00', '2018-06-15', 'Test\r\nTesting\r\nnew \r\npages\r\nwith the pages\r\n', '', 8, 8, 'test', '', 'test', '', 0, 10, 0, 1, 'Deal_15290421521313858117.jpg/**/', 0, '06/15/2018', 1, '2018-06-15 11:25:52', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(16, 'dress', '', 10, 22, 3, 0, 1000, 500, 50, 500, '10', '20', '2018-06-22 15:51:00', '2018-06-26 15:51:00', '2018-06-26', 'test', '', 10, 10, '', '', '', '', 0, 10, 0, 1, 'Deal_1529662984173136320.jpg/**/', 8, '06/22/2018', 1, '2018-06-22 15:53:04', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(17, 'New deal', '', 10, 22, 0, 0, 1000, 950, 5, 50, '', '0', '2018-06-23 12:06:00', '2018-06-30 18:06:00', '2018-06-30', 'Testing', '', 11, 11, 'test', '', 'test', '', 0, 10, 0, 1, 'Deal_15297358151691232886.jpg/**/', 4, '06/23/2018', 1, '2018-06-23 12:06:55', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(18, 'Test', '', 10, 22, 0, 0, 1000, 950, 5, 50, '10', '20', '2018-06-23 12:15:00', '2018-06-26 19:15:00', '2018-06-26', 'test', '', 11, 11, 'test', '', 'test', '', 0, 10, 0, 1, 'Deal_15297363872098224239.jpg/**/', 3, '06/23/2018', 1, '2018-06-23 12:16:27', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(19, 'Deal', '', 10, 22, 0, 0, 1000, 950, 5, 50, '', '0', '2018-06-23 12:17:00', '2018-06-23 17:17:00', '2018-06-23', 'tesr', '', 10, 10, 'ghu', '', 'ghui', '', 0, 10, 0, 1, 'Deal_15297365241670773658.jpg/**/', 10, '06/23/2018', 1, '2018-06-23 12:18:44', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(20, 'android deal', '', 11, 24, 0, 0, 1000, 750, 25, 250, '10', '20', '2018-06-27 15:34:00', '2018-06-27 21:34:00', '2018-06-27', 'test', '', 12, 12, '', '', '', '', 0, 10, 0, 1, 'Deal_15300939081858832096.jpg/**/', 1, '06/27/2018', 1, '2018-06-27 15:35:08', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(21, 'add deal1', '', 11, 25, 0, 0, 10, 5, 50, 5, '', '0', '2018-06-28 15:35:00', '2018-06-29 15:35:00', '2018-06-29', 'test', '', 12, 12, 'tes', '', 're', '', 0, 10, 0, 1, 'Deal_1530093958794389998.jpg/**/', 0, '06/27/2018', 1, '2018-06-27 15:35:58', 2, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(22, 'new deal', '', 11, 24, 4, 2, 100, 50, 50, 50, '10', '20', '2018-07-02 16:12:00', '2018-07-05 21:12:00', '2018-07-05', 'testing', '', 13, 13, '', '', '', '', 0, 10, 0, 1, 'Deal_1530528194711648129.jpg/**/', 2, '07/02/2018', 1, '2018-07-02 16:13:14', 0, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(23, 'my deal', '', 1, 1, 0, 0, 150, 100, 33, 50, '10', '0', '2018-07-04 15:41:00', '2018-07-05 15:41:00', '2018-07-05', 'ff', '', 1, 1, 'f', '', 'rr', '', 0, 4, 0, 1, 'Deal_15306991991328931138.jpg/**/', 0, '07/04/2018', 1, '2018-07-04 15:43:19', 10, '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_emailsetting`
--

CREATE TABLE `nm_emailsetting` (
  `es_id` tinyint(3) UNSIGNED NOT NULL,
  `es_contactname` varchar(150) NOT NULL,
  `es_contactemail` varchar(150) NOT NULL,
  `es_skype_email_id` varchar(500) NOT NULL,
  `es_webmasteremail` varchar(150) NOT NULL,
  `es_noreplyemail` varchar(150) NOT NULL,
  `es_phone1` varchar(20) NOT NULL,
  `es_phone2` varchar(20) NOT NULL,
  `es_latitude` decimal(18,14) NOT NULL,
  `es_longitude` decimal(18,14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_emailsetting`
--

INSERT INTO `nm_emailsetting` (`es_id`, `es_contactname`, `es_contactemail`, `es_skype_email_id`, `es_webmasteremail`, `es_noreplyemail`, `es_phone1`, `es_phone2`, `es_latitude`, `es_longitude`) VALUES
(1, 'Abdalla', 'sales@laravelecommerce.com', 'sales@laravelecommerce.com', 'sales@laravelecommerce.com', 'sales@laravelecommerce.com', '+919790153222', '+1 (972) 591 8222', '7.98591014355452', '80.73921674804683');

-- --------------------------------------------------------

--
-- Table structure for table `nm_enquiry`
--

CREATE TABLE `nm_enquiry` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(50) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `enq_readstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_enquiry`
--

INSERT INTO `nm_enquiry` (`id`, `name`, `email`, `phone`, `message`, `status`, `created_date`, `enq_readstatus`) VALUES
(1, 'Isjsjn', 'ish@mailinator.com', '9944349002', 'Tetsghsjsjsjsjsnsjwkiwiwjejehshjs', 1, '2018-05-05', 1),
(2, 'fdgv', 'dfv@gmai.com', 'd6756', 'fchnfgnh', 1, '2018-05-05', 1),
(3, 'lakshmi', 'lakshmi@pofitec.com', '75983', 'ssdhh', 1, '2018-06-09', 1),
(4, 'Amber Stevens', 'utpmdxondf@tpivhzm.com', 'http://xahl.de/p', 'This is a comment to the Laravel Ecommerce Online shopping webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will dramatically increase your traffic to your website: http://insl.co/11 - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://xahl.de/q', 1, '2018-07-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_estimate_zipcode`
--

CREATE TABLE `nm_estimate_zipcode` (
  `ez_id` int(11) NOT NULL,
  `ez_code_series` int(11) NOT NULL,
  `ez_code_series_end` int(11) NOT NULL,
  `ez_code_days` int(11) NOT NULL,
  `ez_status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_estimate_zipcode`
--

INSERT INTO `nm_estimate_zipcode` (`ez_id`, `ez_code_series`, `ez_code_series_end`, `ez_code_days`, `ez_status`) VALUES
(1, 641001, 641051, 2, 1),
(2, 642001, 642001, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_faq`
--

CREATE TABLE `nm_faq` (
  `faq_id` smallint(5) UNSIGNED NOT NULL,
  `faq_name` varchar(256) NOT NULL,
  `faq_name_fr` varchar(250) NOT NULL,
  `faq_ans` text NOT NULL,
  `faq_ans_fr` text NOT NULL,
  `faq_status` tinyint(4) NOT NULL COMMENT '0=>unblock,1=>block'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_faq`
--

INSERT INTO `nm_faq` (`faq_id`, `faq_name`, `faq_name_fr`, `faq_ans`, `faq_ans_fr`, `faq_status`) VALUES
(1, 'A product key is a 25-character code that comes with a Microsoft Office product. The product key allows you to install and activate the Office product on your PC.', '', 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\nFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...', '', 0),
(2, 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will i', '', 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...\r\n', '', 0),
(3, 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will i', '', 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...VFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...', '', 0),
(4, 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will i', '', 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...', '', 0),
(5, 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will i', '', 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...', '', 0),
(6, 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will i', '', 'Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...vFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...vFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...vFrequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...Frequently Asked Questions. How do I apply for a new or replacement Social Security number card? How do I change or correct my name on my Social Security number card? What happens if I work and get Social Security retirement benefits? How long will it take to get a Social Security card? How can I get a benefit ...v', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_generalsetting`
--

CREATE TABLE `nm_generalsetting` (
  `gs_id` tinyint(4) NOT NULL,
  `gs_sitename` varchar(100) NOT NULL,
  `gs_sitename_fr` varchar(200) NOT NULL,
  `gs_sitedescription` varchar(200) NOT NULL,
  `gs_sitedescription_fr` varchar(200) NOT NULL,
  `gs_metatitle` varchar(150) NOT NULL,
  `gs_metatitle_fr` varchar(150) NOT NULL,
  `gs_metakeywords` text NOT NULL,
  `gs_metakeywords_fr` text NOT NULL,
  `gs_metadesc` text NOT NULL,
  `gs_metadesc_fr` text NOT NULL,
  `gs_defaulttheme` tinyint(3) UNSIGNED NOT NULL,
  `gs_defaultlanguage` tinyint(3) UNSIGNED NOT NULL,
  `gs_payment_status` varchar(50) NOT NULL,
  `gs_paypal_payment` varchar(100) NOT NULL,
  `gs_payumoney_status` varchar(100) NOT NULL,
  `gs_themes` varchar(20) NOT NULL,
  `gs_playstore_url` varchar(500) NOT NULL,
  `gs_apple_appstore_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_generalsetting`
--

INSERT INTO `nm_generalsetting` (`gs_id`, `gs_sitename`, `gs_sitename_fr`, `gs_sitedescription`, `gs_sitedescription_fr`, `gs_metatitle`, `gs_metatitle_fr`, `gs_metakeywords`, `gs_metakeywords_fr`, `gs_metadesc`, `gs_metadesc_fr`, `gs_defaulttheme`, `gs_defaultlanguage`, `gs_payment_status`, `gs_paypal_payment`, `gs_payumoney_status`, `gs_themes`, `gs_playstore_url`, `gs_apple_appstore_url`) VALUES
(1, 'Abdalla Online shopping ', 'Laravel Ecommerce french', 'Developed in Native Android & iOS Platform. Well Written Structured Code. Our App is user friendly and gives ample opportunities for guests and hosts ', '', 'Laravel Ecommerce Online shopping ', 'Laravel Ecommerce', 'Laravel Ecommerce Online shopping ', 'Laravel Ecommerce', 'Laravel Ecommerce Online shopping ', 'Laravel Ecommerce', 1, 1, 'COD', 'Paypal', 'PayUmoney', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nm_imagesetting`
--

CREATE TABLE `nm_imagesetting` (
  `imgs_id` smallint(6) NOT NULL,
  `imgs_name` varchar(150) NOT NULL,
  `imgs_type` tinyint(4) NOT NULL COMMENT '1- logo,2 -Favicon,3-noimage,4-product,5-deal,6-sores,7-blog_banner,8-upload_banner,9-category,10-ads_blog_image,''11''=>''category'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_imagesetting`
--

INSERT INTO `nm_imagesetting` (`imgs_id`, `imgs_name`, `imgs_type`) VALUES
(1, 'Logo_1531205310.jpg', 1),
(2, 'Favicon_1527140819_wc-shopping-cart.png', 2),
(3, 'No_image_No_image_1509364387_381x215.jpg', 3),
(4, 'No_image_1522327122_800x800', 4),
(5, 'No_image_1531291020_800x800.jpg', 5),
(6, 'No_image_1509364387_455x378.png', 6),
(7, 'No_image_1509364387_320x190.png', 7),
(8, 'No_image_1509364387_870x350.png', 8),
(9, 'No_image_1522661876_250x200.jpg', 9),
(10, 'No_image_1531289367_555x148.jpg', 10),
(11, 'No_image_1522661659_200x200.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `nm_image_sizes`
--

CREATE TABLE `nm_image_sizes` (
  `image_size_id` int(11) NOT NULL,
  `image_size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_image_sizes`
--

INSERT INTO `nm_image_sizes` (`image_size_id`, `image_size`) VALUES
(1, '{\"product\":{\"width\":800,\"height\":800},\"deals\":{\"width\":800,\"height\":800},\"logo\":{\"width\":180,\"height\":45},\"favicon\":{\"width\":16,\"height\":16},\"no_image\":{\"width\":381,\"height\":215},\"category_advertisment\":{\"width\":170,\"height\":400},\"category_banner\":{\"width\":250,\"height\":200},\"top_category\":{\"width\":200,\"height\":200},\"sub_category\":{\"width\":200,\"height\":200},\"sec_sub_category\":{\"width\":200,\"height\":200},\"ads\":{\"width\":555,\"height\":148},\"store\":{\"width\":455,\"height\":378},\"blog\":{\"width\":320,\"height\":190},\"no_image_banner\":{\"width\":845,\"height\":500}}');

-- --------------------------------------------------------

--
-- Table structure for table `nm_inquiries`
--

CREATE TABLE `nm_inquiries` (
  `iq_id` int(10) UNSIGNED NOT NULL,
  `iq_name` varchar(100) NOT NULL,
  `iq_emailid` varchar(150) NOT NULL,
  `iq_phonenumber` varchar(20) NOT NULL,
  `iq_message` varchar(300) NOT NULL,
  `inq_readstatus` int(11) NOT NULL DEFAULT '0' COMMENT '0-not read 1 read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_language`
--

CREATE TABLE `nm_language` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `lang_name` varchar(30) NOT NULL,
  `lang_status` int(4) NOT NULL COMMENT '1->Active,2->deactive',
  `lang_default` int(11) NOT NULL COMMENT '1->default,',
  `pack_lang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_language`
--

INSERT INTO `nm_language` (`lang_id`, `lang_code`, `lang_name`, `lang_status`, `lang_default`, `pack_lang`) VALUES
(1, 'en', 'English', 1, 1, 1),
(3, 'fr', 'French', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_login`
--

CREATE TABLE `nm_login` (
  `log_id` int(5) NOT NULL,
  `cus_id` int(5) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_type` int(11) NOT NULL DEFAULT '1' COMMENT '1-wesite,2 facebook'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_login`
--

INSERT INTO `nm_login` (`log_id`, `cus_id`, `log_date`, `log_type`) VALUES
(1, 1, '2018-05-02 05:05:02', 1),
(2, 1, '2018-05-02 05:05:02', 1),
(3, 1, '2018-05-02 05:05:02', 1),
(4, 1, '2018-05-02 05:05:02', 1),
(5, 2, '2018-05-02 05:15:12', 1),
(6, 1, '2018-05-03 10:39:35', 1),
(7, 4, '2018-05-05 05:31:23', 1),
(8, 4, '2018-05-05 06:50:50', 1),
(9, 4, '2018-05-05 07:20:53', 1),
(10, 4, '2018-05-05 09:19:04', 1),
(11, 4, '2018-05-05 12:22:05', 1),
(12, 3, '2018-05-07 10:46:06', 1),
(13, 2, '2018-05-12 04:34:09', 1),
(14, 2, '2018-05-12 04:43:17', 1),
(15, 5, '2018-05-12 10:42:03', 1),
(16, 2, '2018-05-12 10:42:49', 1),
(17, 4, '2018-05-17 06:18:12', 1),
(18, 6, '2018-05-21 08:43:37', 1),
(19, 7, '2018-05-24 04:20:39', 1),
(20, 7, '2018-05-24 05:39:55', 1),
(21, 8, '2018-05-24 10:31:31', 1),
(22, 9, '2018-05-24 10:33:27', 1),
(23, 10, '2018-05-24 10:41:27', 1),
(24, 7, '2018-05-24 10:42:24', 1),
(25, 12, '2018-05-24 11:14:40', 1),
(26, 13, '2018-05-24 11:46:38', 1),
(27, 13, '2018-05-24 11:47:24', 1),
(28, 13, '2018-05-24 11:48:10', 1),
(29, 13, '2018-05-24 11:49:12', 1),
(30, 13, '2018-05-24 11:50:19', 1),
(31, 9, '2018-05-24 11:50:27', 1),
(32, 12, '2018-05-25 06:45:19', 1),
(33, 12, '2018-05-25 06:51:23', 1),
(34, 12, '2018-05-25 07:03:16', 1),
(35, 12, '2018-05-25 07:16:53', 1),
(36, 12, '2018-05-25 07:44:38', 1),
(37, 12, '2018-05-25 07:44:54', 1),
(38, 12, '2018-05-25 14:48:28', 1),
(39, 12, '2018-05-25 20:16:49', 1),
(40, 12, '2018-05-26 08:23:27', 1),
(41, 12, '2018-05-27 07:50:16', 1),
(42, 12, '2018-05-27 17:51:06', 1),
(43, 12, '2018-05-28 04:36:01', 1),
(44, 12, '2018-05-28 04:52:17', 1),
(45, 12, '2018-05-28 06:08:32', 1),
(46, 12, '2018-05-28 13:00:24', 1),
(47, 12, '2018-05-28 13:09:53', 1),
(48, 12, '2018-05-29 04:35:33', 1),
(49, 12, '2018-05-29 05:16:22', 1),
(50, 12, '2018-05-29 06:09:32', 1),
(51, 12, '2018-05-29 10:23:09', 1),
(52, 12, '2018-05-30 02:45:55', 1),
(53, 12, '2018-05-30 04:25:02', 1),
(54, 12, '2018-05-30 06:13:37', 1),
(55, 12, '2018-05-30 10:24:20', 1),
(56, 12, '2018-05-30 11:01:46', 1),
(57, 12, '2018-05-30 12:06:45', 1),
(58, 25, '2018-05-30 19:14:52', 1),
(59, 12, '2018-05-30 19:15:02', 1),
(60, 12, '2018-05-31 04:49:32', 1),
(61, 27, '2018-05-31 06:55:27', 1),
(62, 28, '2018-05-31 12:28:31', 1),
(63, 12, '2018-05-31 12:49:39', 1),
(64, 12, '2018-06-01 04:07:12', 1),
(65, 12, '2018-06-01 05:03:11', 1),
(66, 12, '2018-06-01 05:26:18', 1),
(67, 12, '2018-06-01 05:27:06', 1),
(68, 29, '2018-06-01 07:11:18', 1),
(69, 12, '2018-06-01 08:26:52', 1),
(70, 12, '2018-06-01 11:51:47', 1),
(71, 12, '2018-06-01 12:05:16', 1),
(72, 12, '2018-06-01 13:36:27', 1),
(73, 12, '2018-06-01 16:08:21', 1),
(74, 12, '2018-06-02 23:47:01', 1),
(75, 12, '2018-06-03 17:24:11', 1),
(76, 12, '2018-06-03 18:51:17', 1),
(77, 12, '2018-06-04 05:11:45', 1),
(78, 12, '2018-06-04 05:39:41', 1),
(79, 12, '2018-06-05 04:43:09', 1),
(80, 12, '2018-06-05 08:16:12', 1),
(81, 12, '2018-06-05 09:18:02', 1),
(82, 12, '2018-06-05 12:23:11', 1),
(83, 12, '2018-06-05 15:58:42', 1),
(84, 12, '2018-06-07 04:53:38', 1),
(85, 12, '2018-06-07 05:56:38', 1),
(86, 12, '2018-06-07 07:15:52', 1),
(87, 12, '2018-06-07 11:04:46', 1),
(88, 12, '2018-06-07 13:36:35', 1),
(89, 12, '2018-06-07 17:29:30', 1),
(90, 12, '2018-06-08 04:25:21', 1),
(91, 12, '2018-06-08 05:17:14', 1),
(92, 12, '2018-06-08 07:44:14', 1),
(93, 12, '2018-06-08 10:17:40', 1),
(94, 12, '2018-06-08 10:27:51', 1),
(95, 12, '2018-06-08 10:29:58', 1),
(96, 12, '2018-06-09 02:03:23', 1),
(97, 12, '2018-06-09 03:41:29', 1),
(98, 12, '2018-06-09 04:23:46', 1),
(99, 12, '2018-06-09 10:41:24', 1),
(100, 12, '2018-06-09 11:55:23', 1),
(101, 12, '2018-06-09 20:03:38', 1),
(102, 12, '2018-06-10 14:55:50', 1),
(103, 12, '2018-06-10 19:35:26', 1),
(104, 12, '2018-06-11 16:31:48', 1),
(105, 12, '2018-06-12 08:11:49', 1),
(106, 12, '2018-06-12 08:26:30', 1),
(107, 12, '2018-06-12 08:32:59', 1),
(108, 12, '2018-06-13 10:10:46', 1),
(109, 12, '2018-06-14 04:40:32', 1),
(110, 12, '2018-06-15 05:55:36', 1),
(111, 12, '2018-06-15 21:16:23', 1),
(112, 36, '2018-06-16 05:44:10', 1),
(113, 12, '2018-06-16 06:09:21', 1),
(114, 12, '2018-06-16 19:18:43', 1),
(115, 39, '2018-06-17 14:34:42', 1),
(116, 12, '2018-06-17 17:41:17', 1),
(117, 12, '2018-06-17 17:46:53', 1),
(118, 12, '2018-06-18 06:01:04', 1),
(119, 12, '2018-06-18 10:24:47', 1),
(120, 12, '2018-06-18 11:12:26', 1),
(121, 12, '2018-06-18 21:11:05', 1),
(122, 12, '2018-06-19 01:52:20', 1),
(123, 12, '2018-06-19 06:46:59', 1),
(124, 12, '2018-06-19 14:43:32', 1),
(125, 12, '2018-06-20 04:10:06', 1),
(126, 45, '2018-06-20 05:38:44', 1),
(127, 12, '2018-06-20 06:06:15', 1),
(128, 12, '2018-06-20 16:47:09', 1),
(129, 12, '2018-06-21 05:24:05', 1),
(130, 12, '2018-06-21 12:00:02', 1),
(131, 12, '2018-06-21 13:25:57', 1),
(132, 50, '2018-06-21 17:20:08', 1),
(133, 12, '2018-06-21 17:20:12', 1),
(134, 12, '2018-06-22 05:37:42', 1),
(135, 12, '2018-06-22 13:02:13', 1),
(136, 12, '2018-06-23 07:40:45', 1),
(137, 12, '2018-06-23 07:43:41', 1),
(138, 53, '2018-06-23 09:40:31', 1),
(139, 12, '2018-06-23 09:56:08', 1),
(140, 12, '2018-06-23 13:32:25', 1),
(141, 12, '2018-06-23 22:38:56', 1),
(142, 12, '2018-06-25 09:48:05', 1),
(143, 56, '2018-06-25 09:56:36', 1),
(144, 12, '2018-06-25 10:50:26', 1),
(145, 12, '2018-06-25 10:51:06', 1),
(146, 12, '2018-06-25 11:02:00', 1),
(147, 12, '2018-06-25 16:04:10', 1),
(148, 12, '2018-06-26 05:56:00', 1),
(149, 12, '2018-06-26 06:24:45', 1),
(150, 12, '2018-06-26 06:54:57', 1),
(151, 12, '2018-06-26 06:54:58', 1),
(152, 12, '2018-06-26 07:40:01', 1),
(153, 12, '2018-06-26 10:02:19', 1),
(154, 12, '2018-06-26 15:17:44', 1),
(155, 12, '2018-06-26 15:17:57', 1),
(156, 12, '2018-06-26 16:53:46', 1),
(157, 12, '2018-06-26 17:32:05', 1),
(158, 12, '2018-06-27 09:41:18', 1),
(159, 12, '2018-06-27 11:56:53', 1),
(160, 12, '2018-06-27 15:38:47', 1),
(161, 12, '2018-06-27 18:01:45', 1),
(162, 12, '2018-06-27 19:25:29', 1),
(163, 12, '2018-06-27 19:59:11', 1),
(164, 12, '2018-06-29 04:59:09', 1),
(165, 12, '2018-06-29 14:31:33', 1),
(166, 12, '2018-06-29 21:08:38', 1),
(167, 12, '2018-06-30 00:40:12', 1),
(168, 12, '2018-06-30 07:37:11', 1),
(169, 12, '2018-06-30 16:23:28', 1),
(170, 12, '2018-06-30 17:49:44', 1),
(171, 12, '2018-07-01 17:51:32', 1),
(172, 12, '2018-07-02 09:56:02', 1),
(173, 63, '2018-07-02 10:17:07', 1),
(174, 12, '2018-07-02 10:22:10', 1),
(175, 12, '2018-07-02 10:34:27', 1),
(176, 12, '2018-07-03 05:17:28', 1),
(177, 12, '2018-07-03 09:30:45', 1),
(178, 12, '2018-07-03 09:44:32', 1),
(179, 12, '2018-07-03 10:04:33', 1),
(180, 12, '2018-07-03 21:17:28', 1),
(181, 12, '2018-07-04 05:08:31', 1),
(182, 12, '2018-07-04 07:05:45', 1),
(183, 12, '2018-07-04 07:21:04', 1),
(184, 12, '2018-07-04 10:37:02', 1),
(185, 12, '2018-07-04 13:16:54', 1),
(186, 12, '2018-07-04 13:22:47', 1),
(187, 12, '2018-07-04 13:33:42', 1),
(188, 12, '2018-07-04 16:49:50', 1),
(189, 12, '2018-07-04 18:59:22', 1),
(190, 12, '2018-07-05 00:12:10', 1),
(191, 12, '2018-07-05 00:26:51', 1),
(192, 12, '2018-07-05 02:53:33', 1),
(193, 12, '2018-07-05 06:05:10', 1),
(194, 12, '2018-07-05 10:39:56', 1),
(195, 12, '2018-07-05 12:07:28', 1),
(196, 12, '2018-07-05 12:57:22', 1),
(197, 12, '2018-07-05 19:43:46', 1),
(198, 21, '2018-07-06 09:55:14', 1),
(199, 12, '2018-07-06 13:06:09', 1),
(200, 12, '2018-07-06 18:05:16', 1),
(201, 12, '2018-07-07 04:32:31', 1),
(202, 12, '2018-07-08 07:05:48', 1),
(203, 12, '2018-07-08 07:05:49', 1),
(204, 12, '2018-07-08 16:08:30', 1),
(205, 12, '2018-07-08 18:14:32', 1),
(206, 12, '2018-07-09 07:14:24', 1),
(207, 12, '2018-07-09 10:42:33', 1),
(208, 74, '2018-07-10 08:00:33', 1),
(209, 74, '2018-07-10 09:45:13', 1),
(210, 74, '2018-07-10 09:49:10', 1),
(211, 74, '2018-07-10 09:52:13', 1),
(212, 74, '2018-07-10 09:56:35', 1),
(213, 74, '2018-07-10 09:57:41', 1),
(214, 74, '2018-07-10 10:04:33', 1),
(215, 74, '2018-07-10 10:05:21', 1),
(216, 74, '2018-07-10 10:09:24', 1),
(217, 74, '2018-07-10 12:25:30', 1),
(218, 47, '2018-07-10 12:47:03', 1),
(219, 74, '2018-07-10 13:17:20', 1),
(220, 74, '2018-07-10 13:17:51', 1),
(221, 74, '2018-07-10 13:48:15', 1),
(222, 47, '2018-07-11 05:13:01', 1),
(223, 47, '2018-07-11 05:20:32', 1),
(224, 11, '2018-07-11 09:09:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_maincategory`
--

CREATE TABLE `nm_maincategory` (
  `mc_id` smallint(5) UNSIGNED NOT NULL,
  `mc_name` varchar(100) NOT NULL,
  `mc_name_fr` varchar(100) NOT NULL,
  `mc_type` varchar(10) NOT NULL,
  `mc_img` varchar(150) NOT NULL,
  `mc_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_maincategory`
--

INSERT INTO `nm_maincategory` (`mc_id`, `mc_name`, `mc_name_fr`, `mc_type`, `mc_img`, `mc_status`) VALUES
(1, 'Kids', '', '1,1,1', 'Top_category_1529039575.jpg', 1),
(2, 'Womens', '', '1,1,1', 'Top_category_1529039488.jpg', 1),
(3, 'mens', '', '1,1,1', 'Top_category_1529039588.jpg', 1),
(4, 'Gadgets', '', '1,1,1', 'Top_category_1527126737.jpg', 1),
(5, 'electronic', '', '1,1,1', 'Top_category_1527494073.jpg', 1),
(6, 'Mobile', '', '1,1,1', 'Top_category_1527741450.jpg', 0),
(7, 'arun category 1', '', '1,1,1', 'Top_category_1527773078.png', 1),
(8, 'Toys', '', '1,1,1', 'Top_category_1528894232.jpg', 1),
(9, 'Test1', '', '1,1,1', 'Top_category_1528980575.jpg', 1),
(10, 'New test', '', '1,1,1', 'Top_category_1529041907.jpg', 1),
(11, 'Books', '', '1,1,1', 'Top_category_1530092791.jpg', 1),
(12, 'mycategory', '', '1,1,1', 'Top_category_1530600999.png', 1),
(13, 'New top category', '', '1,1,1', 'Top_category_1530945815.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_merchant`
--

CREATE TABLE `nm_merchant` (
  `mer_id` int(10) UNSIGNED NOT NULL,
  `addedby` varchar(20) NOT NULL COMMENT '0=>admin',
  `mer_fname` varchar(150) NOT NULL,
  `mer_lname` varchar(150) NOT NULL,
  `mer_password` varchar(150) NOT NULL,
  `mer_email` varchar(150) NOT NULL,
  `mer_phone` varchar(20) NOT NULL,
  `mer_address1` varchar(150) NOT NULL,
  `mer_address2` varchar(150) NOT NULL,
  `mer_ci_id` int(10) UNSIGNED NOT NULL COMMENT 'city id',
  `mer_co_id` smallint(5) UNSIGNED NOT NULL COMMENT 'country id',
  `mer_payment` varchar(100) NOT NULL,
  `mer_payu_key` varchar(250) NOT NULL,
  `mer_payu_salt` varchar(250) NOT NULL,
  `mer_commission` tinyint(4) NOT NULL,
  `created_date` date NOT NULL,
  `mer_staus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-unblock,0-block',
  `mer_pro_status` int(11) NOT NULL COMMENT '1=>unblock, 0=>block',
  `mer_country_status` char(1) NOT NULL DEFAULT 'A',
  `mer_logintype` varchar(30) NOT NULL DEFAULT '1' COMMENT '1=>Admin user, 2=> Website User, 3=> Facebook User'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_merchant`
--

INSERT INTO `nm_merchant` (`mer_id`, `addedby`, `mer_fname`, `mer_lname`, `mer_password`, `mer_email`, `mer_phone`, `mer_address1`, `mer_address2`, `mer_ci_id`, `mer_co_id`, `mer_payment`, `mer_payu_key`, `mer_payu_salt`, `mer_commission`, `created_date`, `mer_staus`, `mer_pro_status`, `mer_country_status`, `mer_logintype`) VALUES
(1, '0', 'ishwarya', 'pofi', '123456', 'Sales@laravelecommerce.com', '9632587410', 'mer add-1', 'mer add-2', 1, 1, 'ishwarya@pofitec.com', '', '', 10, '2018-05-03', 1, 1, 'A', '1'),
(2, '', 'rajesh', 'pofi', '123456', 'rajesh@mailinator.com', '9632587410', 'Testing-1', 'Testing-2', 1, 1, 'ishwarya@pofitec.com.com', '', '', 1, '2018-05-03', 1, 1, 'A', '2'),
(3, '0', 'priya', 'r', '123456', 'laravelseo@gmail.com', '1234567890', 'ramnagar', 'gandhipuram', 1, 1, 'laravelseo@gmail.com', '', '', 15, '2018-05-24', 1, 1, 'A', '1'),
(4, '0', 'mobile', 'test', 'QfXzyfsZ', 'mobile@mailinator.com', '9632587410', 'add1', 'add2', 1, 1, 'ishwarya@pofitec.com', 'gtKFFx', 'eCwWELxi', 10, '2018-05-31', 0, 1, 'B', '1'),
(5, '', 'arun', 'jain', '12345678', 'arunjain312@yahoo.com', '9198892630', 'davis dr', 'ddd', 4, 3, 'arunjain312@yahoo.com', 'aaa', 'aaa', 10, '2018-05-31', 1, 1, 'A', '2'),
(6, '0', 'new  ios', 'ios', 'Ff34bHkh', 'newios@mailinator.com', '9632587410', 'test', 'test', 2, 1, 'ishwarya@mailinator.com', '', '', 10, '2018-06-13', 1, 1, 'A', '1'),
(7, '0', 'test', '123', 'MPkgyaS1', 'priya@mailinator.com', '9632587410', 'szdf', 'zd', 2, 1, 'priya@mailinator.com', '', '', 10, '2018-06-14', 1, 1, 'A', '1'),
(8, '0', 'new', 'test', '8yDwZsj6', 'new123@mailinator.com', '9632587410', 'test', 'test', 2, 1, 'ishwarya@pofitec.com', 'gtKFFx', 'eCwWELxi', 10, '2018-06-15', 0, 1, 'B', '1'),
(9, '0', 'suganya', 't', 'MyLL5eAo', 'sugan@gmail.com', '54657657868', 'gfdgfdg', 'fdgfdhfgh', 2, 1, '', '', '', 10, '2018-06-22', 1, 1, 'A', '1'),
(10, '0', 'test', '123', 'RrLLXXrb', 'ish@mailinator.com', '9632587410', 'test', 'tesrt', 1, 1, 'ishwarya@pofitec.com', '', '', 10, '2018-06-22', 1, 1, 'A', '1'),
(11, '0', 'Testing', 'new', 'pEldWyZU', 'ishwarya@mailinator.com', '9632587410', 'dfv', 'zsd', 1, 1, 'ishwarya@pofitec.com', '', '', 10, '2018-06-23', 1, 1, 'A', '1'),
(12, '0', 'new', 'test', 'JHkz92g3', 'test@gmail.com', '9874563210', 'test', 'test', 2, 1, '', '', '', 10, '2018-06-27', 1, 1, 'A', '1'),
(13, '', 'merchant', 'new', 'FoPu4wfU', 'frontmerchant@mailinator.com', '996632140', 'merchant add 1', 'merchant add 2', 2, 1, 'ishwarya@pofitec.com', 'gtKFFx', 'eCwWELxi', 1, '2018-07-02', 1, 1, 'A', '2'),
(14, '0', 'Carter', 'Morton', 'xdlSbrmf', 'hexaz@mailinator.com', '6982335678', 'Ipsum exercitationem dolore et Nam facere', 'Aut et eaque vel dicta tempor occaecat molestias non aut facere', 1, 1, 'saravanan@gmail.com', 'Laudantium laudantium perspiciatis dolor dolores repudiandae sapiente sint adipisicing qui et velit enim sit eos', 'Dolores est et ab lorem qui sint inventore nobis incididunt enim cumque ut est natus reprehenderit ipsa', 63, '2018-07-04', 1, 1, 'A', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nm_merchant_overallorders`
--

CREATE TABLE `nm_merchant_overallorders` (
  `overOrd_id` int(11) NOT NULL,
  `over_mer_id` int(11) NOT NULL,
  `over_tot_ord_amt` decimal(10,2) NOT NULL,
  `over_tot_offline_amt` decimal(10,2) NOT NULL,
  `over_tot_online_amt` decimal(10,2) NOT NULL,
  `over_tot_coupon_amt` decimal(10,2) NOT NULL,
  `over_tot_wallet_amt` decimal(10,2) NOT NULL,
  `commissionAmt` decimal(10,2) NOT NULL,
  `merchantAmt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_merchant_overallorders`
--

INSERT INTO `nm_merchant_overallorders` (`overOrd_id`, `over_mer_id`, `over_tot_ord_amt`, `over_tot_offline_amt`, `over_tot_online_amt`, `over_tot_coupon_amt`, `over_tot_wallet_amt`, `commissionAmt`, `merchantAmt`) VALUES
(1, 1, '267056.80', '167488.10', '99568.70', '10.00', '444.50', '16682.81', '89611.83'),
(2, 2, '211164.52', '64244.68', '146919.84', '0.00', '0.00', '642.49', '145450.64'),
(3, 3, '9803744.00', '865960.00', '8937784.00', '0.00', '0.00', '129894.00', '7597116.40'),
(4, 4, '2438080.00', '107580.00', '2330500.00', '0.00', '0.00', '10762.00', '2097450.00'),
(5, 6, '6200.00', '6200.00', '0.00', '0.00', '0.00', '620.00', '0.00'),
(6, 7, '1817.50', '1062.50', '755.00', '0.00', '0.00', '106.25', '679.50'),
(7, 8, '3970.00', '3970.00', '0.00', '0.00', '0.00', '399.00', '0.00'),
(8, 10, '35520.00', '23550.00', '11970.00', '0.00', '0.00', '2359.00', '10773.00'),
(9, 11, '44093.00', '20663.00', '23430.00', '0.00', '0.00', '2078.30', '21087.00'),
(10, 12, '17915.00', '3690.00', '14225.00', '0.00', '0.00', '369.00', '12802.50'),
(11, 13, '150.00', '150.00', '0.00', '0.00', '0.00', '1.50', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_modulesettings`
--

CREATE TABLE `nm_modulesettings` (
  `ms_id` int(11) NOT NULL,
  `ms_dealmodule` int(11) NOT NULL,
  `ms_productmodule` int(11) NOT NULL,
  `ms_auctionmodule` int(11) NOT NULL,
  `ms_blogmodule` int(11) NOT NULL,
  `ms_nearmemapmodule` int(11) NOT NULL,
  `ms_storelistmodule` int(11) NOT NULL,
  `ms_pastdealmodule` int(11) NOT NULL,
  `ms_faqmodule` int(11) NOT NULL,
  `ms_cod` int(11) NOT NULL,
  `ms_paypal` int(11) NOT NULL,
  `ms_creditcard` int(11) NOT NULL,
  `ms_googlecheckout` int(11) NOT NULL,
  `ms_shipping` int(11) NOT NULL COMMENT '1=>Free shipping, 2=> Flat shipping, 3=> Product per shippin, 4=> Per Item shipping',
  `ms_newsletter_template` int(11) NOT NULL COMMENT '1=> Temp 1, 2=>Temp 2, 3=> Temp 3, 4=> Temp 4',
  `ms_citysettings` int(11) NOT NULL COMMENT '1=> With city, 0=> Without city'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_newsletter_subscribers`
--

CREATE TABLE `nm_newsletter_subscribers` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `post_dt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nm_newsletter_subscribers`
--

INSERT INTO `nm_newsletter_subscribers` (`id`, `email`, `city_id`, `status`, `post_dt`) VALUES
(1, 'ishwarya@mailinator.com', 0, 1, '0000-00-00 00:00:00'),
(2, '123@mailinator.com', 0, 1, '0000-00-00 00:00:00'),
(3, 'kenni.gambo@gmail.com', 0, 1, '0000-00-00 00:00:00'),
(4, 'jafrihassan1@outlook.com', 0, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_order`
--

CREATE TABLE `nm_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_cus_id` int(10) UNSIGNED NOT NULL,
  `order_pro_id` int(11) UNSIGNED NOT NULL,
  `order_prod_unitPrice` double NOT NULL DEFAULT '0',
  `order_type` tinyint(4) NOT NULL COMMENT '1-product,2-deals',
  `transaction_id` varchar(50) NOT NULL,
  `payer_email` varchar(50) NOT NULL,
  `payer_id` varchar(50) NOT NULL,
  `payer_name` varchar(100) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_amt` decimal(15,2) NOT NULL COMMENT '(unit price * quantity)',
  `order_tax` decimal(10,2) NOT NULL COMMENT 'tax per unit (in %)',
  `order_taxAmt` decimal(10,2) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `token_id` varchar(30) NOT NULL,
  `payment_ack` varchar(10) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` varchar(20) NOT NULL,
  `payer_status` varchar(50) NOT NULL,
  `order_status` tinyint(4) NOT NULL COMMENT '1-sucess,2-complete,3-hold,4-failed',
  `delivery_status` int(11) NOT NULL DEFAULT '2' COMMENT '1->order_placed,2->order_packed,3->Dispatched,4->Delivered,5->cancel pending,6->cancelled,7->return pending ,8->returned,9->replace pending,10->replaced',
  `order_paytype` smallint(6) NOT NULL DEFAULT '1' COMMENT '1-paypal',
  `order_pro_color` int(11) NOT NULL,
  `order_pro_size` int(11) NOT NULL,
  `order_shipping_amt` varchar(20) NOT NULL,
  `order_shipping_add` text NOT NULL,
  `order_merchant_id` int(11) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `coupon_amount_type` varchar(255) NOT NULL,
  `coupon_amount` varchar(255) NOT NULL,
  `coupon_total_amount` varchar(255) NOT NULL,
  `wallet_amount` double NOT NULL,
  `mer_commission_amt` decimal(10,2) NOT NULL,
  `mer_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_order`
--

INSERT INTO `nm_order` (`order_id`, `order_cus_id`, `order_pro_id`, `order_prod_unitPrice`, `order_type`, `transaction_id`, `payer_email`, `payer_id`, `payer_name`, `order_qty`, `order_amt`, `order_tax`, `order_taxAmt`, `currency_code`, `token_id`, `payment_ack`, `order_date`, `created_date`, `payer_status`, `order_status`, `delivery_status`, `order_paytype`, `order_pro_color`, `order_pro_size`, `order_shipping_amt`, `order_shipping_add`, `order_merchant_id`, `coupon_code`, `coupon_type`, `coupon_amount_type`, `coupon_amount`, `coupon_total_amount`, `wallet_amount`, `mer_commission_amt`, `mer_amt`) VALUES
(1, 4, 3, 10, 1, '9JD281287F7689252', 'ishwarya@pofitec.com', 'QPWS37U5CG95C', 'pofi', 3, '30.00', '10.00', '3.00', 'INR', 'EC-7GR55455V5953163T', 'Success', '2018-05-05 15:12:29', '', 'verified', 1, 3, 1, 0, 11, '60', 'ragul,Coimbatore,Coimbatore,Tamilnadu,641010,09944349002,ragulgandhi@pofitec.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, '9.30', '83.70'),
(2, 12, 1, 999, 1, '0E2061922A629602X', 'nagoorbuyers@gmail.com', 'KNPGA48HMPF2A', 'Buyer', 1, '999.00', '10.00', '99.90', 'USD', 'EC-5N864603AU242172T', 'Success', '2018-05-30 07:57:20', '', 'verified', 1, 1, 1, 3, 11, '20', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,1591591599,nagoor@pofitec.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, '111.89', '1007.01'),
(3, 24, 6, 85999, 2, 'PAY-18X32451H0459092JKO7KFUI', 'ishwarya@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Test', 3, '257997.00', '0.00', '0.00', 'USD', 'A21AAHsds34seFGr3WOo2YCPfh6mPS', 'Success', '2018-05-30 09:14:06', '', 'verified', 1, 6, 1, 0, 0, '0', 'Test,test,teet,tn,641010,9638527410,ishwarya@pofitec.com', 3, '', '', '', '', '', 0, '38699.55', '219297.45'),
(4, 12, 1, 999, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nagoor@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nagoor meeran', 1, '999.00', '10.00', '99.90', 'USD', 'A21AAFWbneHv3nESSiEn2RRnmGXGOO', 'Success', '2018-05-30 09:37:37', '', 'verified', 1, 1, 1, 68, 0, '20', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,1591591599,nagoor@pofitec.com', 1, '', '', '', '', '', 0, '111.89', '1007.01'),
(5, 24, 5, 12999, 2, 'PAY-18X32451H0459092JKO7KFUI', 'ishwarya@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Test', 5, '64995.00', '0.00', '0.00', 'USD', 'A21AAFWbneHv3nESSiEn2RRnmGXGOO', 'Success', '2018-05-30 10:10:13', '', 'verified', 1, 1, 1, 0, 0, '0', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 3, '', '', '', '', '', 0, '9749.25', '55245.75'),
(6, 24, 7, 40000, 2, 'PAY-18X32451H0459092JKO7KFUI', 'ishwarya@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Test', 2, '80000.00', '10.00', '8000.00', 'USD', 'A21AAE3lobDtKkHOROTUCwNJ7QdJhp', 'Success', '2018-05-31 14:37:35', '', 'verified', 1, 4, 1, 0, 0, '40', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 4, '', '', '', '', '', 0, '8804.00', '79236.00'),
(7, 24, 11, 4800, 1, 'PAY-18X32451H0459092JKO7KFUI', 'ishwarya@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Test', 1, '4800.00', '10.00', '480.00', 'USD', 'A21AAE3lobDtKkHOROTUCwNJ7QdJhp', 'Success', '2018-05-31 14:55:01', '', 'verified', 1, 2, 1, 0, 0, '20', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 4, '', '', '', '', '', 0, '530.00', '4770.00'),
(8, 26, 8, 50, 2, 'PAY-18X32451H0459092JKO7KFUI', 'new123@mailinator.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'New', 2, '100.00', '0.00', '0.00', 'USD', 'A21AAF_G8VtteDJtKjrm3ob15WPDtP', 'Success', '2018-05-31 16:09:11', '', 'verified', 1, 4, 1, 0, 0, '0', 'New,New,New 123,Tn,641010,9638527410,new123@mailinator.com', 4, '', '', '', '', '', 0, '10.00', '90.00'),
(9, 30, 34, 100, 1, 'PAY-5GJ954774K2341833LMQRN4Y', '', '', '', 1, '100.00', '15.00', '15.00', 'USD', 'PAY-5GJ954774K2341833LMQRN4Y', 'Success', '2018-06-13 10:37:10', '', 'verified', 1, 6, 1, 0, 0, '0', 'Madhu,Test,Test,Tn,641018,9632507410,tsf@hj.com', 1, '', '', '', '', '', 0, '11.50', '103.50'),
(10, 31, 14, 450, 2, 'PAY-50050176NC763762WLMRGRGQ', '', '', '', 1, '450.00', '20.00', '90.00', 'USD', '', 'Success', '2018-06-14 10:37:48', '', 'verified', 1, 6, 1, 0, 0, '10', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 7, '', '', '', '', '', 0, '55.00', '495.00'),
(11, 31, 37, 75, 1, 'PAY-30914042XW2834628LMRHOQY', '', '', '', 2, '150.00', '10.00', '15.00', 'USD', '', 'Success', '2018-06-14 11:40:25', '', 'verified', 1, 1, 1, 0, 0, '40', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 7, '', '', '', '', '', 0, '20.50', '184.50'),
(12, 43, 4, 11999, 2, 'PAY-5VT25244R4809212HLMUJ3OQ', '', '', '', 1, '11999.00', '0.00', '0.00', 'USD', '', 'Success', '2018-06-19 15:38:03', '', 'verified', 1, 2, 1, 0, 0, '0', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 3, '', '', '', '', '', 0, '1799.85', '10199.15'),
(13, 43, 2, 800, 1, 'PAY-6DU7750678793531WLMUJ44I', '', '', '', 1, '800.00', '10.00', '80.00', 'USD', '', 'Success', '2018-06-19 15:41:07', '', 'verified', 1, 6, 1, 0, 131, '1', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 1, '', '', '', '', '', 0, '88.10', '792.90'),
(14, 51, 4, 11999, 2, 'PAY-00A984011X1514630LMWH5QY', '', '', '', 1, '11999.00', '0.00', '0.00', 'USD', '', 'Success', '2018-06-22 10:15:03', '', 'verified', 1, 8, 1, 0, 0, '0', 'Ishwarya,Tdc,Jfcgjx,Tn,64110,963852710,kgoy@ifot.com', 3, '', '', '', '', '', 0, '1799.85', '10199.15'),
(15, 52, 40, 950, 1, 'PAY-18X32451H0459092JKO7KFUI', 'dtuf@f77gig.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'New', 1, '950.00', '10.00', '95.00', 'USD', 'A21AAHxBoT5sTKqm1B2kRRwGB48J4c', 'Success', '2018-06-23 12:02:56', '', 'verified', 1, 1, 1, 0, 0, '20', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 11, '', '', '', '', '', 0, '106.50', '958.50'),
(16, 52, 16, 500, 2, 'PAY-18X32451H0459092JKO7KFUI', 'dtuf@f77gig.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'New', 1, '500.00', '10.00', '50.00', 'USD', 'A21AAHxBoT5sTKqm1B2kRRwGB48J4c', 'Success', '2018-06-23 12:09:43', '', 'verified', 1, 6, 1, 0, 0, '20', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, '57.00', '513.00'),
(17, 54, 37, 75, 1, 'PAY-4JC48338N6174605ALMXB7SI', '', '', '', 1, '75.00', '10.00', '7.50', 'USD', '', 'Success', '2018-06-23 03:54:17', '', 'verified', 1, 1, 1, 0, 0, '20', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 1, '', '', '', '', '', 0, '10.25', '92.25'),
(18, 12, 37, 75, 1, 'ORDER1529928303dQjGkt', '', '', '', 1, '75.00', '10.00', '7.50', '', '', '', '2018-06-25 05:35:03', '', '', 1, 1, 2, 0, 11, '20', 'user,ghfgh,fhfghg,jgfh,68778,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 102.5, '10.25', '92.25'),
(19, 1, 5, 550, 1, 'PAY-18X32451H0459092JKO7KFUI', 'pofi@mailinator.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Ishwarya', 1, '550.00', '0.00', '0.00', 'USD', 'A21AAEVYytQqXVr0KdcUNUkui3lwvw', 'Success', '2018-06-26 11:43:52', '', 'verified', 1, 1, 1, 144, 169, '0', 'Ishwarya,Cfgh,Xdfb,Cfb,421010,9632587410,pofi@mailinator.com', 2, '', '', '', '', '', 0, '5.50', '544.50'),
(20, 5, 9, 600, 1, 'PAY-18X32451H0459092JKO7KFUI', 'suganya.t@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'testuset', 9, '5400.00', '0.00', '0.00', 'USD', 'A21AAGTeB3HkEF5hsEbBkgWUnDJAv1', 'Success', '2018-06-26 12:33:52', '', 'verified', 1, 1, 1, 0, 0, '0', 'testuset,\"test addr1\",\"test addr2\",tn,123456,7200285584,suganya.t@pofitec.com', 2, '', '', '', '', '', 0, '54.00', '5346.00'),
(21, 35, 37, 75, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '75.00', '10.00', '7.50', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 10:55:58', '', 'verified', 1, 1, 1, 0, 0, '20', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '10.25', '92.25'),
(22, 35, 6, 50, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '50.00', '2.00', '1.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 10:55:58', '', 'verified', 1, 1, 1, 0, 0, '8', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '5.90', '53.10'),
(23, 1, 6, 50, 1, 'PAY-18X32451H0459092JKO7KFUI', 'pofi@mailinator.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Ishwarya', 1, '50.00', '2.00', '1.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 10:58:01', '', 'verified', 1, 1, 1, 0, 0, '8', 'Ishwarya,Cfgh,Xdfb,Cfb,421010,9632587410,pofi@mailinator.com', 1, '', '', '', '', '', 0, '5.90', '53.10'),
(24, 1, 38, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'pofi@mailinator.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Ishwarya', 1, '500.00', '10.00', '50.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 10:58:59', '', 'verified', 1, 1, 1, 0, 0, '20', 'Ishwarya,Cfgh,Xdfb,Cfb,421010,9632587410,pofi@mailinator.com', 1, '', '', '', '', '', 0, '57.00', '513.00'),
(25, 35, 38, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '500.00', '10.00', '50.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 10:59:27', '', 'verified', 1, 1, 1, 0, 0, '20', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '57.00', '513.00'),
(26, 35, 38, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '500.00', '10.00', '50.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 11:03:55', '', 'verified', 1, 1, 1, 0, 0, '20', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '57.00', '513.00'),
(27, 35, 6, 50, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '50.00', '2.00', '1.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 11:09:12', '', 'verified', 1, 1, 1, 0, 0, '8', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '5.90', '53.10'),
(28, 35, 6, 50, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '50.00', '2.00', '1.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 11:09:47', '', 'verified', 1, 1, 1, 0, 0, '8', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '5.90', '53.10'),
(29, 35, 2, 800, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '800.00', '10.00', '80.00', 'USD', 'A21AAE3uy6Dlm_iX5K1FiKT1AVTGN2', 'Success', '2018-06-27 11:14:54', '', 'verified', 1, 1, 1, 0, 225, '1', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '88.10', '792.90'),
(30, 35, 6, 50, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '50.00', '2.00', '1.00', 'USD', 'A21AAFMy5FWnbWNgdydkxxcc1Tkb5B', 'Success', '2018-06-27 12:07:44', '', 'verified', 1, 1, 1, 0, 0, '8', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '5.90', '53.10'),
(31, 35, 6, 50, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '50.00', '2.00', '1.00', 'USD', 'A21AAEkATh2tKsILwJlBCQz2uaOIHF', 'Success', '2018-06-27 02:55:34', '', 'verified', 1, 1, 1, 0, 0, '8', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '5.90', '53.10'),
(32, 59, 42, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'ishwarya@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'New', 1, '500.00', '0.00', '0.00', 'USD', 'A21AAEobBH9uKV4MFS_F6x9M8Zia5v', 'Success', '2018-06-27 03:58:05', '', 'verified', 1, 6, 1, 193, 233, '0', 'New,Tesr,Neew,Tn,641010,9638527410,ishwarya@pofitec.com', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(33, 54, 42, 500, 1, 'PAY-1B452982JM070094JLMZWRNA', '', '', '', 1, '500.00', '0.00', '0.00', 'USD', '', 'Success', '2018-06-27 04:06:47', '', 'verified', 1, 1, 1, 194, 233, '0', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(34, 54, 41, 750, 1, 'PAY-1B452982JM070094JLMZWRNA', '', '', '', 1, '750.00', '10.00', '75.00', 'USD', '', 'Success', '2018-06-27 04:06:47', '', 'verified', 1, 1, 1, 0, 0, '20', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '84.50', '760.50'),
(35, 54, 20, 750, 2, 'PAY-8K271050177606841LMZWR3I', '', '', '', 1, '750.00', '10.00', '75.00', 'USD', '', 'Success', '2018-06-27 04:07:42', '', 'verified', 1, 6, 1, 0, 0, '20', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '84.50', '760.50'),
(36, 54, 42, 500, 1, 'PAY-8UR66503P81009642LMZWSTQ', '', '', '', 1, '500.00', '0.00', '0.00', 'USD', '', 'Success', '2018-06-27 04:09:19', '', 'verified', 1, 1, 1, 193, 232, '0', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(37, 54, 41, 750, 1, 'PAY-8UR66503P81009642LMZWSTQ', '', '', '', 1, '750.00', '10.00', '75.00', 'USD', '', 'Success', '2018-06-27 04:09:19', '', 'verified', 1, 1, 1, 0, 0, '20', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '84.50', '760.50'),
(38, 54, 41, 750, 1, 'PAY-8YG95888U0325654CLMZWUVI', '', '', '', 1, '750.00', '10.00', '75.00', 'USD', '', 'Success', '2018-06-27 04:13:46', '', 'verified', 1, 1, 1, 0, 0, '20', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '84.50', '760.50'),
(39, 54, 42, 500, 1, 'PAY-8YG95888U0325654CLMZWUVI', '', '', '', 1, '500.00', '0.00', '0.00', 'USD', '', 'Success', '2018-06-27 04:13:46', '', 'verified', 1, 1, 1, 193, 232, '0', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(40, 12, 42, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nagoor@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Suganya', 1, '500.00', '0.00', '0.00', 'USD', 'A21AAFRBOfus2-Y3OTvEUIQxt5OpAI', 'Success', '2018-06-27 06:36:12', '', 'verified', 1, 6, 1, 207, 254, '0', 'Suganya,Avinashi,Covai,TN,641001,9445847896,nagoor@pofitec.com', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(41, 12, 38, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nagoor@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Suganya', 1, '500.00', '10.00', '50.00', 'USD', 'A21AAFRBOfus2-Y3OTvEUIQxt5OpAI', 'Success', '2018-06-27 06:36:12', '', 'verified', 1, 1, 1, 0, 0, '20', 'Suganya,Avinashi,Covai,TN,641001,9445847896,nagoor@pofitec.com', 1, '', '', '', '', '', 0, '57.00', '513.00'),
(42, 12, 38, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nagoor@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nagoor meeran', 1, '500.00', '10.00', '50.00', 'USD', 'A21AAEd5nZXhQqvBxvnMSbqj-5Y28L', 'Success', '2018-06-27 06:37:17', '', 'verified', 1, 1, 1, 0, 0, '20', 'Nagoor meeran,Karumbukadai,Aasath Nagar,Tamil Nadu,641008,1591591599,nagoor@pofitec.com', 1, '', '', '', '', '', 0, '57.00', '513.00'),
(43, 46, 42, 500, 1, 'PAY-44S12960GV3186747LM5BLPQ', '', '', '', 1, '500.00', '0.00', '0.00', 'INR', '', 'Success', '2018-07-02 05:38:46', '', 'verified', 1, 3, 1, 207, 254, '0', 'Test,Kchgxj,Jcjckf,TN,65773,96385214 ,coufhoy@surfisirs.ch', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(44, 35, 1, 999, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '999.00', '10.00', '99.90', 'INR', 'A21AAG8wrtOli4sPDrvuwKUSL5Type', 'Success', '2018-07-03 11:02:01', '', 'verified', 1, 1, 1, 192, 227, '20', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, '111.89', '1007.01'),
(45, 35, 4, 999, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '999.00', '8.00', '79.92', 'INR', 'A21AAG8wrtOli4sPDrvuwKUSL5Type', 'Success', '2018-07-03 11:02:01', '', 'verified', 1, 1, 1, 181, 0, '1', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 2, '', '', '', '', '', 0, '10.80', '1069.12'),
(46, 35, 42, 500, 1, 'PAY-18X32451H0459092JKO7KFUI', 'nazeer@pofitec.com', 'https://www.paypal.com/webapps/auth/identity/user/', 'Nazeer Pofitec', 1, '500.00', '0.00', '0.00', 'INR', 'A21AAG8wrtOli4sPDrvuwKUSL5Type', 'Success', '2018-07-03 11:02:42', '', 'verified', 1, 6, 1, 207, 254, '0', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 12, '', '', '', '', '', 0, '50.00', '450.00'),
(47, 12, 1, 999, 1, '8XA904683K396563B', 'kumarkailash075-buyer@gmail.com', 'SPMQ4UD2Y55WW', 'test', 2, '1998.00', '10.00', '199.80', 'INR', 'EC-74678886GD4655431', 'Success', '2018-07-03 03:20:00', '', 'verified', 1, 5, 1, 3, 3, '40', 'user,rtryt,tyty,ytry,546467,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 342, '223.78', '2014.02');

-- --------------------------------------------------------

--
-- Table structure for table `nm_ordercod`
--

CREATE TABLE `nm_ordercod` (
  `cod_id` int(10) UNSIGNED NOT NULL,
  `cod_transaction_id` varchar(60) NOT NULL,
  `cod_cus_id` int(10) UNSIGNED NOT NULL,
  `cod_pro_id` int(11) UNSIGNED NOT NULL,
  `cod_prod_unitPrice` double NOT NULL DEFAULT '0',
  `cod_order_type` tinyint(4) NOT NULL COMMENT '1-product,2-deals',
  `cod_qty` int(11) NOT NULL,
  `cod_amt` decimal(10,2) NOT NULL COMMENT '(unit_price*quantity)',
  `cod_tax` decimal(10,2) NOT NULL COMMENT 'per_product_tax (in %)',
  `cod_taxAmt` decimal(10,2) NOT NULL,
  `cod_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cod_status` tinyint(4) NOT NULL COMMENT '1-sucess,2-complete,3-hold,4-failed',
  `delivery_status` int(11) NOT NULL COMMENT '1->order_placed,2->order_packed,3->Dispatched,4->Delivered,5->cancel pending,6->cancelled,7->return pending ,8->returned,9->replace pending,10->replaced',
  `created_date` varchar(20) NOT NULL,
  `cod_paytype` smallint(6) NOT NULL COMMENT '0=>cash on delivery',
  `cod_pro_color` tinyint(4) NOT NULL,
  `cod_pro_size` tinyint(4) NOT NULL,
  `cod_shipping_amt` varchar(20) NOT NULL,
  `cod_ship_addr` text NOT NULL,
  `cod_merchant_id` int(11) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `coupon_amount_type` varchar(255) NOT NULL,
  `coupon_amount` varchar(100) NOT NULL,
  `coupon_total_amount` varchar(100) NOT NULL,
  `wallet_amount` double NOT NULL,
  `cod_prod_actualprice` double NOT NULL,
  `mer_commission_amt` decimal(10,2) NOT NULL,
  `mer_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_ordercod`
--

INSERT INTO `nm_ordercod` (`cod_id`, `cod_transaction_id`, `cod_cus_id`, `cod_pro_id`, `cod_prod_unitPrice`, `cod_order_type`, `cod_qty`, `cod_amt`, `cod_tax`, `cod_taxAmt`, `cod_date`, `cod_status`, `delivery_status`, `created_date`, `cod_paytype`, `cod_pro_color`, `cod_pro_size`, `cod_shipping_amt`, `cod_ship_addr`, `cod_merchant_id`, `coupon_code`, `coupon_type`, `coupon_amount_type`, `coupon_amount`, `coupon_total_amount`, `wallet_amount`, `cod_prod_actualprice`, `mer_commission_amt`, `mer_amt`) VALUES
(1, 'ORDER15253464771', 1, 1, 850, 1, 1, '850.00', '10.00', '85.00', '2018-05-03 08:51:17', 3, 1, '', 0, 0, 0, '20', 'ishwarya,cfgh,xdfb,cfb,421010,9632587410,pofi@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1000, '95.50', '859.50'),
(2, 'ORDER15271404352', 7, 8, 999, 1, 1, '999.00', '0.00', '0.00', '2018-05-24 15:10:35', 3, 1, '', 0, 0, 11, '0', 'priya,12,34,tamilnadu,641009,1234567890,laravelseo@gmail.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1200, '9.99', '989.01'),
(3, 'ORDER15271586903', 7, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-05-24 08:14:50', 3, 1, '', 0, 3, 11, '20', 'priya,1,2,tamilnadu,641009,1234567890,laravelseo@gmail.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1500, '111.89', '1007.01'),
(4, 'ORDER15272794614', 12, 5, 550, 1, 1, '550.00', '0.00', '0.00', '2018-05-26 05:47:41', 3, 1, '', 0, 12, 3, '0', 'sami pasha,53 CCA,53,Punjab,054444,3234364976,sami.pasha@techlatitude.com,los angeles,India', 2, '0', '0', '0', '0', '0', 0, 650, '5.50', '544.50'),
(5, 'ORDER152751244911', 12, 9, 600, 1, 4, '2400.00', '0.00', '0.00', '2018-05-28 10:30:49', 3, 1, '', 0, 0, 11, '0', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 680, '24.00', '2376.00'),
(6, 'ORDER152751244911', 12, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-05-28 10:30:49', 3, 1, '', 0, 0, 11, '7', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '5.80', '52.20'),
(7, 'ORDER152751244911', 12, 3, 700, 1, 3, '2100.00', '10.00', '210.00', '2018-05-28 10:30:49', 3, 1, '', 0, 11, 3, '60', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 845, '237.00', '2133.00'),
(8, 'ORDER152751244911', 12, 1, 999, 1, 2, '1998.00', '10.00', '199.80', '2018-05-28 10:30:49', 3, 1, '', 0, 3, 11, '40', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1500, '223.78', '2014.02'),
(9, 'ORDER152751244911', 12, 5, 550, 1, 2, '1100.00', '0.00', '0.00', '2018-05-28 10:30:49', 3, 1, '', 0, 12, 3, '0', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 650, '11.00', '1089.00'),
(10, 'ORDER152751244911', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-05-28 10:30:49', 3, 1, '', 0, 10, 11, '20', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.99', '1087.93'),
(11, 'ORDER152751244911', 12, 4, 11999, 2, 2, '23998.00', '0.00', '0.00', '2018-05-28 10:30:49', 3, 1, '', 0, 0, 0, '0', 'user,sssssssss,ss,ss,11111,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 12999, '3599.70', '20398.30'),
(12, 'ORDER152757508712', 12, 1, 999, 1, 2, '1998.00', '10.00', '199.80', '2018-05-29 15:54:47', 3, 1, '', 0, 3, 11, '40', 'tes,test1,tes,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1500, '223.78', '2014.02'),
(13, 'ORDER152758959014', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-05-29 07:56:30', 3, 1, '', 0, 10, 11, '20', 'user,123,456,tamil nadu,641009,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.99', '1087.93'),
(14, 'ORDER152758959014', 12, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-05-29 07:56:30', 3, 1, '', 0, 0, 11, '0', 'user,123,456,tamil nadu,641009,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 750, '70.20', '631.80'),
(15, 'ORDERdgdu71kH', 12, 6, 50, 1, 4, '200.00', '2.00', '4.00', '2018-05-30 15:55:59', 3, 1, '', 0, 0, 0, '7.00', 'User,123,456,Tamil nadu,641009,1234567890,user@laravelecommerce.com', 1, '', '', '', '', '', 0, 0, '23.20', '208.80'),
(16, 'ORDER7AL2REIu', 24, 10, 6800, 1, 2, '13600.00', '15.00', '2040.00', '2018-05-30 09:11:50', 3, 1, '', 0, 0, 0, '70.00', 'Test,testing,test,tn,641010,9638527410,test@mailinator.com', 1, '', '', '', '', '', 0, 0, '1578.00', '14202.00'),
(17, 'ORDER7QMu5jjv', 24, 4, 11999, 2, 2, '23998.00', '0.00', '0.00', '2018-05-30 09:34:17', 3, 1, '', 0, 0, 0, '0', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 3, '', '', '', '', '', 0, 0, '3599.70', '20398.30'),
(18, 'ORDERB78WHYmx', 24, 3, 700, 1, 1, '700.00', '10.00', '70.00', '2018-05-30 09:37:30', 3, 1, '', 0, 82, 97, '1.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 1, '', '', '', '', '', 0, 0, '77.10', '693.90'),
(19, 'ORDERv6NUIXHe', 24, 5, 12999, 2, 3, '38997.00', '0.00', '0.00', '2018-05-30 09:52:46', 3, 1, '', 0, 0, 0, '0', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 3, '', '', '', '', '', 0, 0, '5849.55', '33147.45'),
(20, 'ORDERHykFlM8s', 24, 2, 800, 1, 2, '1600.00', '10.00', '160.00', '2018-05-30 09:53:28', 3, 1, '', 0, 0, 94, '1.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 1, '', '', '', '', '', 0, 0, '176.20', '1585.80'),
(21, 'ORDERYdfFdQRR', 24, 4, 11999, 2, 3, '35997.00', '0.00', '0.00', '2018-05-30 09:53:49', 3, 1, '', 0, 0, 0, '0', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 3, '', '', '', '', '', 0, 0, '5399.55', '30597.45'),
(22, 'ORDERur3AQY6g', 24, 5, 550, 1, 3, '1650.00', '0.00', '0.00', '2018-05-30 09:55:49', 3, 1, '', 0, 55, 74, '0.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 2, '', '', '', '', '', 0, 0, '16.50', '1633.50'),
(23, 'ORDERSeojs9h1', 24, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-05-30 10:07:16', 3, 1, '', 0, 0, 0, '0.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 1, '', '', '', '', '', 0, 0, '70.20', '631.80'),
(24, 'ORDER9F0LpPOj', 24, 5, 12999, 2, 4, '51996.00', '0.00', '0.00', '2018-05-30 10:08:27', 3, 1, '', 0, 0, 0, '0', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 3, '', '', '', '', '', 0, 0, '7799.40', '44196.60'),
(25, 'ORDERvQpyQedD', 24, 2, 800, 1, 3, '2400.00', '10.00', '240.00', '2018-05-30 10:36:39', 3, 1, '', 0, 0, 95, '1.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 1, '', '', '', '', '', 0, 0, '264.30', '2378.70'),
(26, 'ORDERcLE0f9SY', 24, 2, 800, 1, 2, '1600.00', '10.00', '160.00', '2018-05-30 10:47:28', 3, 1, '', 0, 0, 94, '1.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 1, '', '', '', '', '', 0, 0, '176.20', '1585.80'),
(27, 'ORDERa8bOpiCt', 24, 7, 40000, 2, 1, '40000.00', '10.00', '4000.00', '2018-05-31 14:36:57', 3, 1, '', 0, 0, 0, '20', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 4, '', '', '', '', '', 0, 0, '4402.00', '39618.00'),
(28, 'ORDERolF1ZddO', 24, 11, 4800, 1, 1, '4800.00', '10.00', '480.00', '2018-05-31 14:44:32', 3, 1, '', 0, 0, 0, '20', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 4, '', '', '', '', '', 0, 0, '530.00', '4770.00'),
(29, 'ORDERnMbDg8Jb', 24, 11, 4800, 1, 2, '9600.00', '10.00', '960.00', '2018-05-31 14:58:29', 3, 1, '', 0, 0, 0, '20.00', 'Test,Test,Teet,Tn,641010,9638527410,ishwarya@pofitec.com', 4, '', '', '', '', '', 0, 0, '1060.00', '9540.00'),
(30, 'ORDERZ4GC5wQ1', 26, 11, 4800, 1, 2, '9600.00', '10.00', '960.00', '2018-05-31 15:30:18', 3, 1, '', 0, 0, 0, '20.00', 'New,new,new 123,tn ,641010,9638527410,test@gmail.com', 4, '', '', '', '', '', 0, 0, '1060.00', '9540.00'),
(31, 'ORDERmikEkeeU', 26, 11, 4800, 1, 1, '4800.00', '10.00', '480.00', '2018-05-31 05:05:37', 3, 1, '', 0, 0, 0, '20', 'New,New,New 123,Tn,641010,9638527410,new@mailinator.com', 4, '', '', '', '', '', 0, 0, '530.00', '4770.00'),
(32, 'ORDER152785399350', 12, 10, 6800, 1, 2, '13600.00', '15.00', '2040.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 11, '140', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 8000, '1578.00', '14202.00'),
(33, 'ORDER152785399350', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-01 09:23:13', 3, 1, '', 0, 10, 11, '1', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(34, 'ORDER152785399350', 12, 11, 4800, 1, 3, '14400.00', '10.00', '1440.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 0, '60', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 4, '0', '0', '0', '0', '0', 0, 5000, '1590.00', '14310.00'),
(35, 'ORDER152785399350', 12, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-06-01 09:23:13', 3, 1, '', 0, 3, 11, '20', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1500, '111.89', '1007.01'),
(36, 'ORDER152785399350', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-01 09:23:13', 3, 1, '', 0, 10, 11, '1', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(37, 'ORDER152785399350', 12, 7, 650, 1, 5, '3250.00', '8.00', '260.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 11, '0', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 750, '351.00', '3159.00'),
(38, 'ORDER152785399350', 12, 11, 4800, 1, 1, '4800.00', '10.00', '480.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 0, '20', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 4, '0', '0', '0', '0', '0', 0, 5000, '530.00', '4770.00'),
(39, 'ORDER152785399350', 12, 5, 550, 1, 1, '550.00', '0.00', '0.00', '2018-06-01 09:23:13', 3, 1, '', 0, 11, 2, '0', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 650, '5.50', '544.50'),
(40, 'ORDER152785399350', 12, 5, 550, 1, 1, '550.00', '0.00', '0.00', '2018-06-01 09:23:13', 3, 1, '', 0, 11, 2, '0', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 650, '5.50', '544.50'),
(41, 'ORDER152785399350', 12, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-06-01 09:23:13', 3, 1, '', 0, 3, 11, '20', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1500, '111.89', '1007.01'),
(42, 'ORDER152785399350', 12, 10, 6800, 1, 2, '13600.00', '15.00', '2040.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 11, '140', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 8000, '1578.00', '14202.00'),
(43, 'ORDER152785399350', 12, 3, 700, 1, 1, '700.00', '10.00', '70.00', '2018-06-01 09:23:13', 3, 1, '', 0, 11, 10, '1', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 845, '77.10', '693.90'),
(44, 'ORDER152785399350', 12, 2, 800, 1, 1, '800.00', '10.00', '80.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 10, '1', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 999, '88.10', '792.90'),
(45, 'ORDER152785399350', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-01 09:23:13', 3, 1, '', 0, 10, 11, '1', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(46, 'ORDER152785399350', 12, 11, 4800, 1, 2, '9600.00', '10.00', '960.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 0, '40', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 4, '0', '0', '0', '0', '0', 0, 5000, '1060.00', '9540.00'),
(47, 'ORDER152785399350', 12, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 11, '8', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '5.90', '53.10'),
(48, 'ORDER152785399350', 12, 5, 12999, 2, 2, '25998.00', '0.00', '0.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 0, '0', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 13999, '3899.70', '22098.30'),
(49, 'ORDER152785399350', 12, 6, 85999, 2, 4, '343996.00', '0.00', '0.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 0, '0', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 89000, '51599.40', '292396.60'),
(50, 'ORDER152785399350', 12, 4, 11999, 2, 2, '23998.00', '0.00', '0.00', '2018-06-01 09:23:13', 3, 1, '', 0, 0, 0, '0', 'user,yxcyxc,sdfsdf,yxcyxc,23456,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 12999, '3599.70', '20398.30'),
(51, 'ORDER152798362351', 12, 7, 650, 1, 3, '1950.00', '8.00', '156.00', '2018-06-03 09:23:43', 3, 1, '', 0, 0, 11, '0', 'BRUNO SOARES DA SILVA,TERCEIRA RUA RURAL,xxxx,PAR,67035-,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 750, '210.60', '1895.40'),
(52, 'ORDER152809080953', 12, 9, 600, 1, 2, '1200.00', '0.00', '0.00', '2018-06-04 15:10:09', 3, 1, '', 0, 0, 11, '0', 'user,k,j,j,8,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 680, '12.00', '1188.00'),
(53, 'ORDER152809080953', 12, 5, 12999, 2, 1, '12999.00', '0.00', '0.00', '2018-06-04 15:10:09', 3, 2, '', 0, 0, 0, '0', 'user,k,j,j,8,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 13999, '1949.85', '11049.15'),
(54, 'ORDER152834732554', 12, 34, 100, 1, 2, '200.00', '15.00', '30.00', '2018-06-07 14:25:25', 3, 1, '', 0, 0, 11, '0', 'user,Irpavi c 3 Nro 101,calle 1,Bolivia  La Paz,0000,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 50000, '23.00', '207.00'),
(55, 'ORDER152845376656', 12, 10, 6800, 1, 3, '20400.00', '15.00', '3060.00', '2018-06-08 07:59:26', 3, 1, '', 0, 0, 11, '210', 'user,f,bn,b,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 8000, '2367.00', '21303.00'),
(56, 'ORDER152845376656', 12, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-06-08 07:59:26', 3, 1, '', 0, 3, 11, '20', 'user,f,bn,b,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1500, '111.89', '1007.01'),
(57, 'ORDER152851829457', 12, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-06-09 13:54:54', 3, 1, '', 0, 0, 11, '8', '081567777466,Sumampir rt02rw04 Rembang,sumampir,Jawa Tengah,53356,81567777466,agil.etiawan@gmail.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '5.90', '53.10'),
(58, 'ORDER152865938458', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-11 05:06:24', 3, 1, '', 0, 2, 11, '1', 'syed jafri,hvh,jbkj,Bihar,800001,7004577900,jafrihassan1@outlook.com,chennai,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(59, 'ORDERs02oCdoN', 26, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-06-12 15:55:53', 3, 1, '', 0, 0, 0, '8.00', 'New,New,New 123,Tn,641010,9638527410,new@mailinator.com', 1, '', '', '', '', '', 0, 0, '5.90', '53.10'),
(60, 'ORDER152888468860', 12, 6, 50, 1, 2, '100.00', '2.00', '2.00', '2018-06-13 07:41:28', 3, 1, '', 0, 0, 11, '16', 'Mohan,Ram Nagar,Coimbatore,TN,641009,9597271533,appincoimbatoregp@gmail.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '11.80', '106.20'),
(61, 'ORDERoDJXE85b', 26, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-06-13 08:24:31', 3, 1, '', 0, 117, 0, '20.00', 'New,New,New 123,Tn,641010,9638527410,new@mailinator.com', 1, '', '', '', '', '', 0, 0, '111.89', '1007.01'),
(62, 'ORDERFmQBCHdK', 30, 35, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-13 10:25:47', 3, 1, '', 0, 119, 127, '20', 'Madhu,test,test,tn,641018,9632507410,tsf@hj.com', 6, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(63, 'ORDERRv03QpLR', 26, 35, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-13 10:26:56', 3, 1, '', 0, 118, 127, '20.00', 'New,New,New 123,Tn,641010,9638527410,new@mailinator.com', 6, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(64, 'ORDERgsh5DtMm', 31, 11, 500, 2, 1, '500.00', '0.00', '0.00', '2018-06-13 13:53:16', 3, 1, '', 0, 0, 0, '0', 'Gugan,rtnnkju,ccbnnmm,ghbb,889665,58896658874,guihg@ghhh.com', 6, '', '', '', '', '', 0, 0, '50.00', '450.00'),
(65, 'ORDERK0SdWa7r', 33, 35, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-14 14:39:11', 3, 1, '', 0, 119, 127, '20', 'Test,Office,Guy fch,Jcjc,23654,963852711,yff@fghj.com', 6, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(66, 'ORDER6VCnzsdz', 31, 35, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-14 15:01:44', 3, 1, '', 0, 118, 127, '20.00', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 6, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(67, 'ORDERJDsQoD7b', 31, 13, 50, 2, 1, '50.00', '0.00', '0.00', '2018-06-14 15:50:47', 3, 1, '', 0, 0, 0, '0', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 1, '', '', '', '', '', 0, 0, '5.00', '45.00'),
(68, 'ORDER152895728268', 12, 13, 50, 2, 9, '450.00', '0.00', '0.00', '2018-06-14 15:51:22', 3, 1, '', 0, 0, 0, '0', 'isg,test,test,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '45.00', '405.00'),
(69, 'ORDER152895730369', 12, 12, 850, 2, 10, '8500.00', '10.00', '850.00', '2018-06-14 15:51:43', 3, 1, '', 0, 0, 0, '200', 'zdfv,dfv,zsd,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1000, '955.00', '8595.00'),
(70, 'ORDER152896763970', 12, 9, 150, 2, 2, '300.00', '5.00', '15.00', '2018-06-14 06:43:59', 3, 1, '', 0, 0, 0, '0', 'ra,szdf,zd,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 250, '31.50', '283.50'),
(71, 'ORDER152896769672', 12, 10, 6800, 1, 2, '13600.00', '15.00', '2040.00', '2018-06-14 06:44:56', 3, 1, '', 0, 0, 11, '140', 'ra,szdf,zd,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 8000, '1578.00', '14202.00'),
(72, 'ORDER152896769672', 12, 9, 600, 1, 2, '1200.00', '0.00', '0.00', '2018-06-14 06:44:56', 3, 1, '', 0, 0, 11, '0', 'ra,szdf,zd,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 680, '12.00', '1188.00'),
(73, 'ORDER152896773073', 12, 35, 500, 1, 2, '1000.00', '10.00', '100.00', '2018-06-14 06:45:30', 3, 1, '', 0, 2, 1, '40', 'ishwarya,cfgh,xdfb,cfb,421010,9632587410,pofi@mailinator.com,Coimbtore,India', 6, '0', '0', '0', '0', '0', 0, 1000, '114.00', '1026.00'),
(74, 'ORDER152896776474', 12, 35, 500, 1, 2, '1000.00', '10.00', '100.00', '2018-06-14 06:46:04', 3, 1, '', 0, 2, 1, '40', 'ishwarya,test,tes,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 6, '0', '0', '0', '0', '0', 0, 1000, '114.00', '1026.00'),
(75, 'ORDER152896785375', 12, 35, 500, 1, 2, '1000.00', '10.00', '100.00', '2018-06-14 06:47:33', 3, 1, '', 0, 2, 1, '40', 'ishwarya,test,test2,tamilnadu,421010,9632587410,singlele@mailinator.com,Coimbtore,India', 6, '0', '0', '0', '0', '0', 0, 1000, '114.00', '1026.00'),
(76, 'ORDERfh6Z7bIL', 31, 37, 75, 1, 1, '75.00', '10.00', '7.50', '2018-06-14 10:46:19', 3, 1, '', 0, 0, 0, '20.00', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 7, '', '', '', '', '', 0, 0, '10.25', '92.25'),
(77, 'ORDERe0TdXGmm', 31, 14, 450, 2, 1, '450.00', '20.00', '90.00', '2018-06-14 11:38:44', 3, 1, '', 0, 0, 0, '10', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 7, '', '', '', '', '', 0, 0, '55.00', '495.00'),
(78, 'ORDERMRXtX7Mr', 34, 38, 500, 1, 2, '1000.00', '10.00', '100.00', '2018-06-15 15:35:14', 3, 1, '', 0, 0, 0, '20.00', 'Test,tdidisit,sitzjf,hzzhd,567,9638521470,dsi@tdgi.com', 8, '', '', '', '', '', 0, 0, '114.00', '1026.00'),
(79, 'ORDERR76qILtU', 34, 38, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-15 15:38:44', 3, 1, '', 0, 0, 0, '20', 'Testrecheck add,Tdidisit,Sitzjf,Hzzhd,567,96385214700,dsi@tdgi.co', 8, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(80, 'ORDERMjoz2tYJ', 31, 38, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-15 08:30:55', 3, 1, '', 0, 0, 0, '20', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 8, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(81, 'ORDERMjoz2tYJ', 31, 37, 75, 1, 2, '150.00', '10.00', '15.00', '2018-06-15 08:30:55', 3, 1, '', 0, 0, 0, '40', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 7, '', '', '', '', '', 0, 0, '20.50', '184.50'),
(82, 'ORDERMjoz2tYJ', 31, 3, 700, 1, 1, '700.00', '10.00', '70.00', '2018-06-15 08:30:55', 3, 1, '', 0, 115, 127, '1', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 1, '', '', '', '', '', 0, 0, '77.10', '693.90'),
(83, 'ORDERkrDMJ2ky', 31, 38, 500, 1, 1, '500.00', '10.00', '50.00', '2018-06-15 09:45:16', 3, 1, '', 0, 0, 0, '20.00', 'Gugan,Rtnnkju,Ccbnnmm,Ghbb,889665,58896658874,guihg@ghhh.com', 8, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(84, 'ORDERKwk12ArM', 12, 5, 550, 1, 1, '550.00', '0.00', '0.00', '2018-06-18 14:07:03', 3, 1, '', 0, 104, 127, '0', 'Ishwarya,Test,Test2,Tamilnadu,421010,9632587410,singlele@mailinator.com', 2, '', '', '', '', '', 0, 0, '5.50', '544.50'),
(85, 'ORDER152935628887', 12, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-06-19 06:41:28', 3, 1, '', 0, 0, 11, '0', 'Armands Kiselutis,61,Brentwood Road,Lancashire,BB98AY,7492724695,skypewip@gmail.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 750, '70.20', '631.80'),
(86, 'ORDER152935628887', 12, 9, 150, 2, 2, '300.00', '5.00', '15.00', '2018-06-19 06:41:28', 3, 1, '', 0, 0, 0, '0', 'Armands Kiselutis,61,Brentwood Road,Lancashire,BB98AY,7492724695,skypewip@gmail.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 250, '31.50', '283.50'),
(87, 'ORDER152935628887', 12, 4, 11999, 2, 3, '35997.00', '0.00', '0.00', '2018-06-19 06:41:28', 3, 1, '', 0, 0, 0, '0', 'Armands Kiselutis,61,Brentwood Road,Lancashire,BB98AY,7492724695,skypewip@gmail.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 12999, '5399.55', '30597.45'),
(88, 'ORDERnQd8NOo3', 37, 7, 650, 1, 2, '1300.00', '8.00', '104.00', '2018-06-19 15:00:48', 3, 1, '', 0, 0, 0, '0', 'Test,Testing,Testing,TN,641010,9638527410,ishwarya@gmail.com', 1, '', '', '', '', '', 0, 0, '140.40', '1263.60'),
(89, 'ORDER5zp1AajX', 43, 4, 11999, 2, 1, '11999.00', '0.00', '0.00', '2018-06-19 15:36:54', 3, 1, '', 0, 0, 0, '0', 'Pratap,tex,kg kc,gc,641010,9638527410,cofo@istofy.com', 3, '', '', '', '', '', 0, 0, '1799.85', '10199.15'),
(90, 'ORDERZrQxC3D8', 43, 2, 800, 1, 1, '800.00', '10.00', '80.00', '2018-06-19 15:39:40', 3, 1, '', 0, 0, 127, '1.00', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 1, '', '', '', '', '', 0, 0, '88.10', '792.90'),
(91, 'ORDER6uxPX5fq', 43, 4, 11999, 2, 1, '11999.00', '0.00', '0.00', '2018-06-19 16:15:57', 3, 1, '', 0, 0, 0, '0', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 3, '', '', '', '', '', 0, 0, '1799.85', '10199.15'),
(92, 'ORDERU2mMKeba', 37, 7, 650, 1, 3, '1950.00', '8.00', '156.00', '2018-06-19 16:18:32', 3, 1, '', 0, 0, 0, '0', 'Test,Testing,Testing,TN,641010,9638527410,ishwarya@gmail.com', 1, '', '', '', '', '', 0, 0, '210.60', '1895.40'),
(93, 'ORDERGfYY9yQ2', 37, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-06-19 16:21:38', 3, 1, '', 0, 0, 0, '0.00', 'Test,Testing,Testing,TN,641010,9638527410,ishwarya@gmail.com', 1, '', '', '', '', '', 0, 0, '70.20', '631.80'),
(94, 'ORDERPgE08N6v', 43, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-19 09:38:47', 3, 1, '', 0, 106, 0, '1', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 2, '', '', '', '', '', 0, 0, '10.80', '1069.12'),
(95, 'ORDERPgE08N6v', 43, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-06-19 09:38:47', 3, 1, '', 0, 0, 0, '0', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 1, '', '', '', '', '', 0, 0, '70.20', '631.80'),
(96, 'ORDERYJmICVUA', 43, 4, 11999, 2, 1, '11999.00', '0.00', '0.00', '2018-06-19 09:39:19', 3, 1, '', 0, 0, 0, '0', 'Pratap,Tex,Kg kc,Gc,641010,9638527410,cofo@istofy.com', 3, '', '', '', '', '', 0, 0, '1799.85', '10199.15'),
(97, 'ORDER152941962697', 12, 9, 600, 1, 1, '600.00', '0.00', '0.00', '2018-06-19 12:17:06', 3, 1, '', 0, 0, 11, '0', 'user,ahmethotmailcom,seksfjsdfjoxgjkdsopg,werwerewrew,231231,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 680, '6.00', '594.00'),
(98, 'ORDER152947442398', 45, 4, 999, 1, 3, '2997.00', '8.00', '239.76', '2018-06-20 15:30:23', 3, 1, '', 0, 2, 11, '3', 'ert,ret,werew,tamilnadu,173027,234254,sherly@pofitec.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '32.40', '3207.36'),
(99, 'ORDER152956218699', 12, 3, 700, 1, 2, '1400.00', '10.00', '140.00', '2018-06-21 11:53:06', 3, 1, '', 0, 1, 10, '2', 'user,test,test,tn,641010,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 845, '154.20', '1387.80'),
(100, 'ORDER1529562255100', 12, 9, 150, 2, 2, '300.00', '5.00', '15.00', '2018-06-21 11:54:15', 3, 6, '', 0, 0, 0, '0', 'user,sdfv,sfvc,dc,41010,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 250, '31.50', '283.50'),
(101, 'ORDERJ6GGq7iS', 46, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-21 03:47:33', 3, 1, '', 0, 127, 0, '1', 'Test,kchgxj,jcjckf,TN,65773,96385214 ,coufhoy@surfisirs.ch', 2, '', '', '', '', '', 0, 0, '10.80', '1069.12'),
(102, 'ORDERkt6mKXS1', 51, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-06-22 10:13:57', 3, 1, '', 0, 0, 0, '0.00', 'Ishwarya,tdc,jfcgjx,tn,64110,963852710,kgoy@ifot.com', 1, '', '', '', '', '', 0, 0, '70.20', '631.80'),
(103, 'ORDERbIKOwROw', 52, 38, 500, 1, 2, '1000.00', '10.00', '100.00', '2018-06-22 01:13:11', 3, 1, '', 0, 0, 0, '20.00', 'New,ff7g7gi8,ucg8cigc,tn,641010,9638527410,ucff7@c7gf8f.com', 1, '', '', '', '', '', 0, 0, '114.00', '1026.00'),
(104, 'ORDERH3o55JRb', 52, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-06-22 01:14:27', 3, 1, '', 0, 127, 127, '20.00', 'New,tdcfyc7f,y dudcufv,ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '111.89', '1007.01'),
(105, 'ORDERaPq8QxfI', 52, 38, 500, 1, 3, '1500.00', '10.00', '150.00', '2018-06-22 01:16:28', 3, 1, '', 0, 0, 0, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '171.00', '1539.00'),
(106, 'ORDERp8UM38Pf', 52, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-06-22 01:21:01', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '111.89', '1007.01'),
(107, 'ORDERrNElxnzj', 52, 38, 500, 1, 3, '1500.00', '10.00', '150.00', '2018-06-22 01:23:57', 3, 1, '', 0, 0, 0, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '171.00', '1539.00'),
(108, 'ORDERrkHa5Ule', 52, 38, 500, 1, 5, '2500.00', '10.00', '250.00', '2018-06-22 01:29:23', 3, 1, '', 0, 0, 0, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '285.00', '2565.00'),
(109, 'ORDERTwkmNlCh', 52, 38, 500, 1, 2, '1000.00', '10.00', '100.00', '2018-06-22 01:30:09', 3, 1, '', 0, 0, 0, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '114.00', '1026.00'),
(110, 'ORDERTq82PGvv', 52, 4, 999, 1, 2, '1998.00', '8.00', '159.84', '2018-06-22 01:30:42', 3, 1, '', 0, 127, 0, '1.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 2, '', '', '', '', '', 0, 0, '21.60', '2138.24'),
(111, 'ORDERSaEi5eCl', 52, 7, 650, 1, 2, '1300.00', '8.00', '104.00', '2018-06-22 01:31:47', 3, 1, '', 0, 0, 0, '0.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '140.40', '1263.60'),
(112, 'ORDERzJRbzLui', 52, 39, 900, 1, 1, '900.00', '10.00', '90.00', '2018-06-22 05:20:06', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '101.00', '909.00'),
(113, 'ORDERcdY4tgtG', 52, 4, 999, 1, 2, '1998.00', '8.00', '159.84', '2018-06-22 05:20:57', 3, 1, '', 0, 127, 0, '1.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 2, '', '', '', '', '', 0, 0, '21.60', '2138.24'),
(114, 'ORDERZnQx4zSD', 52, 39, 900, 1, 2, '1800.00', '10.00', '180.00', '2018-06-22 05:22:50', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '202.00', '1818.00'),
(115, 'ORDEREuK06lmk', 52, 39, 900, 1, 1, '900.00', '10.00', '90.00', '2018-06-22 05:25:49', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '101.00', '909.00'),
(116, 'ORDERLBf7eSeW', 52, 39, 900, 1, 2, '1800.00', '10.00', '180.00', '2018-06-22 05:48:02', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '202.00', '1818.00'),
(117, 'ORDER629naOlO', 52, 4, 999, 1, 2, '1998.00', '8.00', '159.84', '2018-06-22 05:58:13', 3, 1, '', 0, 127, 0, '1.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 2, '', '', '', '', '', 0, 0, '21.60', '2138.24'),
(118, 'ORDERyfg36ATR', 52, 16, 500, 2, 2, '1000.00', '10.00', '100.00', '2018-06-23 10:43:01', 3, 1, '', 0, 0, 0, '40', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '114.00', '1026.00'),
(119, 'ORDERuutBrj8s', 52, 40, 950, 1, 1, '950.00', '10.00', '95.00', '2018-06-23 12:00:58', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 11, '', '', '', '', '', 0, 0, '106.50', '958.50'),
(120, 'ORDERAgbkVlVg', 52, 40, 950, 1, 1, '950.00', '10.00', '95.00', '2018-06-23 12:03:36', 3, 1, '', 0, 127, 127, '20', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 11, '', '', '', '', '', 0, 0, '106.50', '958.50'),
(121, 'ORDERAgbkVlVg', 52, 7, 650, 1, 1, '650.00', '8.00', '52.00', '2018-06-23 12:03:36', 3, 1, '', 0, 0, 0, '0', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 1, '', '', '', '', '', 0, 0, '70.20', '631.80'),
(122, 'ORDER0c1fn9Kt', 52, 16, 500, 2, 2, '1000.00', '10.00', '100.00', '2018-06-23 12:09:06', 3, 1, '', 0, 0, 0, '40', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '114.00', '1026.00'),
(123, 'ORDERVo2ZGlku', 52, 19, 950, 2, 10, '9500.00', '0.00', '0.00', '2018-06-23 12:19:22', 3, 1, '', 0, 0, 0, '0', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 10, '', '', '', '', '', 0, 0, '950.00', '8550.00'),
(124, 'ORDERYrNEBsXm', 52, 40, 950, 1, 7, '6650.00', '10.00', '665.00', '2018-06-23 12:22:02', 3, 1, '', 0, 127, 127, '20.00', 'New,Tdcfyc7f,Y dudcufv,Ydfy,522558,9638527410,dtuf@f77gig.com', 11, '', '', '', '', '', 0, 0, '745.50', '6709.50'),
(125, 'ORDERVojxoAI1', 35, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-06-23 01:45:47', 3, 1, '', 0, 0, 0, '8.00', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, 0, '5.90', '53.10'),
(126, 'ORDER1529747827137', 12, 37, 75, 1, 1, '75.00', '10.00', '7.50', '2018-06-23 03:27:06', 3, 1, '', 0, 0, 11, '20', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '10.25', '92.25'),
(127, 'ORDER1529747827137', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-23 03:27:06', 3, 1, '', 0, 2, 11, '1', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(128, 'ORDER1529747827137', 12, 4, 999, 1, 2, '1998.00', '8.00', '159.84', '2018-06-23 03:27:06', 3, 1, '', 0, 2, 11, '2', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '21.60', '2138.24'),
(129, 'ORDER1529747827137', 12, 37, 75, 1, 3, '225.00', '10.00', '22.50', '2018-06-23 03:27:06', 3, 1, '', 0, 0, 11, '60', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '30.75', '276.75'),
(130, 'ORDER1529747827137', 12, 6, 50, 1, 2, '100.00', '2.00', '2.00', '2018-06-23 03:27:06', 3, 1, '', 0, 0, 11, '16', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '11.80', '106.20'),
(131, 'ORDER1529747827137', 12, 39, 900, 1, 2, '1800.00', '10.00', '180.00', '2018-06-23 03:27:06', 3, 1, '', 0, 4, 9, '40', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 10, '0', '0', '0', '0', '0', 0, 1000, '202.00', '1818.00'),
(132, 'ORDER1529747827137', 12, 4, 999, 1, 2, '1998.00', '8.00', '159.84', '2018-06-23 03:27:06', 3, 1, '', 0, 2, 11, '2', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '21.60', '2138.24'),
(133, 'ORDER1529747827137', 12, 2, 800, 1, 1, '800.00', '10.00', '80.00', '2018-06-23 03:27:06', 3, 1, '', 0, 0, 10, '1', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 999, '88.10', '792.90'),
(134, 'ORDER1529747827137', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-23 03:27:06', 3, 1, '', 0, 2, 11, '1', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(135, 'ORDER1529747827137', 12, 39, 900, 1, 1, '900.00', '10.00', '90.00', '2018-06-23 03:27:06', 3, 1, '', 0, 10, 1, '20', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 10, '0', '0', '0', '0', '0', 0, 1000, '101.00', '909.00'),
(136, 'ORDER1529747827137', 12, 4, 11999, 2, 2, '23998.00', '0.00', '0.00', '2018-06-23 03:27:06', 3, 1, '', 0, 0, 0, '0', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 12999, '3599.70', '20398.30'),
(137, 'ORDER1529747827137', 12, 4, 11999, 2, 2, '23998.00', '0.00', '0.00', '2018-06-23 03:27:06', 3, 1, '', 0, 0, 0, '0', 'user,gfghfh,hfhghfh,tamil nadu,123,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 12999, '3599.70', '20398.30'),
(138, 'ORDERJPthodd1', 54, 39, 900, 1, 1, '900.00', '10.00', '90.00', '2018-06-23 03:52:17', 3, 1, '', 0, 127, 127, '20', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 10, '', '', '', '', '', 0, 0, '101.00', '909.00'),
(139, 'ORDERSPN2uUVo', 55, 18, 950, 2, 2, '1900.00', '10.00', '190.00', '2018-06-23 06:36:47', 3, 1, '', 0, 0, 0, '40', 'Figxicoh,ydduif,ududd78r,tn,641010,9638527410,jchchx@hhi.com', 11, '', '', '', '', '', 0, 0, '213.00', '1917.00'),
(140, 'ORDERgeceltgq', 1, 17, 950, 2, 2, '1900.00', '0.00', '0.00', '2018-06-25 01:22:21', 3, 1, '', 0, 0, 0, '0', 'Ishwarya,Cfgh,Xdfb,Cfb,421010,9632587410,pofi@mailinator.com', 11, '', '', '', '', '', 0, 0, '190.00', '1710.00'),
(141, 'ORDERmCKeX6Uy', 1, 17, 950, 2, 2, '1900.00', '0.00', '0.00', '2018-06-25 01:24:58', 3, 1, '', 0, 0, 0, '0', 'Ishwarya,Cfgh,Xdfb,Cfb,421010,9632587410,pofi@mailinator.com', 11, '', '', '', '', '', 0, 0, '190.00', '1710.00'),
(142, 'ORDER2upVb7Uf', 1, 16, 500, 2, 2, '1000.00', '10.00', '100.00', '2018-06-25 02:45:19', 3, 1, '', 0, 0, 0, '40', 'Ishwarya,Cfgh,Xdfb,Cfb,421010,9632587410,pofi@mailinator.com', 10, '', '', '', '', '', 0, 0, '114.00', '1026.00'),
(143, 'ORDER1529920144143', 12, 5, 550, 1, 1, '550.00', '0.00', '0.00', '2018-06-25 03:19:04', 3, 1, '', 0, 11, 2, '0', 'rtyr,ytry,rtytry,try,123435,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 650, '5.50', '544.50'),
(144, 'ORDERU05XWfVt', 35, 16, 500, 2, 1, '500.00', '10.00', '50.00', '2018-06-25 03:40:06', 3, 1, '', 0, 0, 0, '20', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 10, '', '', '', '', '', 0, 0, '57.00', '513.00'),
(145, 'ORDER1529923921145', 12, 2, 800, 1, 1, '800.00', '10.00', '80.00', '2018-06-25 04:22:01', 3, 1, '', 0, 0, 10, '1', 'user,test,test,banglore,123123,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 999, '88.10', '792.90'),
(146, 'ORDER1529924637146', 12, 37, 75, 1, 1, '75.00', '10.00', '7.50', '2018-06-25 04:33:57', 3, 1, '', 0, 0, 11, '20', 'user,dffd,fdgfg,fgdfg,7672,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '10.25', '92.25'),
(147, 'ORDER1529927435147', 12, 37, 75, 1, 1, '75.00', '10.00', '7.50', '2018-06-25 05:20:35', 3, 1, '', 0, 0, 11, '20', 'Sherly Paris,678 Ramnagar,tytry,Tamil Nadu,7768,9994988352,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '10.25', '92.25'),
(148, 'ORDER1529927895148', 12, 3, 700, 1, 2, '1400.00', '10.00', '140.00', '2018-06-25 05:28:15', 3, 1, '', 0, 11, 10, '2', 'user3,dfdfg,dghgj,dfsgfd,4353,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 845, '154.20', '1387.80'),
(149, 'ORDER1529928083149', 12, 9, 600, 1, 1, '600.00', '0.00', '0.00', '2018-06-25 05:31:23', 3, 1, '', 0, 0, 11, '0', 'user,fghf,fuhf,ftu,546547,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 680, '6.00', '594.00'),
(150, 'ORDER1529928217150', 12, 37, 75, 1, 2, '150.00', '10.00', '15.00', '2018-06-25 05:33:37', 3, 1, '', 0, 0, 11, '40', 'user,rtyty,ty,ryt,54675,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '20.50', '184.50'),
(151, 'ORDER1529942855151', 12, 18, 950, 2, 1, '950.00', '10.00', '95.00', '2018-06-25 09:37:35', 3, 1, '', 0, 0, 0, '20', 'user,test,test,banglore,123123,1234567890,user@laravelecommerce.com,Coimbtore,India', 11, '0', '0', '0', '0', '0', 0, 1000, '106.50', '958.50'),
(152, 'ORDER1529994407152', 12, 37, 75, 1, 5, '375.00', '10.00', '37.50', '2018-06-26 11:56:47', 3, 1, '', 0, 0, 11, '100', 'user,cbe,cbe,tn,641654,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '51.25', '461.25'),
(153, 'ORDER1529994947153', 12, 3, 700, 1, 1, '700.00', '10.00', '70.00', '2018-06-26 12:05:47', 3, 1, '', 0, 11, 10, '1', 'user,cbe,cbe,tn,641654,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 845, '77.10', '693.90'),
(154, '', 12, 9, 600, 1, 3, '1800.00', '0.00', '0.00', '2018-06-26 12:23:41', 3, 1, '', 0, 0, 11, '0', 'user,cbe,cbe,tn,641654,1234567890,user@laravelecommerce.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 680, '18.00', '1782.00'),
(155, 'ORDERyt56E8Yd', 35, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-06-27 02:55:05', 3, 1, '', 0, 0, 0, '8.00', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, 0, '5.90', '53.10'),
(156, 'ORDER4HW5bwrI', 59, 41, 750, 1, 1, '750.00', '10.00', '75.00', '2018-06-27 03:40:26', 3, 1, '', 0, 0, 0, '20.00', 'New,tesr,neew,tn,641010,9638527410,ishwarya@pofitec.com', 12, '', '', '', '', '', 0, 0, '84.50', '760.50'),
(157, 'ORDEROP8fVpAn', 54, 42, 500, 1, 1, '500.00', '0.00', '0.00', '2018-06-27 04:35:22', 3, 1, '', 0, 127, 127, '0', 'Test,Digi,Fix if,TN,35443524,3757373,ohfyof@otddotdot.con', 12, '', '', '', '', '', 0, 0, '50.00', '450.00'),
(158, 'ORDERCvYjHytF', 50, 6, 50, 1, 1, '50.00', '2.00', '1.00', '2018-06-28 01:38:00', 3, 1, '', 0, 0, 0, '8', 'test,gtscjycv,hfuhv,uffg,654,1425412541,gyddh@gggx.com', 1, '', '', '', '', '', 0, 0, '5.90', '53.10'),
(159, 'ORDERfZzuFZgw', 37, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-06-28 06:04:45', 3, 1, '', 0, 0, 0, '1', 'Test,Testing,Testing,TN,641010,9638527410,ishwarya@gmail.com', 2, '', '', '', '', '', 0, 0, '10.80', '1069.12'),
(160, 'ORDER1530381040160', 12, 10, 6800, 1, 1, '6800.00', '15.00', '1020.00', '2018-06-30 11:20:40', 3, 1, '', 0, 0, 11, '70', 'user,x4,46656,tala,500005,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 8000, '789.00', '7101.00'),
(161, 'ORDER1530526965161', 12, 6, 50, 1, 2, '100.00', '2.00', '2.00', '2018-07-02 03:52:45', 3, 1, '', 0, 0, 11, '16', 'user,test,tesrt,tn,641010,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '11.80', '106.20'),
(162, 'ORDER1530528434163', 12, 40, 950, 1, 2, '1900.00', '10.00', '190.00', '2018-07-02 04:17:14', 3, 1, '', 0, 2, 3, '2', 'ra,szdf,zd,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 11, '0', '0', '0', '0', '0', 0, 1000, '209.20', '1882.80'),
(163, 'ORDER1530528434163', 12, 22, 50, 2, 1, '50.00', '10.00', '5.00', '2018-07-02 04:17:14', 3, 1, '', 0, 0, 0, '20', 'ra,szdf,zd,tn,641010,9632587410,ishwarya@mailinator.com,Coimbtore,India', 13, '0', '0', '0', '0', '0', 0, 100, '0.75', '74.25'),
(164, 'ORDER1530595255164', 12, 40, 950, 1, 1, '950.00', '10.00', '95.00', '2018-07-03 10:50:55', 3, 1, '', 0, 2, 3, '1', 'user,fdf,trytry,fdgdf,435654,1234567890,user@laravelecommerce.com,Coimbtore,India', 11, '0', '0', '0', '0', '0', 0, 1000, '104.60', '941.40'),
(165, 'ORDERuzG8qqFW', 35, 42, 500, 1, 1, '500.00', '0.00', '0.00', '2018-07-03 11:03:25', 3, 1, '', 0, 127, 127, '0', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 12, '', '', '', '', '', 0, 0, '50.00', '450.00'),
(166, 'ORDERuzG8qqFW', 35, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-07-03 11:03:25', 3, 1, '', 0, 127, 127, '20', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, 0, '111.89', '1007.01'),
(167, 'ORDERnT5FyURs', 35, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-07-03 11:03:45', 3, 1, '', 0, 127, 127, '20.00', 'Nazeer Pofitec,Arputham Towers,Ram nagar,Tamil Nadu,641001,9445894458,nazeer@pofitec.com', 1, '', '', '', '', '', 0, 0, '111.89', '1007.01'),
(168, 'ORDER1530610277168', 12, 41, 750, 1, 1, '750.00', '10.00', '75.00', '2018-07-03 03:01:17', 3, 1, '', 0, 0, 11, '20', 'user,rfdt,rwtre,ytryt,5646,1234567890,user@laravelecommerce.com,Coimbtore,India', 12, '0', '0', '0', '0', '0', 0, 1000, '84.50', '760.50'),
(169, 'ORDER1530610336169', 12, 37, 75, 1, 1, '75.00', '10.00', '7.50', '2018-07-03 03:02:15', 3, 1, '', 0, 0, 11, '20', 'user,fghfgh,fghf,gfhhf,5465,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '10.25', '92.25'),
(170, 'ORDER1530652732170', 12, 4, 999, 1, 1, '999.00', '8.00', '79.92', '2018-07-04 02:48:52', 3, 1, '', 0, 10, 11, '1', 'subho,C-15  Chalantika Garia Station Road   Kolkata - 700084,Near Amtala Bus Stoppage In between Kavi Nazrul and Sahid Khudiram Merto,West Bengal,700084,5341351351,fjhfj@hvjh.vj,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '10.80', '1069.12'),
(171, 'ORDER1530682093171', 12, 22, 50, 2, 1, '50.00', '10.00', '5.00', '2018-07-04 10:58:13', 3, 1, '', 0, 0, 0, '20', 'user,asadsa,eegrfrg,dfsrf,434534,1234567890,user@laravelecommerce.com,Coimbtore,India', 13, '0', '0', '0', '0', '0', 0, 100, '0.75', '74.25'),
(172, 'ORDER1530710839175', 12, 8, 999, 1, 1, '999.00', '0.00', '0.00', '2018-07-04 06:57:19', 1, 4, '', 0, 0, 11, '0', 'sathosh,santhoshpofiteccom,134gaNDHIPURAM,Tamil Nadu,641022,8300687371,santhosh@pofitec.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1200, '9.99', '989.01'),
(173, 'ORDER1530710839175', 12, 8, 999, 1, 1, '999.00', '0.00', '0.00', '2018-07-04 06:57:19', 1, 4, '', 0, 0, 11, '0', 'sathosh,santhoshpofiteccom,134gaNDHIPURAM,Tamil Nadu,641022,8300687371,santhosh@pofitec.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1200, '9.99', '989.01'),
(174, 'ORDER1530710839175', 12, 4, 999, 1, 20, '19980.00', '8.00', '1598.40', '2018-07-04 06:57:19', 3, 1, '', 0, 14, 11, '20', 'sathosh,santhoshpofiteccom,134gaNDHIPURAM,Tamil Nadu,641022,8300687371,santhosh@pofitec.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 1500, '215.98', '21382.42'),
(175, 'ORDER1530710839175', 12, 46, 12, 1, 1, '12.00', '1.00', '0.12', '2018-07-04 06:57:19', 3, 1, '', 0, 0, 11, '0', 'sathosh,santhoshpofiteccom,134gaNDHIPURAM,Tamil Nadu,641022,8300687371,santhosh@pofitec.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, 12222, '0.12', '12.00'),
(176, 'ORDER1530938113178', 12, 37, 75, 1, 1, '75.00', '10.00', '7.50', '2018-07-07 10:05:13', 3, 1, '', 0, 0, 11, '20', 'user,vhjvh,jjjvjvjvjv,bihar,800001,7004500011,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 100, '10.25', '92.25'),
(177, 'ORDER1530938113178', 12, 6, 85999, 2, 1, '85999.00', '0.00', '0.00', '2018-07-07 10:05:13', 3, 1, '', 0, 0, 0, '0', 'user,vhjvh,jjjvjvjvjv,bihar,800001,7004500011,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 89000, '12899.85', '73099.15'),
(178, 'ORDER1530938113178', 12, 5, 12999, 2, 1, '12999.00', '0.00', '0.00', '2018-07-07 10:05:13', 3, 1, '', 0, 0, 0, '0', 'user,vhjvh,jjjvjvjvjv,bihar,800001,7004500011,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 13999, '1949.85', '11049.15'),
(179, 'ORDER1YvFbdPh', 37, 46, 12, 1, 2, '24.00', '1.00', '0.24', '2018-07-07 12:11:51', 3, 1, '', 0, 0, 0, '0.00', 'Test,Testing,Testing,TN,641010,9638527410,ishwarya@gmail.com', 2, '', '', '', '', '', 0, 0, '0.24', '24.00'),
(180, 'ORDER1531066134181', 12, 48, 500, 1, 1, '500.00', '0.00', '0.00', '2018-07-08 09:38:54', 3, 1, '', 0, 0, 2, '0', 'user,gfhfgh,hgfh,fgfdg,456756,1234567890,user@laravelecommerce.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, 1000, '50.00', '450.00'),
(181, 'ORDER1531066134181', 12, 5, 12999, 2, 5, '64995.00', '0.00', '0.00', '2018-07-08 09:38:54', 3, 1, '', 0, 0, 0, '0', 'user,gfhfgh,hgfh,fgfdg,456756,1234567890,user@laravelecommerce.com,Coimbtore,India', 3, '0', '0', '0', '0', '0', 0, 13999, '9749.25', '55245.75'),
(182, 'ORDER2DXd4Zqy', 37, 1, 999, 1, 1, '999.00', '10.00', '99.90', '2018-07-09 03:02:23', 3, 1, '', 0, 127, 127, '20.00', 'Test,Testing,Testing,TN,641010,9638527410,ishwarya@gmail.com', 1, '', '', '', '', '', 0, 0, '111.89', '1007.01'),
(183, 'ORDERGbX7sgoh', 73, 42, 500, 1, 1, '500.00', '0.00', '0.00', '2018-07-10 10:26:04', 3, 1, '', 0, 127, 127, '0', 'Tuan,hello,hello,snans kkkkaaaa,84,0986036164,vantuantran@gmail.com', 12, '', '', '', '', '', 0, 0, '50.00', '450.00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_ordercod_wallet`
--

CREATE TABLE `nm_ordercod_wallet` (
  `cod_transaction_id` varchar(255) NOT NULL,
  `wallet_used` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_ordercod_wallet`
--

INSERT INTO `nm_ordercod_wallet` (`cod_transaction_id`, `wallet_used`) VALUES
('ORDER1529928303dQjGkt', '102.50'),
('8XA904683K396563B', '342.00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_order_auction`
--

CREATE TABLE `nm_order_auction` (
  `oa_id` int(11) NOT NULL,
  `oa_pro_id` int(11) NOT NULL,
  `oa_cus_id` int(11) NOT NULL,
  `oa_cus_name` varchar(150) NOT NULL,
  `oa_cus_email` varchar(250) NOT NULL,
  `oa_cus_address` text NOT NULL,
  `oa_bid_amt` int(11) NOT NULL,
  `oa_bid_shipping_amt` int(11) NOT NULL,
  `oa_original_bit_amt` int(11) NOT NULL,
  `oa_bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `oa_bid_winner` int(11) NOT NULL COMMENT '1=> Winner, 0=> Bidders',
  `oa_bid_item_status` int(11) NOT NULL COMMENT '0=> Onprocess, 1=> Send,  3=>Cancelled',
  `oa_delivery_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_order_delivery_status`
--

CREATE TABLE `nm_order_delivery_status` (
  `delStatus_id` int(11) NOT NULL,
  `order_cust_id` int(11) NOT NULL,
  `cod_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `mer_id` int(11) NOT NULL,
  `order_type` int(11) NOT NULL COMMENT '''1''-product,''2''-deal',
  `transaction_id` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '''0''->cod,''1''->paypal',
  `delivery_statuss` int(11) NOT NULL,
  `cancel_status` int(11) NOT NULL COMMENT '''0''->not done,''1''->cancel pending ,''2''->cancelled,''3''->hold,4->"Disapproved"',
  `cancel_notes` text NOT NULL,
  `cancel_date` datetime NOT NULL,
  `cancel_approved_date` datetime NOT NULL,
  `return_status` int(11) NOT NULL COMMENT '''0''-not done,''1''-return pending,''3''->hold,''2''-returned,4->"Disapproved"',
  `return_notes` text NOT NULL,
  `return_date` datetime NOT NULL,
  `return_approved_date` datetime NOT NULL,
  `replace_status` int(11) NOT NULL COMMENT '''0''-not done,''1''-replace pending,''3''->hold,''2''-replaced,4->"Disapproved"',
  `replace_notes` text NOT NULL,
  `replace_date` datetime NOT NULL,
  `replace_approved_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_order_delivery_status`
--

INSERT INTO `nm_order_delivery_status` (`delStatus_id`, `order_cust_id`, `cod_order_id`, `order_id`, `prod_id`, `mer_id`, `order_type`, `transaction_id`, `payment_type`, `delivery_statuss`, `cancel_status`, `cancel_notes`, `cancel_date`, `cancel_approved_date`, `return_status`, `return_notes`, `return_date`, `return_approved_date`, `replace_status`, `replace_notes`, `replace_date`, `replace_approved_date`) VALUES
(1, 4, 0, 9, 6, 1, 1, '819be64fda3721947272', 1, 0, 1, 'gvghgh', '2018-05-05 15:14:58', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 12, 0, 47, 1, 1, 1, '8XA904683K396563B', 1, 0, 1, 'Ddf', '2018-07-08 12:43:05', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nm_order_payu`
--

CREATE TABLE `nm_order_payu` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_cus_id` int(10) UNSIGNED NOT NULL,
  `order_pro_id` int(11) UNSIGNED NOT NULL,
  `order_prod_unitPrice` double NOT NULL DEFAULT '0',
  `order_type` tinyint(4) NOT NULL COMMENT '1-product,2-deals',
  `transaction_id` varchar(50) NOT NULL,
  `payer_email` varchar(50) NOT NULL,
  `payer_id` varchar(50) NOT NULL,
  `payer_name` varchar(100) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_amt` decimal(15,2) NOT NULL COMMENT '(unit price * quantity)',
  `order_tax` decimal(10,2) NOT NULL COMMENT 'tax per unit (in %)',
  `order_taxAmt` decimal(10,2) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `token_id` varchar(30) NOT NULL,
  `payment_ack` varchar(10) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_date` varchar(20) NOT NULL,
  `payer_status` varchar(50) NOT NULL,
  `order_status` tinyint(4) NOT NULL COMMENT '1-sucess,2-complete,3-hold,4-failed',
  `delivery_status` int(11) NOT NULL DEFAULT '2' COMMENT '1->order_placed,2->order_packed,3->Dispatched,4->Delivered,5->cancel pending,6->cancelled,7->return pending ,8->returned,9->replace pending,10->replaced',
  `order_paytype` smallint(6) NOT NULL DEFAULT '1' COMMENT '1-paypal',
  `order_pro_color` int(11) NOT NULL,
  `order_pro_size` int(11) NOT NULL,
  `order_shipping_amt` varchar(20) NOT NULL,
  `order_shipping_add` text NOT NULL,
  `order_merchant_id` int(11) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `coupon_amount_type` varchar(255) NOT NULL,
  `coupon_amount` varchar(255) NOT NULL,
  `coupon_total_amount` varchar(255) NOT NULL,
  `wallet_amount` double NOT NULL,
  `mer_commission_amt` decimal(10,2) NOT NULL,
  `mer_amt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_order_payu`
--

INSERT INTO `nm_order_payu` (`order_id`, `order_cus_id`, `order_pro_id`, `order_prod_unitPrice`, `order_type`, `transaction_id`, `payer_email`, `payer_id`, `payer_name`, `order_qty`, `order_amt`, `order_tax`, `order_taxAmt`, `currency_code`, `token_id`, `payment_ack`, `order_date`, `created_date`, `payer_status`, `order_status`, `delivery_status`, `order_paytype`, `order_pro_color`, `order_pro_size`, `order_shipping_amt`, `order_shipping_add`, `order_merchant_id`, `coupon_code`, `coupon_type`, `coupon_amount_type`, `coupon_amount`, `coupon_total_amount`, `wallet_amount`, `mer_commission_amt`, `mer_amt`) VALUES
(1, 4, 4, 3500, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 4, '14000.00', '10.00', '1400.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 4, 1, 0, 0, '80', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, '154.80', '15325.20'),
(2, 4, 5, 50, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 2, '100.00', '0.00', '0.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 1, 1, 0, 0, '0', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, '1.00', '99.00'),
(3, 4, 2, 4500, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 3, '13500.00', '10.00', '1350.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 6, 1, 0, 0, '60', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, '1491.00', '13419.00'),
(4, 4, 4, 3500, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 2, '7000.00', '10.00', '700.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 4, 1, 10, 10, '40', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, '77.40', '7662.60'),
(5, 4, 3, 10, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 3, '30.00', '10.00', '3.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 4, 1, 0, 11, '60', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, '9.30', '83.70'),
(6, 4, 4, 3500, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 2, '7000.00', '10.00', '700.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 4, 1, 2, 1, '40', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, '77.40', '7662.60'),
(7, 4, 5, 50, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 2, '100.00', '0.00', '0.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 1, 1, 0, 11, '0', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 2, '0', '0', '0', '0', '0', 0, '1.00', '99.00'),
(8, 4, 1, 850, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 2, '1700.00', '10.00', '170.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 4, 1, 0, 11, '40', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, '191.00', '1719.00'),
(9, 4, 6, 50, 1, '819be64fda3721947272', 'new@mailinator.com', '', 'New', 5, '250.00', '10.00', '25.00', '', '', '', '2018-05-05 16:54:16', '', 'success', 1, 5, 1, 0, 11, '100', 'New,tesr,tes345,tn,641010,9876543210,new@mailinator.com,Coimbtore,India', 1, '0', '0', '0', '0', '0', 0, '37.50', '337.50'),
(10, 2, 3, 10, 1, 'd4e96521a6eb5493d239', 'prmg@mailinator.com', '', 'Ishwarya', 1, '10.00', '10.00', '1.00', '', '', '', '2018-05-12 20:19:38', '', 'success', 1, 2, 1, 0, 11, '20', 'Ishwarya,ram nagar,Gandhipuram,tamil nadu,641654,9944349002,prmg@mailinator.com,Coimbtore,India', 1, 'znInxs07HG', 'usercoupon', '1', '10', '0', 0, '3.10', '27.90');

-- --------------------------------------------------------

--
-- Table structure for table `nm_paymentsettings`
--

CREATE TABLE `nm_paymentsettings` (
  `ps_id` tinyint(3) UNSIGNED NOT NULL,
  `ps_flatshipping` decimal(10,2) NOT NULL COMMENT 'shipping Tax Percentage',
  `ps_taxpercentage` tinyint(3) UNSIGNED NOT NULL,
  `ps_extenddays` smallint(5) UNSIGNED NOT NULL COMMENT 'Auction Extend Days',
  `ps_alertdays` int(11) NOT NULL,
  `ps_minfundrequest` int(10) UNSIGNED NOT NULL,
  `ps_maxfundrequest` int(10) UNSIGNED NOT NULL,
  `ps_referralamount` int(11) NOT NULL,
  `ps_countryid` int(11) NOT NULL,
  `ps_countrycode` varchar(10) NOT NULL,
  `ps_cursymbol` varchar(10) NOT NULL,
  `ps_curcode` varchar(10) NOT NULL,
  `ps_paypal_email` varchar(255) NOT NULL,
  `ps_paypalaccount` varchar(150) NOT NULL,
  `ps_paypal_api_pw` varchar(250) NOT NULL,
  `ps_paypal_api_signature` varchar(250) NOT NULL,
  `ps_authorize_trans_key` varchar(250) NOT NULL,
  `ps_authorize_api_id` varchar(250) NOT NULL,
  `ps_payu_key` varchar(250) NOT NULL,
  `ps_payu_salt` varchar(250) NOT NULL,
  `ps_paypal_pay_mode` tinyint(4) NOT NULL COMMENT '0->Test Mode, 1-> Live Mode'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_paymentsettings`
--

INSERT INTO `nm_paymentsettings` (`ps_id`, `ps_flatshipping`, `ps_taxpercentage`, `ps_extenddays`, `ps_alertdays`, `ps_minfundrequest`, `ps_maxfundrequest`, `ps_referralamount`, `ps_countryid`, `ps_countrycode`, `ps_cursymbol`, `ps_curcode`, `ps_paypal_email`, `ps_paypalaccount`, `ps_paypal_api_pw`, `ps_paypal_api_signature`, `ps_authorize_trans_key`, `ps_authorize_api_id`, `ps_payu_key`, `ps_payu_salt`, `ps_paypal_pay_mode`) VALUES
(1, '0.00', 0, 0, 0, 0, 0, 0, 3, ' US', '$', 'USD', 'venugopal-buyer@pofitec.com', 'venugopal-facilitator_api1.pofitec.com', 'U5BL5KK3ZUZVJRNL', 'AhEqPBa2LPCE3sKdenmfssNtAsh0AF4qYwXaeb9bpLQiA-T83dJ-0KHq', '', '', 'gtKFFx', 'eCwWELxi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_procart`
--

CREATE TABLE `nm_procart` (
  `pc_id` int(10) UNSIGNED NOT NULL,
  `pc_date` datetime NOT NULL,
  `pc_pro_id` int(11) NOT NULL,
  `pc_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_procolor`
--

CREATE TABLE `nm_procolor` (
  `pc_id` bigint(20) UNSIGNED NOT NULL,
  `pc_pro_id` int(10) UNSIGNED NOT NULL,
  `pc_co_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_procolor`
--

INSERT INTO `nm_procolor` (`pc_id`, `pc_pro_id`, `pc_co_id`) VALUES
(101, 13, 3),
(102, 13, 7),
(146, 35, 3),
(147, 35, 7),
(148, 35, 8),
(149, 35, 9),
(150, 35, 2),
(215, 42, 1),
(216, 42, 4),
(217, 42, 8),
(218, 42, 11),
(219, 42, 13),
(220, 42, 7),
(221, 42, 9),
(232, 40, 3),
(233, 40, 5),
(234, 40, 11),
(235, 40, 8),
(236, 40, 4),
(237, 40, 2),
(238, 39, 10),
(239, 39, 7),
(240, 39, 6),
(241, 39, 4),
(242, 5, 11),
(243, 5, 12),
(244, 4, 10),
(245, 4, 9),
(246, 4, 8),
(247, 4, 6),
(248, 4, 5),
(249, 4, 4),
(250, 4, 3),
(251, 4, 1),
(252, 4, 2),
(253, 4, 14),
(254, 3, 11),
(255, 3, 1),
(256, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nm_prodelpolicy`
--

CREATE TABLE `nm_prodelpolicy` (
  `pdp_id` bigint(20) UNSIGNED NOT NULL,
  `pdp_pro_id` smallint(5) UNSIGNED NOT NULL,
  `pdp_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_product`
--

CREATE TABLE `nm_product` (
  `pro_no_of_purchase` int(11) NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `pro_title` varchar(150) NOT NULL,
  `pro_title_fr` varchar(150) NOT NULL,
  `pro_mc_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pro_smc_id` smallint(5) UNSIGNED NOT NULL,
  `pro_sb_id` smallint(5) UNSIGNED NOT NULL,
  `pro_ssb_id` smallint(5) UNSIGNED NOT NULL,
  `product_brand_id` int(11) NOT NULL,
  `pro_price` decimal(15,2) NOT NULL,
  `pro_disprice` decimal(15,2) NOT NULL,
  `pro_discount_percentage` varchar(11) NOT NULL,
  `pro_inctax` tinyint(4) NOT NULL,
  `pro_shippamt` decimal(15,2) NOT NULL,
  `pro_desc` longtext NOT NULL,
  `pro_desc_fr` longtext NOT NULL,
  `pro_isspec` tinyint(4) NOT NULL COMMENT '1-yes 2-no',
  `pro_is_size` int(11) NOT NULL COMMENT '0=>yes, 1=>no',
  `pro_is_color` int(11) NOT NULL COMMENT '0=>yes, 1=>no',
  `pro_delivery` smallint(5) UNSIGNED NOT NULL COMMENT 'in days',
  `pro_mr_id` int(10) UNSIGNED NOT NULL,
  `pro_sh_id` smallint(5) UNSIGNED NOT NULL,
  `pro_mkeywords` text NOT NULL,
  `pro_mkeywords_fr` text NOT NULL,
  `pro_mdesc` text NOT NULL COMMENT 'metadescription',
  `pro_mdesc_fr` text NOT NULL,
  `pro_postfacebook` tinyint(4) NOT NULL,
  `pro_Img` varchar(500) NOT NULL,
  `created_date` varchar(20) NOT NULL,
  `pro_status` tinyint(4) NOT NULL COMMENT '2=>Delete ,1=> Active, 0 => Block',
  `pro_image_count` int(11) NOT NULL,
  `pro_qty` int(11) NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT '0',
  `sold_status` int(11) NOT NULL DEFAULT '1',
  `cash_pack` varchar(255) NOT NULL,
  `allow_cancel` enum('0','1') NOT NULL COMMENT '0-No,1-Yes',
  `allow_return` enum('0','1') NOT NULL COMMENT '0-No,1-Yes',
  `allow_replace` enum('0','1') NOT NULL COMMENT '0-No,1-Yes',
  `cancel_policy` text NOT NULL,
  `cancel_policy_fr` text NOT NULL,
  `return_policy` text NOT NULL,
  `return_policy_fr` text NOT NULL,
  `replace_policy` text NOT NULL,
  `replace_policy_fr` text NOT NULL,
  `cancel_days` int(11) NOT NULL,
  `return_days` int(11) NOT NULL,
  `replace_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_product`
--

INSERT INTO `nm_product` (`pro_no_of_purchase`, `pro_id`, `pro_title`, `pro_title_fr`, `pro_mc_id`, `pro_smc_id`, `pro_sb_id`, `pro_ssb_id`, `product_brand_id`, `pro_price`, `pro_disprice`, `pro_discount_percentage`, `pro_inctax`, `pro_shippamt`, `pro_desc`, `pro_desc_fr`, `pro_isspec`, `pro_is_size`, `pro_is_color`, `pro_delivery`, `pro_mr_id`, `pro_sh_id`, `pro_mkeywords`, `pro_mkeywords_fr`, `pro_mdesc`, `pro_mdesc_fr`, `pro_postfacebook`, `pro_Img`, `created_date`, `pro_status`, `pro_image_count`, `pro_qty`, `hit_count`, `sold_status`, `cash_pack`, `allow_cancel`, `allow_return`, `allow_replace`, `cancel_policy`, `cancel_policy_fr`, `return_policy`, `return_policy_fr`, `replace_policy`, `replace_policy_fr`, `cancel_days`, `return_days`, `replace_days`) VALUES
(22, 1, ' Divastri Faux Georgette Embroidered Salwar Suit Dupatta Material  (Un-stitched)', '', 2, 4, 0, 0, 0, '1500.00', '999.00', '33', 10, '20.00', '<ul><li>Type: Salwar Suit Dupatta Material</li><li>Fabric: Faux Georgette</li><li>Pattern: Embroidered</li><li>Color: Beige, Pink</li><li>With Dupatta</li><li>Package Contains:1 Top, 1 Bottom, 1 Dupatta</li></ul><br><div>\"Top Fabric : Faux Georgette, Bottom Fabric : Santoon, Dupatta Fabric: Nazneen, Inner Fabric : Printed Crepe Top Length : 55”, Bottom Length : 2.5 mtr, Dupatta Length : 2.2 mtr, Inner Length : 2 mtr, Flair : 4 mtr, Size : 44”, Color : Beige &amp; Pink, Work : Embroidered &amp; Stone Work, Style : Anarkali Suit.\"<br></div>', '', 2, 0, 0, 2, 1, 1, 'Divastri Faux Georgette Embroidered Salwar Suit Dupatta Material  (Un-stitched)', '', 'Divastri Faux Georgette Embroidered Salwar Suit Dupatta Material  (Un-stitched)', '', 0, 'Product_153128572826803.jpg/**/', '2018-05-03', 1, 1, 61, 247, 1, '10', '1', '1', '1', '15', '', '15', '', '15', '', 15, 15, 15),
(16, 2, 'Pepe Jeans Boys Dark Blue Trousers', '', 3, 6, 0, 0, 0, '999.00', '800.00', '19', 10, '1.00', '<div><div><ul><li>Casual Trouser</li><li>Pack of 1</li><li>NA</li><li>Cotton Fabric</li></ul></div></div><div></div>', '', 1, 0, 1, 3, 1, 1, 'Pepe Jeans Boys Dark Blue Trousers', '', 'Pepe Jeans Boys Dark Blue Trousers', '', 0, 'Product_1527131135281613420.jpg/**/Product_1527131135458628191.jpg/**/', '2018-05-03', 1, 1, 16, 186, 0, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(18, 3, 'OVO Regular Boys Brown Jeans', '', 3, 6, 0, 0, 0, '845.00', '700.00', '17', 10, '1.00', '<ul><li>Fit: Regular</li><li>Fabric: Coduroy</li><li>Mid Rise Jeans</li><li>Clean Look</li></ul>For your next outing, dress your little one in this corduroy trouser designed by Ovo. With a standard 4 pocket design, this pair of trousers have a fly opening and a one button closure. Classic in their appeal, these trousers can be styled with a light graphic t-shirt to keep him comfy yet stylish all day long.', '', 1, 0, 0, 1, 1, 1, 'OVO Regular Boys Brown Jeans\r\n', '', 'OVO Regular Boys Brown Jeans\r\n', '', 0, 'Product_15312856549456.jpg/**/', '2018-05-03', 1, 1, 66, 167, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(75, 4, 'onlinefayda Embroidered Fashion Silk Saree', '', 2, 3, 0, 0, 0, '1500.00', '999.00', '33', 8, '2.00', '<div><div><div><div><ul><li>Style: Sari</li><li>Saree Fabric: Silk</li><li>Blouse Fabric: Dupion Silk</li><li>With Blouse Piece</li><li>Type: Fashion</li><li>Blouse Piece Length: 0.8 m</li></ul></div></div></div><div><br></div></div><div><div><div><div>Onlinefayda Designer Pink Silk Embroidery Sari. This Beautiful Traditional sari is elegantly decorated with gorgeous Embroidery and pattern that gives a perfect look to the outfit. This sari is an ideal for Marriage functions and social gathering. Sari comes along with matching fabric un-stitched blouse piece. Sari Length : 5.5 mtr, Fabric: Silk, Blouse Length : 0.80 mtr.</div></div></div><div></div></div>', '', 1, 1, 0, 2, 2, 2, 'onlinefayda Embroidered Fashion Silk Saree', '', 'onlinefayda Embroidered Fashion Silk Saree', '', 0, 'Product_153128562216031.jpg/**/', '2018-05-03', 1, 1, 100, 252, 1, '10', '0', '1', '1', '', '', '15', '', '15', '', 0, 15, 15),
(21, 5, 'Rodid Men\'s Solid Casual Shirt', '', 3, 5, 0, 0, 0, '650.00', '550.00', '15', 0, '0.00', '<div><br></div><div><li>Fabric: Cotton</li><li>Regular Fit, Full Sleeve</li><li>Pattern: Solid</li><li>Set of 1</li><li>Reversible</li></div>', '', 2, 0, 0, 2, 2, 2, 'Rodid Men\'s Solid Casual Shirt', '', 'Rodid Men\'s Solid Casual Shirt', '', 0, 'Product_153128543017954.jpg/**/', '2018-05-03', 1, 1, 75, 183, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(31, 6, 'Barbie CHELSEA CLUB PLAYHOUSE  (Multicolor)', '', 1, 1, 0, 0, 0, '100.00', '50.00', '50', 2, '8.00', '<ul><li>Doll Houses &amp; Play Sets</li><li>Made of Plastic</li><li>Minimum Age: 3 years</li><li>Width: 34.3 cm</li><li>Height: 26.7 cm</li></ul>', '', 2, 1, 1, 2, 1, 1, 'Barbie CHELSEA CLUB PLAYHOUSE  (Multicolor)', '', 'Barbie CHELSEA CLUB PLAYHOUSE  (Multicolor)', '', 0, 'Product_1527128001406272.jpg/**/Product_1527128001153003564.jpg/**/', '2018-05-05', 1, 1, 30, 253, 0, '0 ', '0', '1', '0', '', '', '15 days', '', '', '', 0, 15, 0),
(22, 7, 'Harpa Casual 34th Sleeve Printed Womens Multicolor Top', '', 2, 7, 0, 0, 0, '750.00', '650.00', '13', 8, '0.00', '<ul><li>Boat Neck, 3/4th Sleeve</li><li>Fabric: Chiffon</li><li>Pattern: Printed</li><li>Type: Top</li><li>Pack of 1</li></ul>', '', 2, 1, 1, 3, 1, 1, 'Harpa Casual 3/4th Sleeve Printed Women\'s Multicolor Top\r\n', '', 'Harpa Casual 3/4th Sleeve Printed Women\'s Multicolor Top\r\n', '', 0, 'Product_153128539526888.jpg/**/', '2018-05-24', 1, 1, 40, 176, 1, '0 ', '0', '1', '1', '', '', '15', '', '15', '', 0, 15, 15),
(5, 8, 'DARZI Casual 34th Sleeve Checkered Womens Multicolor Top', '', 2, 7, 0, 0, 0, '1200.00', '999.00', '16', 0, '0.00', '<div><br></div><div><li>Round Neck, 3/4th Sleeve</li><li>Fabric: Crepe</li><li>Pattern: Checkered</li><li>Type: Top</li><li>Pack of 1</li></div>', '', 2, 1, 1, 2, 2, 2, 'DARZI Casual 3/4th Sleeve Checkered Women\'s Multicolor Top', '', 'DARZI Casual 3/4th Sleeve Checkered Women\'s Multicolor Top', '', 0, 'Product_153128530020542.png/**/', '2018-05-24', 1, 1, 90, 118, 1, '0 ', '0', '0', '1', '', '', '', '', 'yes', '', 0, 0, 15),
(25, 9, 'Rodid Men\'s Solid Casual Spread Shirt', '', 3, 5, 0, 0, 0, '680.00', '600.00', '11', 0, '0.00', '<ul><li>Fabric: Cotton</li><li>Slim Fit, Full Sleeve</li><li>Collar Type: Spread Collar</li><li>Pattern: Solid</li><li>Set of 1</li></ul>RODID Stylish combination of Tomato Red and Navy Blue slim fit shirt is perfect for the casual outing. Featured with trendy contrast Navy Blue Sleeves. The cotton fabric keeps you comfortable throughout the day<br>', '', 2, 0, 0, 3, 2, 2, 'Rodid Men\'s Solid Casual Spread Shirt', '', 'Rodid Men\'s Solid Casual Spread Shirt', '', 0, 'wwwA7ANmSjv.jpg/**/plain-white-tee-men-s-premium-t-shirtRPtJP4Ro.jpg/**/g500_white_frontvUy6UGAZ.jpg/**/', '2018-05-24', 1, 1, 25, 169, 0, '0', '0', '0', '1', '', '', '', '', '15', '', 0, 0, 15),
(13, 10, 'Vivo V5', '', 4, 9, 0, 0, 0, '8000.00', '6800.00', '15', 15, '70.00', 'always best', '', 2, 1, 1, 5, 1, 1, '', '', '', '', 0, 'Product_153128528114585.jpg/**/', '2018-05-28', 1, 1, 15, 121, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(13, 11, 'Moto', '', 0, 0, 0, 0, 0, '5000.00', '4800.00', '4', 10, '20.00', 'iPhone&nbsp;is a line of smartphones designed and marketed by Apple Inc. The&nbsp;iPhone&nbsp;line of products use Apple\'s iOS mobile operating system software.', '', 2, 0, 0, 2, 1, 1, '', '', '', '', 0, 'Product_153128526428331.jpg/**/', '2018-05-31', 1, 1, 14, 124, 1, '10', '1', '1', '1', 'test', '', 'test', '', 'Test', '', 1, 1, 1),
(0, 12, 'Testing', '', 6, 13, 0, 0, 0, '100.00', '75.00', '25', 10, '20.00', 'testing', '', 2, 0, 0, 2, 4, 4, '', '', '', '', 0, 'Product_15277522931123305055.jpg/**/', '2018-05-31', 0, 1, 10, 31, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 13, 'test', '', 6, 13, 0, 0, 0, '100.00', '50.00', '50', 0, '0.00', 'test', '', 2, 0, 0, 2, 4, 4, '', '', '', '', 0, 'Product_1527753956167476025.jpg/**/', '2018-05-31', 0, 1, 10, 34, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 14, 'Natus ea placeat reprehenderit sed quam aut sunt velit cupiditate rem fuga Distinctio Commodi commodo ipsum in iste', '', 1, 1, 0, 0, 0, '794.00', '80.00', '89', 0, '0.00', 'rty', '', 2, 1, 1, 3, 1, 1, 'Laborum Qui voluptas voluptas nulla sit sed eos laboriosam odio odit totam aliquam cupidatat incidunt', '', 'Eos esse est eum perspiciatis fuga Numquam duis laboris amet asperiores molestiae deserunt totam culpa', '', 0, 'Product_1527769794656422780.png/**/', '2018-05-31', 2, 1, 889, 12, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 13, 0, 0),
(0, 15, 'Dolorem minus temporibus optio commodo praesentium harum amet est dolor esse eos sed et', '', 1, 1, 0, 0, 0, '39.00', '2.00', '94', 0, '0.00', ';\'<br><br>', '', 2, 0, 0, 1, 2, 2, 'Facilis fuga Expedita ut vel quia fuga Nulla quae', '', 'Aut similique consequatur molestias Nam ab at id sunt odit ut cum vero et est numquam', '', 0, 'Product_15277711041266749948.png/**/', '2018-05-31', 2, 1, 747, 25, 1, '585', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 16, 'Eu voluptatem Sed eiusmod cumque officia', '', 2, 3, 0, 0, 0, '617.00', '96.00', '84', 91, '0.00', 'ytu', '', 2, 0, 0, 3, 3, 3, 'Adipisicing ipsum ea provident laborum Reprehenderit molestiae harum qui sapiente enim sit fuga Expedita dolore aperiam optio consequatur consequatur eaque', '', 'Sapiente vel magnam reiciendis commodi non neque impedit voluptatem Nam est culpa excepteur enim et similique libero labore nesciunt ducimus', '', 0, 'Product_15277713151687921815.png/**/', '2018-05-31', 2, 1, 544, 7, 1, '423', '0', '0', '0', '', '', '', '', '', '', 12, 26, 0),
(0, 17, 'Distinctio Numquam sequi nostrum sunt debitis', '', 6, 13, 0, 0, 0, '406.00', '65.00', '83', 0, '0.00', 'lk;kl;', '', 2, 0, 0, 4, 2, 2, 'Dignissimos enim nostrud et hic sit incididunt', '', 'Dolor non ea molestias blanditiis nisi enim labore vitae inventore illo', '', 0, 'Product_1527771456564081200.png/**/', '2018-05-31', 2, 1, 53, 13, 1, '92', '0', '0', '0', '', '', '', '', '', '', 7, 6, 0),
(0, 18, 'Distinctio Ducimus quasi dignissimos irure ipsa tempora omnis qui beatae ad et repellendus Ipsum proident', '', 5, 12, 0, 0, 0, '615.00', '52.00', '91', 0, '0.00', 'lk;', '', 2, 0, 0, 16, 1, 1, 'Elit ipsum facilis possimus earum mollitia reprehenderit ad dicta ipsum nisi', '', 'Eos molestias aut voluptatem sed a', '', 0, 'Product_15277716691051810166.png/**/', '2018-05-31', 2, 1, 784, 10, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 22, 0, 0),
(0, 19, 'Irure totam quis sed est quidem quibusdam magni cupiditate dicta sunt quas architecto adipisicing', '', 3, 5, 0, 0, 0, '878.00', '629.00', '28', 0, '0.00', 'ret', '', 2, 1, 1, 13, 4, 4, 'Accusantium nesciunt exercitationem qui consequatur deleniti lorem sunt velit incidunt vero quam', '', 'Non ea est eos explicabo Consequat Dolor harum eaque iste ipsa aliquam reprehenderit culpa consequatur quisquam', '', 0, 'Product_15277722311113240855.png/**/', '2018-05-31', 2, 1, 730, 3, 1, '103', '0', '0', '0', '', '', '', '', '', '', 24, 20, 0),
(0, 20, 'aa', '', 2, 3, 0, 0, 0, '10.00', '8.00', '20', 0, '0.00', 'dddd', '', 1, 0, 0, 1, 5, 5, '1', '', '1', '', 0, 'Product_1527772231111324085535NIJPjw.png/**/', '2018-05-31', 2, 1, 12, 10, 1, '0', '1', '1', '1', '1', '', '1', '', '1', '', 1, 1, 1),
(0, 21, 'Obcaecati ut doloremque repellendus Cum quae', '', 6, 13, 0, 0, 0, '940.00', '160.00', '82', 12, '0.00', 'ytuy', '', 2, 1, 1, 20, 3, 3, 'Sunt sunt voluptate cum obcaecati', '', 'Eum est dolor veniam labore est reprehenderit at', '', 0, 'Product_1527772405814145296.png/**/', '2018-05-31', 2, 1, 821, 9, 1, '255', '0', '0', '0', '', '', '', '', '', '', 2, 0, 0),
(2, 22, 'Voluptatibus omnis voluptate quis magna et facilis necessitatibus qui', '', 6, 13, 0, 0, 0, '227.00', '8.00', '96', 16, '0.00', 'try', '', 2, 1, 1, 16, 2, 2, 'Fugit consequat Quidem sit ad dolor numquam consequatur aliquid omnis eaque consequatur quas aut eveniet officia', '', 'Sit architecto earum esse aspernatur excepteur est aut sed cupiditate corporis temporibus id delectus accusantium', '', 0, 'Product_15277725191927374483.png/**/', '2018-05-31', 2, 1, 405, 8, 1, '206', '0', '0', '0', '', '', '', '', '', '', 0, 13, 0),
(0, 23, '2', '', 2, 3, 0, 0, 0, '200.00', '150.00', '25', 0, '0.00', '2', '', 2, 1, 1, 2, 5, 5, '2', '', '2', '', 0, 'Product_15277722311113240855WCCy73dC.png/**/', '2018-05-31', 2, 1, 2, 1, 1, '2', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 24, 'Cupidatat qui ut facere velit veritatis nostrud non ut est sit rerum tempore irure quidem velit laborum Id commodi quibusdam', '', 3, 5, 0, 0, 0, '111.00', '74.00', '33', 56, '0.00', 'ghkhj', '', 2, 1, 1, 1, 1, 1, 'Rem qui quia earum dolor non sit voluptatem excepteur voluptatem Id itaque saepe cupiditate soluta non eiusmod molestiae', '', 'Magnam odio qui vel et quia', '', 0, 'Product_15277730001404407025.png/**/', '2018-05-31', 2, 1, 449, 23, 1, '946', '0', '0', '0', '', '', '', '', '', '', 5, 15, 25),
(0, 25, 'Possimus nobis sed fugit et', '', 3, 6, 0, 0, 0, '114.00', '61.00', '46', 57, '0.00', 'rtr', '', 2, 1, 1, 4, 2, 2, 'Quia distinctio Aut quos ut aute sequi et voluptates autem sed consequuntur consequuntur dolorem maxime non soluta et', '', 'Odio quis sequi vitae molestiae rerum dolor', '', 0, 'Product_152777323542685767.png/**/', '2018-05-31', 2, 1, 361, 13, 1, '679', '0', '0', '0', '', '', '', '', '', '', 0, 0, 15),
(0, 26, 'Nam ea id rerum autem dolorem voluptatem', '', 1, 1, 0, 0, 0, '335.00', '13.00', '96', 0, '0.00', 'kl;', '', 2, 1, 1, 17, 1, 1, 'Distinctio Elit quia consequatur ratione deserunt ut nostrum eos pariatur Laborum voluptatem illum dolorum sunt exercitation nihil ut fuga A', '', 'Illo et occaecat modi maiores expedita rerum commodi voluptatem Proident in voluptate porro cumque aliquam eiusmod distinctio', '', 0, 'Product_1527773507412716409.png/**/', '2018-05-31', 2, 1, 578, 16, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 5, 0, 0),
(0, 27, 'Sit in non necessitatibus voluptas sed et quo labore non', '', 1, 1, 0, 0, 0, '232.00', '9.00', '96', 0, '0.00', 'kl;', '', 2, 1, 1, 25, 1, 1, 'Reprehenderit laboriosam consectetur magni veniam obcaecati quod consequuntur rerum pariatur Aut reprehenderit id soluta rem rem ullam nulla et', '', 'Atque aliquip vitae tenetur veritatis quaerat aspernatur harum consectetur', '', 0, 'Product_15277735841959765772.png/**/', '2018-05-31', 2, 1, 480, 8, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 11, 18, 0),
(0, 28, 'Corporis quia fugiat vitae amet saepe mollitia officiis tempor nobis accusamus eu alias ipsam omnis accusantium esse', '', 3, 5, 0, 0, 0, '847.00', '440.00', '48', 0, '0.00', 'kl;', '', 2, 0, 0, 24, 4, 4, 'Consectetur do facilis aliquip non possimus dolores qui laborum', '', 'Dolorem veritatis recusandae Qui dolorem doloremque sunt enim temporibus', '', 0, 'Product_1527773642729162564.png/**/', '2018-05-31', 2, 1, 525, 1, 1, '698', '0', '0', '0', '', '', '', '', '', '', 8, 18, 0),
(0, 29, 'hjkjhk', '', 1, 1, 0, 0, 0, '5.00', '4.00', '20', 0, '0.00', 'hjghj', '', 2, 0, 0, 56, 2, 2, '', '', '', '', 0, 'Product_1527773769996785514.png/**/', '2018-05-31', 2, 1, 65, 16, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 30, 'Optio in vel unde praesentium excepturi consequat Facilis id', '', 1, 2, 0, 0, 0, '977.00', '526.00', '46', 0, '0.00', 'fds', '', 2, 1, 1, 28, 5, 5, 'Est distinctio Quasi totam laudantium aut maxime quaerat recusandae Tempore dolor qui corporis id laudantium quaerat dolore laboriosam culpa beatae', '', 'Delectus rerum non eum aliqua Ullam officia hic aspernatur dolores ex molestias ut tempor deserunt doloribus velit veniam ut sed', '', 0, 'Product_1527773852677736637.png/**/', '2018-05-31', 2, 1, 837, 1, 1, '936', '0', '0', '0', '', '', '', '', '', '', 15, 0, 6),
(0, 31, 'GD test', '', 1, 1, 0, 0, 0, '818.00', '696.00', '14', 0, '0.00', 'rty', '', 2, 0, 0, 15, 2, 2, 'Nostrud rem minim architecto eiusmod voluptatem nihil mollit velit velit rerum labore', '', 'Cum harum velit sunt molestiae minus enim sunt illum consequat Omnis sunt qui fuga Perspiciatis laborum in dolorem aute', '', 0, 'Product_15277739551042973695.png/**/', '2018-05-31', 2, 1, 446, 1, 1, '488', '0', '0', '0', '', '', '', '', '', '', 0, 19, 0),
(0, 32, 'Et quo aliquid exercitationem unde in deserunt totam dolor est in blanditiis ex quis consectetur labore esse', '', 4, 9, 0, 0, 0, '451.00', '45.00', '90', 26, '0.00', 'tret', '', 2, 1, 1, 16, 1, 1, 'Quam temporibus et ab rerum eius eiusmod repudiandae reprehenderit harum non excepturi quis nihil', '', 'Irure assumenda ullamco qui tenetur tempora sed ipsum quibusdam beatae labore eveniet et qui voluptas consectetur', '', 0, 'Product_1527774082551447187.png/**/', '2018-05-31', 2, 1, 116, 0, 1, '76', '0', '0', '0', '', '', '', '', '', '', 28, 7, 0),
(0, 33, 'Magna quam labore velit iste excepturi doloremque vel', '', 6, 13, 0, 0, 0, '349.00', '66.00', '81', 44, '0.00', 'uiouio', '', 2, 1, 0, 23, 1, 1, 'Id voluptas qui elit ipsum nihil molestiae', '', 'Corporis explicabo Cillum repellendus Commodi qui minus aut dolore repudiandae ut adipisci possimus', '', 0, 'Product_1527774351236342369.png/**/', '2018-05-31', 2, 1, 745, 4, 1, '26', '0', '0', '0', '', '', '', '', '', '', 26, 5, 0),
(3, 34, 'iphone x space grey', '', 0, 0, 0, 0, 0, '50000.00', '100.00', '99', 15, '0.00', 'good', '', 2, 1, 1, 4, 1, 1, '', '', '', '', 0, 'Product_15312852012355.jpg/**/', '2018-06-05', 1, 1, 5, 51, 1, '0', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(10, 35, 'New ios test', '', 8, 18, 0, 0, 0, '1000.00', '500.00', '50', 10, '20.00', 'test', '', 2, 0, 0, 2, 6, 6, 'test', '', 'test', '', 0, 'Product_15288943521744184765.jpg/**/', '2018-06-13', 0, 1, 11, 31, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 36, 'New', '', 2, 4, 0, 0, 0, '1000.00', '500.00', '50', 0, '0.00', 'Test', '', 2, 0, 1, 2, 1, 1, 'test', '', 'test', '', 0, 'Product_153128516818682.png/**/', '2018-06-14', 1, 1, 10, 1, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(25, 37, 'new  dress', '', 9, 20, 2, 0, 0, '100.00', '75.00', '25', 10, '20.00', 'testing<br>new process<br>with ui<br>new testing<br>testing<br>new process<br>with ui<br>new testing<br><br>', '', 2, 1, 1, 2, 1, 1, '', '', '', '', 0, 'Product_153128515613248.jpg/**/', '2018-06-14', 0, 1, 40, 69, 1, '15', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(25, 38, 'New product', '', 10, 22, 0, 0, 0, '1000.00', '500.00', '50', 10, '20.00', 'Testing', '', 2, 1, 1, 2, 1, 1, '', '', '', '', 0, 'Product_15290422042100584583.jpg/**/', '2018-06-15', 1, 1, 25, 70, 0, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(10, 39, 'saree', '', 10, 22, 3, 0, 0, '1000.00', '900.00', '10', 10, '20.00', 'testing', '', 2, 0, 0, 2, 10, 10, 'test', '', 'test', '', 0, 'Product_153128514128353.jpg/**/', '2018-06-22', 0, 1, 50, 44, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(16, 40, 'Saree', '', 2, 3, 0, 0, 0, '1000.00', '950.00', '5', 10, '1.00', 'Testing', '', 1, 0, 0, 2, 11, 11, 'test', '', 'test', '', 0, 'Product_153128512520803.jpg/**/', '2018-06-23', 1, 1, 30, 39, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(6, 41, 'android product', '', 11, 24, 4, 2, 0, '1000.00', '750.00', '25', 10, '20.00', 'test', '', 2, 1, 1, 2, 12, 12, '', '', '', '', 0, 'Product_15312851008645.jpg/**/', '2018-06-27', 1, 1, 10, 27, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(10, 42, 'new 1', '', 11, 24, 0, 0, 0, '1000.00', '500.00', '50', 0, '0.00', 'test', '', 2, 0, 0, 2, 12, 12, '', '', '', '', 0, 'Product_15300938461727352621.jpg/**/', '2018-06-27', 1, 1, 10, 48, 0, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 43, 'Dolor iure quas modi reprehenderit itaque ipsa sed eaque sapiente eaque autem', '', 5, 12, 0, 0, 0, '119.00', '100.00', '15', 0, '10.00', 'sgfdghfh', '', 2, 1, 1, 25, 2, 2, 'Quas dignissimos ea corporis est labore et reprehenderit dicta occaecat aut ea voluptatibus sint et ut modi dolores sed laboriosam', '', 'Error possimus quod aut qui quaerat', '', 0, 'Product_15302783172073043353.jpg/**/Product_1530278317895214795.jpg/**/', '2018-06-29', 2, 2, 799, 0, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 44, 'new product', '', 11, 24, 4, 0, 0, '100.00', '50.00', '50', 10, '20.00', 'test<br>', '', 2, 1, 1, 2, 13, 13, '', '', '', '', 0, '800 800-2NmQgMCAl.jpg/**/', '2018-07-02', 2, 1, 10, 0, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 45, 'shopping bag ', '', 1, 1, 0, 0, 0, '500.00', '250.00', '50', 11, '0.00', 'gg', '', 1, 1, 1, 15, 1, 1, 'qwe', '', '12', '', 0, 'Product_15306017211845629233.jpg/**/', '2018-07-03', 2, 1, 123, 28, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(4, 46, 'my norm', '', 3, 5, 0, 0, 0, '12222.00', '12.00', '99', 1, '0.00', 'ssfd', '', 2, 1, 1, 22, 2, 2, 'd', '', 'd', '', 0, 'Product_153128489226532.jpg/**/', '2018-07-04', 1, 1, 122, 31, 1, '', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 47, 'Saree', '', 13, 26, 5, 0, 0, '1000.00', '850.00', '15', 10, '20.00', '<span>Type of work Embelished<br></span><span>Fabric Faux Georgette<br></span><span>Product Type&nbsp;Sarees</span>', '', 2, 0, 0, 2, 1, 1, '', '', '', '', 0, 'Product_1530946165474673329.jpg/**/', '2018-07-07', 2, 1, 30, 3, 1, '10', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(2, 48, 'salwar', '', 13, 27, 0, 0, 0, '1000.00', '500.00', '50', 0, '0.00', '<span>Type of workEmbelished<br></span><span>FabricFaux Georgette<br></span>Product TypeSarees', '', 2, 0, 1, 2, 1, 1, '', '', '', '', 0, 'Product_15309462771657987335.jpg/**/', '2018-07-07', 0, 1, 20, 6, 1, '10 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0),
(0, 49, 'lehenga', '', 13, 26, 0, 0, 0, '1000.00', '850.00', '15', 0, '0.00', '<span>Type of work<br>Embelished</span><span>FabricFaux<br>&nbsp;Georgette<br></span>Product TypeSarees', '', 2, 0, 1, 2, 1, 1, 'test', '', 'test', '', 0, 'Product_15309463801461073282.jpg/**/', '2018-07-07', 2, 1, 10, 4, 1, '0 ', '0', '0', '0', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_prosize`
--

CREATE TABLE `nm_prosize` (
  `ps_id` bigint(20) UNSIGNED NOT NULL,
  `ps_pro_id` int(10) UNSIGNED NOT NULL,
  `ps_si_id` smallint(5) UNSIGNED NOT NULL,
  `ps_volume` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_prosize`
--

INSERT INTO `nm_prosize` (`ps_id`, `ps_pro_id`, `ps_si_id`, `ps_volume`) VALUES
(121, 13, 1, 1),
(122, 13, 5, 1),
(172, 35, 6, 1),
(173, 35, 5, 1),
(174, 35, 4, 1),
(175, 35, 3, 1),
(176, 35, 2, 1),
(177, 35, 1, 1),
(215, 38, 11, 1),
(220, 6, 11, 1),
(225, 2, 6, 1),
(226, 2, 10, 1),
(268, 42, 12, 1),
(269, 42, 10, 1),
(270, 42, 9, 1),
(271, 42, 8, 1),
(272, 42, 7, 1),
(273, 42, 6, 1),
(274, 42, 5, 1),
(275, 42, 4, 1),
(276, 42, 3, 1),
(277, 42, 2, 1),
(278, 42, 1, 1),
(284, 48, 2, 1),
(285, 46, 11, 1),
(286, 41, 11, 1),
(287, 40, 1, 1),
(288, 40, 2, 1),
(289, 40, 3, 1),
(290, 39, 1, 1),
(291, 39, 2, 1),
(292, 39, 3, 1),
(293, 39, 4, 1),
(294, 39, 8, 1),
(295, 39, 9, 1),
(296, 37, 11, 1),
(297, 36, 1, 1),
(298, 36, 2, 1),
(299, 36, 3, 1),
(300, 34, 11, 1),
(301, 11, 11, 1),
(302, 10, 11, 1),
(303, 8, 11, 1),
(304, 7, 11, 1),
(305, 5, 2, 1),
(306, 5, 3, 1),
(307, 4, 11, 1),
(308, 3, 10, 1),
(309, 1, 4, 1),
(310, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_prospec`
--

CREATE TABLE `nm_prospec` (
  `spc_id` bigint(20) UNSIGNED NOT NULL,
  `spc_pro_id` int(10) UNSIGNED NOT NULL,
  `spc_spg_id` int(11) NOT NULL,
  `spc_sp_id` smallint(5) UNSIGNED NOT NULL,
  `spc_value` text NOT NULL,
  `spc_value_fr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_prospec`
--

INSERT INTO `nm_prospec` (`spc_id`, `spc_pro_id`, `spc_spg_id`, `spc_sp_id`, `spc_value`, `spc_value_fr`) VALUES
(37, 2, 5, 6, '', ''),
(42, 40, 4, 5, 'rtest', ''),
(43, 4, 4, 5, '150', ''),
(44, 4, 4, 5, '200', ''),
(45, 3, 5, 6, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nm_referaluser`
--

CREATE TABLE `nm_referaluser` (
  `ruse_id` int(10) UNSIGNED NOT NULL,
  `ruse_date` datetime NOT NULL,
  `ruse_name` varchar(100) NOT NULL,
  `ruse_emailid` varchar(150) NOT NULL,
  `ruse_userid` int(10) UNSIGNED NOT NULL,
  `ruse_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_review`
--

CREATE TABLE `nm_review` (
  `comment_id` int(50) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `deal_id` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `ratings` varchar(255) NOT NULL,
  `status` int(50) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sam1` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_review`
--

INSERT INTO `nm_review` (`comment_id`, `product_id`, `deal_id`, `store_id`, `customer_id`, `title`, `comments`, `ratings`, `status`, `review_date`, `sam1`) VALUES
(1, NULL, NULL, '1', '1', 'Test', 'Testing', '3', 0, '2018-05-03 10:44:48', 0),
(2, NULL, NULL, '2', '7', 'best store', 'quality product and best price', '5', 0, '2018-05-24 04:22:23', 0),
(3, NULL, NULL, '3', '7', 'Quality support', 'post sales support is good', '5', 0, '2018-05-24 04:22:25', 0),
(4, '3', NULL, NULL, '9', 'Good', 'Good', '5', 0, '2018-06-12 08:31:50', 0),
(5, NULL, NULL, '2', '9', 'tetst', 'afsa', '5', 0, '2018-05-24 11:41:24', 0),
(6, '1', NULL, NULL, '12', 'awesome product', 'best for party times', '5', 0, '2018-05-29 11:22:55', 0),
(7, '6', NULL, NULL, '12', 'best', 'perfect', '3.0', 0, '2018-05-30 06:23:58', 0),
(8, '10', NULL, NULL, '24', 'ishwarya', 'good', '3.0', 0, '2018-05-30 11:48:59', 0),
(9, NULL, '4', NULL, '24', 'tesryred', 'test', '3.0', 0, '2018-05-30 12:26:47', 0),
(10, '4', NULL, NULL, '24', 'test', 'testing', '3.0', 0, '2018-05-30 13:27:37', 0),
(11, '11', NULL, NULL, '24', 'test', 'testing', '3.0', 0, '2018-05-31 05:16:04', 0),
(12, '11', NULL, NULL, '24', 'new', 'new testing', '4.0', 0, '2018-05-31 05:32:32', 0),
(13, NULL, NULL, '4', '26', 'stire', 'review', '3.0', 0, '2018-05-31 07:35:03', 0),
(14, NULL, NULL, '5', '12', 'comment title', 'comments details', '5', 1, '2018-05-31 12:49:56', 0),
(15, NULL, NULL, '3', '26', 'jzjgd', 'hsarh', '2.5', 0, '2018-06-12 06:19:10', 0),
(16, '10', NULL, NULL, '12', 'test', 'test', '5', 1, '2018-06-12 17:57:36', 0),
(17, '10', NULL, NULL, '12', 'test2', 'test2', '5', 1, '2018-06-12 17:58:05', 0),
(18, '34', NULL, NULL, '31', 'Stayshhs', 'Thank ', '4', 0, '2018-06-14 08:06:00', 0),
(19, '34', NULL, NULL, '31', 'Thank ', 'Testing ', '5', 0, '2018-06-14 08:08:25', 0),
(20, '34', NULL, NULL, '31', 'Test2', 'Thank ', '4', 0, '2018-06-14 08:10:31', 0),
(21, '34', NULL, NULL, '31', 'Better', 'Moderate', '3', 0, '2018-06-14 09:22:30', 0),
(22, '4', NULL, NULL, '31', 'Test', 'Gugan', '4', 0, '2018-06-14 12:14:42', 0),
(23, '35', NULL, NULL, '31', 'Shudjdjd', 'Thank goodness ', '4', 0, '2018-06-14 12:28:17', 0),
(24, '5', NULL, NULL, '31', 'Thank ', 'Thank ', '5', 0, '2018-06-14 12:37:24', 0),
(25, NULL, '14', NULL, '31', 'Test', 'Testing', '2', 0, '2018-06-14 13:01:45', 0),
(26, NULL, NULL, '8', '45', 'good', 'Oka', '3', 1, '2018-06-20 05:41:57', 0),
(27, '39', NULL, NULL, '52', 'new', 'new testing', '3.0', 0, '2018-06-23 06:45:05', 0),
(28, '39', NULL, NULL, '52', 'test', 'testing', '5.0', 0, '2018-06-23 06:45:18', 0),
(29, '41', NULL, NULL, '59', 'ictxitxitxotdiis', 'xitticoycoy\nxuffoycupxoydoydy9st8dt8dt8dotdoydt9d8txotocy', '3.0', 0, '2018-06-27 10:07:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nm_save_cart`
--

CREATE TABLE `nm_save_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_product_id` int(11) NOT NULL,
  `cart_deal_id` int(11) NOT NULL,
  `cart_product_qty` int(11) NOT NULL,
  `cart_type` int(1) NOT NULL COMMENT '1-Products,2-Deals',
  `cart_pro_siz_id` int(11) NOT NULL,
  `cart_pro_col_id` int(11) NOT NULL,
  `cart_user_id` int(11) NOT NULL,
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_save_cart`
--

INSERT INTO `nm_save_cart` (`cart_id`, `cart_product_id`, `cart_deal_id`, `cart_product_qty`, `cart_type`, `cart_pro_siz_id`, `cart_pro_col_id`, `cart_user_id`, `addedDate`) VALUES
(14, 6, 0, 4, 1, 0, 0, 4, '2018-05-05 09:15:21'),
(15, 0, 2, 3, 2, 0, 0, 4, '2018-05-05 09:16:26'),
(16, 2, 0, 2, 1, 11, 0, 4, '2018-05-05 10:01:05'),
(17, 0, 3, 3, 2, 0, 0, 4, '2018-05-05 11:02:32'),
(20, 0, 6, 3, 2, 0, 0, 13, '2018-05-24 12:03:06'),
(32, 11, 0, 2, 1, 0, 0, 27, '2018-05-31 06:55:56'),
(33, 6, 0, 1, 1, 11, 0, 27, '2018-05-31 06:56:24'),
(34, 5, 0, 1, 1, 2, 11, 27, '2018-05-31 06:57:11'),
(43, 1, 0, 1, 1, 11, 3, 29, '2018-06-01 07:23:48'),
(74, 35, 0, 1, 1, 137, 119, 26, '2018-06-13 12:57:08'),
(75, 34, 0, 1, 1, 0, 0, 30, '2018-06-13 13:48:43'),
(76, 6, 0, 1, 1, 0, 0, 30, '2018-06-13 13:57:19'),
(77, 35, 0, 1, 1, 137, 118, 30, '2018-06-13 14:22:29'),
(102, 38, 0, 1, 1, 11, 0, 5, '2018-06-15 09:35:47'),
(108, 37, 0, 1, 1, 11, 0, 36, '2018-06-16 05:44:29'),
(115, 6, 0, 1, 1, 0, 0, 42, '2018-06-19 05:39:59'),
(123, 7, 0, 6, 1, 0, 0, 34, '2018-06-19 06:49:16'),
(124, 10, 0, 1, 1, 0, 0, 34, '2018-06-19 06:50:11'),
(130, 9, 0, 1, 1, 11, 0, 45, '2018-06-20 07:09:58'),
(164, 37, 0, 1, 1, 11, 0, 56, '2018-06-25 09:57:21'),
(207, 42, 0, 1, 1, 255, 208, 59, '2018-06-27 11:59:54'),
(221, 0, 6, 1, 2, 0, 0, 63, '2018-07-02 11:23:25'),
(240, 45, 0, 1, 1, 0, 0, 68, '2018-07-05 11:10:53'),
(241, 3, 0, 1, 1, 224, 191, 68, '2018-07-05 11:42:09'),
(247, 1, 0, 2, 1, 228, 192, 60, '2018-07-09 10:43:20'),
(248, 40, 0, 1, 1, 208, 172, 60, '2018-07-09 10:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `nm_secmaincategory`
--

CREATE TABLE `nm_secmaincategory` (
  `smc_id` smallint(5) UNSIGNED NOT NULL,
  `smc_name` varchar(100) NOT NULL,
  `smc_name_fr` varchar(100) NOT NULL,
  `smc_mc_id` smallint(5) UNSIGNED NOT NULL,
  `smc_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_secmaincategory`
--

INSERT INTO `nm_secmaincategory` (`smc_id`, `smc_name`, `smc_name_fr`, `smc_mc_id`, `smc_status`) VALUES
(1, 'Dolls', '', 1, 1),
(2, 'jeans', '', 1, 1),
(3, 'Saree', '', 2, 1),
(4, 'Salwar', '', 2, 1),
(5, 'Shirt', '', 3, 1),
(6, 'Jeans', '', 3, 1),
(7, 'western wear', '', 2, 1),
(8, 'T-shirt', '', 3, 1),
(9, 'Mobiles', '', 4, 1),
(10, 'Laptops', '', 4, 1),
(11, 'Peripherals', '', 4, 1),
(12, 'mobile', '', 5, 1),
(13, 'Iphone', '', 6, 0),
(14, 'Sony', '', 6, 1),
(15, 'moto', '', 6, 1),
(16, '111', '', 7, 1),
(17, '222', '', 7, 1),
(18, 'Micky', '', 8, 1),
(19, 'teddy', '', 8, 1),
(20, 'test main1', '', 9, 1),
(21, 'Test main2', '', 9, 1),
(22, 'main test1', '', 10, 1),
(23, 'main test 2', '', 10, 1),
(24, 'english naval', '', 11, 1),
(25, 'Religious books', '', 11, 1),
(26, 'Main category 1', '', 13, 1),
(27, 'Main category 2', '', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_secsubcategory`
--

CREATE TABLE `nm_secsubcategory` (
  `ssb_id` smallint(5) UNSIGNED NOT NULL,
  `ssb_name` varchar(100) NOT NULL,
  `ssb_name_fr` varchar(100) NOT NULL,
  `ssb_sb_id` smallint(5) UNSIGNED NOT NULL,
  `ssb_smc_id` smallint(5) UNSIGNED NOT NULL,
  `mc_id` smallint(5) UNSIGNED NOT NULL,
  `ssb_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_secsubcategory`
--

INSERT INTO `nm_secsubcategory` (`ssb_id`, `ssb_name`, `ssb_name_fr`, `ssb_sb_id`, `ssb_smc_id`, `mc_id`, `ssb_status`) VALUES
(1, '111-a-1', '', 1, 7, 16, 1),
(2, 'english', '', 4, 11, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_shipping`
--

CREATE TABLE `nm_shipping` (
  `ship_id` int(10) UNSIGNED NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `ship_address1` varchar(200) NOT NULL,
  `ship_address2` varchar(200) NOT NULL,
  `ship_ci_id` varchar(50) NOT NULL,
  `ship_state` varchar(100) NOT NULL,
  `ship_country` varchar(50) NOT NULL,
  `ship_postalcode` varchar(20) NOT NULL,
  `ship_phone` varchar(20) NOT NULL,
  `ship_email` varchar(255) NOT NULL,
  `ship_order_id` varchar(50) NOT NULL,
  `ship_trans_id` varchar(50) NOT NULL,
  `ship_cus_id` bigint(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_shipping`
--

INSERT INTO `nm_shipping` (`ship_id`, `ship_name`, `ship_address1`, `ship_address2`, `ship_ci_id`, `ship_state`, `ship_country`, `ship_postalcode`, `ship_phone`, `ship_email`, `ship_order_id`, `ship_trans_id`, `ship_cus_id`, `date_time`) VALUES
(1, 'Ishwarya', 'Cfgh', 'Xdfb', '1', 'Cfb', '1', '421010', '9632587410', 'pofi@mailinator.com', '1', 'ORDER15253464771', 1, '2018-05-03 11:21:17'),
(2, 'ragul', 'Coimbatore', 'Coimbatore', 'Coimbtore', 'Tamilnadu', 'India', '641010', '09944349002', 'ragulgandhi@pofitec.com', '1', '9JD281287F7689252', 4, '2018-05-05 05:43:39'),
(3, 'New', 'tesr', 'tes345', 'Coimbtore', 'tn', 'India', '641010', '9876543210', 'new@mailinator.com', '9', '819be64fda3721947272', 4, '2018-05-05 07:25:55'),
(4, 'Ishwarya', 'ram nagar', 'Gandhipuram', 'Coimbtore', 'tamil nadu', 'India', '641654', '9944349002', 'prmg@mailinator.com', '10', 'd4e96521a6eb5493d239', 2, '2018-05-12 10:50:08'),
(5, 'priya', '12', '34', 'Coimbtore', 'tamilnadu', 'India', '641009', '1234567890', 'laravelseo@gmail.com', '2', 'ORDER15271404352', 7, '2018-05-24 05:40:35'),
(6, 'priya', '1', '2', 'Coimbtore', 'tamilnadu', 'India', '641009', '1234567890', 'laravelseo@gmail.com', '3', 'ORDER15271586903', 7, '2018-05-24 10:44:51'),
(7, 'sami pasha', '53 CCA', '53', 'los angeles', 'Punjab', 'India', '054444', '3234364976', 'sami.pasha@techlatitude.com', '4', 'ORDER15272794614', 12, '2018-05-25 20:17:41'),
(8, 'user', 'sssssssss', 'ss', 'Coimbtore', 'ss', 'India', '11111', '1234567890', 'user@laravelecommerce.com', '11', 'ORDER152751244911', 12, '2018-05-28 13:00:49'),
(9, 'tes', 'test1', 'tes', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '12', 'ORDER152757508712', 12, '2018-05-29 06:24:47'),
(10, 'user', '123', '456', 'Coimbtore', 'tamil nadu', 'India', '641009', '1234567890', 'user@laravelecommerce.com', '14', 'ORDER152758959014', 12, '2018-05-29 10:26:30'),
(11, 'User', '123', '456', 'Coimbtore', 'Tamil nadu', 'India', '641009', '1234567890', 'user@laravelecommerce.com', '15', 'ORDERdgdu71kH', 12, '2018-05-30 06:25:59'),
(12, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 14, '2018-05-30 09:48:18'),
(13, 'Demo', '', '', '1', '', '1', '', '', '', '', '', 15, '2018-05-30 09:48:43'),
(14, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 16, '2018-05-30 09:49:45'),
(15, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 17, '2018-05-30 09:50:02'),
(16, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 18, '2018-05-30 09:50:08'),
(17, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 19, '2018-05-30 09:50:17'),
(18, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 20, '2018-05-30 09:51:23'),
(19, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 21, '2018-05-30 09:53:05'),
(20, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 22, '2018-05-30 09:53:12'),
(21, 'kumar', '', '', '1', '', '1', '', '', '', '', '', 23, '2018-05-30 10:07:47'),
(22, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641008', '1591591599', 'nagoor@pofitec.com', '2', '0E2061922A629602X', 12, '2018-05-30 10:27:43'),
(23, 'test', '', '', '1', '', '1', '', '', '', '', '', 24, '2018-05-30 11:40:42'),
(24, 'Test', 'testing', 'test', 'Coimbtore', 'tn', 'India', '641010', '9638527410', 'test@mailinator.com', '16', 'ORDER7AL2REIu', 24, '2018-05-30 11:41:50'),
(25, 'Test', 'test', 'teet', 'Coimbtore', 'tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '3', 'PAY-18X32451H0459092JKO7KFUI', 24, '2018-05-30 11:44:06'),
(26, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '17', 'ORDER7QMu5jjv', 24, '2018-05-30 12:04:17'),
(27, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '18', 'ORDERB78WHYmx', 24, '2018-05-30 12:07:31'),
(28, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641008', '1591591599', 'nagoor@pofitec.com', '4', 'PAY-18X32451H0459092JKO7KFUI', 12, '2018-05-30 12:07:37'),
(29, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '19', 'ORDERv6NUIXHe', 24, '2018-05-30 12:22:46'),
(30, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '20', 'ORDERHykFlM8s', 24, '2018-05-30 12:23:28'),
(31, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '21', 'ORDERYdfFdQRR', 24, '2018-05-30 12:23:49'),
(32, 'Test', 'Test', 'Teet', '0', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '22', 'ORDERur3AQY6g', 24, '2018-05-30 12:25:49'),
(33, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '23', 'ORDERSeojs9h1', 24, '2018-05-30 12:37:16'),
(34, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '24', 'ORDER9F0LpPOj', 24, '2018-05-30 12:38:27'),
(35, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '5', 'PAY-18X32451H0459092JKO7KFUI', 24, '2018-05-30 12:40:13'),
(36, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '25', 'ORDERvQpyQedD', 24, '2018-05-30 13:06:39'),
(37, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '26', 'ORDERcLE0f9SY', 24, '2018-05-30 13:17:28'),
(38, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '27', 'ORDERa8bOpiCt', 24, '2018-05-31 05:06:57'),
(39, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '6', 'PAY-18X32451H0459092JKO7KFUI', 24, '2018-05-31 05:07:35'),
(40, 'Test', 'Test', 'Teet', '0', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '28', 'ORDERolF1ZddO', 24, '2018-05-31 05:14:32'),
(41, 'Test', 'Test', 'Teet', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '7', 'PAY-18X32451H0459092JKO7KFUI', 24, '2018-05-31 05:25:01'),
(42, 'Test', 'Test', 'Teet', '0', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '29', 'ORDERnMbDg8Jb', 24, '2018-05-31 05:28:29'),
(43, 'new', '', '', '1', '', '1', '', '', '', '', '', 26, '2018-05-31 05:52:14'),
(44, 'New', 'New', 'New 123', '1', 'Tn', '1', '641010', '9638527410', 'new123@mailinator.com', '30', 'ORDERZ4GC5wQ1', 26, '2018-05-31 06:00:18'),
(45, 'New', 'New', 'New 123', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'new123@mailinator.com', '8', 'PAY-18X32451H0459092JKO7KFUI', 26, '2018-05-31 06:39:11'),
(46, 'New', 'New', 'New 123', '1', 'Tn', '1', '641010', '9638527410', 'new@mailinator.com', '31', 'ORDERmikEkeeU', 26, '2018-05-31 07:35:37'),
(47, 'user', 'yxcyxc', 'sdfsdf', 'Coimbtore', 'yxcyxc', 'India', '23456', '1234567890', 'user@laravelecommerce.com', '50', 'ORDER152785399350', 12, '2018-06-01 11:53:13'),
(48, 'BRUNO SOARES DA SILVA', 'TERCEIRA RUA RURAL', 'xxxx', 'Coimbtore', 'PAR', 'India', '67035-', '1234567890', 'user@laravelecommerce.com', '51', 'ORDER152798362351', 12, '2018-06-02 23:53:43'),
(49, 'user', 'k', 'j', 'Coimbtore', 'j', 'India', '8', '1234567890', 'user@laravelecommerce.com', '53', 'ORDER152809080953', 12, '2018-06-04 05:40:09'),
(50, 'user', 'Irpavi c 3 Nro 101', 'calle 1', 'Coimbtore', 'Bolivia  La Paz', 'India', '0000', '1234567890', 'user@laravelecommerce.com', '54', 'ORDER152834732554', 12, '2018-06-07 04:55:25'),
(51, 'user', 'f', 'bn', 'Coimbtore', 'b', 'India', '123', '1234567890', 'user@laravelecommerce.com', '56', 'ORDER152845376656', 12, '2018-06-08 10:29:26'),
(52, '081567777466', 'Sumampir rt02rw04 Rembang', 'sumampir', 'Coimbtore', 'Jawa Tengah', 'India', '53356', '81567777466', 'agil.etiawan@gmail.com', '57', 'ORDER152851829457', 12, '2018-06-09 04:24:54'),
(53, 'syed jafri', 'hvh', 'jbkj', 'chennai', 'Bihar', 'India', '800001', '7004577900', 'jafrihassan1@outlook.com', '58', 'ORDER152865938458', 12, '2018-06-10 19:36:24'),
(54, 'New', 'New', 'New 123', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'new@mailinator.com', '59', 'ORDERs02oCdoN', 26, '2018-06-12 06:25:53'),
(55, 'Mohan', 'Ram Nagar', 'Coimbatore', 'Coimbtore', 'TN', 'India', '641009', '9597271533', 'appincoimbatoregp@gmail.com', '60', 'ORDER152888468860', 12, '2018-06-13 10:11:28'),
(56, 'New', 'New', 'New 123', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'new@mailinator.com', '61', 'ORDERoDJXE85b', 26, '2018-06-13 10:54:31'),
(57, 'Madhu', 'test', 'test', '1', 'tn', '1', '641018', '9632507410', 'tsf@hj.com', '', '', 30, '2018-06-13 12:44:36'),
(58, 'Madhu', 'Test', 'Test', '1', 'Tn', '1', '641018', '9632507410', 'tsf@hj.com', '62', 'ORDERFmQBCHdK', 30, '2018-06-13 12:55:47'),
(59, 'New', 'New', 'New 123', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'new@mailinator.com', '63', 'ORDERRv03QpLR', 26, '2018-06-13 12:56:56'),
(60, 'Madhu', 'Test', 'Test', '1', 'Tn', '1', '641018', '9632507410', 'tsf@hj.com', '9', 'PAY-5GJ954774K2341833LMQRN4Y', 30, '2018-06-13 13:07:10'),
(61, 'Gugan', 'rtnnkju', 'ccbnnmm', '1', 'ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '', '', 31, '2018-06-13 15:12:21'),
(62, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '64', 'ORDERgsh5DtMm', 31, '2018-06-13 16:23:16'),
(63, 'Check', '', '', '1', '', '1', '', '', '', '', '', 32, '2018-06-14 05:06:33'),
(64, 'Test', 'Office', 'Guy fch', '1', 'Jcjc', '1', '23654', '963852711', 'yff@fghj.com', '', '', 33, '2018-06-14 05:07:38'),
(65, 'Test', 'Office', 'Guy fch', '2', 'Jcjc', '1', '23654', '963852711', 'yff@fghj.com', '65', 'ORDERK0SdWa7r', 33, '2018-06-14 05:09:12'),
(66, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '66', 'ORDER6VCnzsdz', 31, '2018-06-14 05:31:44'),
(67, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '67', 'ORDERJDsQoD7b', 31, '2018-06-14 06:20:47'),
(68, 'isg', 'test', 'test', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '68', 'ORDER152895728268', 12, '2018-06-14 06:21:22'),
(69, 'zdfv', 'dfv', 'zsd', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '69', 'ORDER152895730369', 12, '2018-06-14 06:21:43'),
(70, 'ra', 'szdf', 'zd', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '70', 'ORDER152896763970', 12, '2018-06-14 09:13:59'),
(71, 'ra', 'szdf', 'zd', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '72', 'ORDER152896769672', 12, '2018-06-14 09:14:56'),
(72, 'ishwarya', 'cfgh', 'xdfb', 'Coimbtore', 'cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '73', 'ORDER152896773073', 12, '2018-06-14 09:15:30'),
(73, 'ishwarya', 'test', 'tes', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '74', 'ORDER152896776474', 12, '2018-06-14 09:16:04'),
(74, 'Ishwarya', 'Test', 'Test2', '2', 'Tamilnadu', '1', '421010', '9632587410', 'singlele@mailinator.com', '75', 'ORDER152896785375', 12, '2018-06-14 09:17:33'),
(75, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '10', 'PAY-50050176NC763762WLMRGRGQ', 31, '2018-06-14 13:07:48'),
(76, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '76', 'ORDERfh6Z7bIL', 31, '2018-06-14 13:16:19'),
(77, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '77', 'ORDERe0TdXGmm', 31, '2018-06-14 14:08:44'),
(78, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '11', 'PAY-30914042XW2834628LMRHOQY', 31, '2018-06-14 14:10:25'),
(79, 'test', '', '', '1', '', '1', '', '', '', '', '', 34, '2018-06-15 05:37:53'),
(80, 'Test', 'Tdidisit', 'Sitzjf', '1', 'Hzzhd', '1', '567', '9638521470', 'dsi@tdgi.com', '78', 'ORDERMRXtX7Mr', 34, '2018-06-15 06:05:14'),
(81, 'Testrecheck add', 'Tdidisit', 'Sitzjf', '1', 'Hzzhd', '1', '567', '96385214700', 'dsi@tdgi.co', '79', 'ORDERR76qILtU', 34, '2018-06-15 06:08:44'),
(82, 'Gugan', 'Rtnnkju', 'Ccbnnmm', 'Coimbtore', 'Ghbb', 'India', '889665', '58896658874', 'guihg@ghhh.com', '80', 'ORDERMjoz2tYJ', 31, '2018-06-15 11:00:55'),
(83, 'Gugan', 'Rtnnkju', 'Ccbnnmm', 'Coimbtore', 'Ghbb', 'India', '889665', '58896658874', 'guihg@ghhh.com', '81', 'ORDERMjoz2tYJ', 31, '2018-06-15 11:00:55'),
(84, 'Gugan', 'Rtnnkju', 'Ccbnnmm', '1', 'Ghbb', '1', '889665', '58896658874', 'guihg@ghhh.com', '82', 'ORDERMjoz2tYJ', 31, '2018-06-15 11:00:55'),
(85, 'Nazeer Pofitec', '', '', '', '', '', '', '', '', '', '', 35, '2018-06-15 11:09:51'),
(86, 'Gugan', 'Rtnnkju', 'Ccbnnmm', 'Coimbtore', 'Ghbb', 'India', '889665', '58896658874', 'guihg@ghhh.com', '83', 'ORDERkrDMJ2ky', 31, '2018-06-15 12:15:16'),
(87, 'Test', 'Testing', 'Testing', '1', 'TN', '1', '641010', '9638527410', 'ishwarya@gmail.com', '', '', 37, '2018-06-16 07:59:28'),
(88, 'Anjar Sasongko', '', '', '3', '', '3', '', '', '', '', '', 38, '2018-06-17 02:18:50'),
(89, 'Fly', '', '', '', '', '', '', '', '', '', '', 40, '2018-06-17 14:55:04'),
(90, 'Ishwarya', 'Test', 'Test2', 'chennai', 'Tamilnadu', 'India', '421010', '9632587410', 'singlele@mailinator.com', '84', 'ORDERKwk12ArM', 12, '2018-06-18 16:37:03'),
(91, 'Armands Kiselutis', '61', 'Brentwood Road', 'Coimbtore', 'Lancashire', 'India', 'BB98AY', '7492724695', 'skypewip@gmail.com', '87', 'ORDER152935628887', 12, '2018-06-18 21:11:28'),
(92, 'Pofi', '', '', '', '', '', '', '', '', '', '', 42, '2018-06-19 05:28:44'),
(93, 'Test', 'Testing', 'Testing', '1', 'TN', '1', '641010', '9638527410', 'ishwarya@gmail.com', '88', 'ORDERnQd8NOo3', 37, '2018-06-19 05:30:48'),
(94, 'Pratap', 'tex', 'kg kc', '1', 'gc', '1', '641010', '9638527410', 'cofo@istofy.com', '', '', 43, '2018-06-19 05:48:13'),
(95, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '89', 'ORDER5zp1AajX', 43, '2018-06-19 06:06:54'),
(96, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '12', 'PAY-5VT25244R4809212HLMUJ3OQ', 43, '2018-06-19 06:08:03'),
(97, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '90', 'ORDERZrQxC3D8', 43, '2018-06-19 06:09:40'),
(98, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '13', 'PAY-6DU7750678793531WLMUJ44I', 43, '2018-06-19 06:11:07'),
(99, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '91', 'ORDER6uxPX5fq', 43, '2018-06-19 06:45:57'),
(100, 'Test', 'Testing', 'Testing', '1', 'TN', '1', '641010', '9638527410', 'ishwarya@gmail.com', '92', 'ORDERU2mMKeba', 37, '2018-06-19 06:48:32'),
(101, 'Test', 'Testing', 'Testing', '1', 'TN', '1', '641010', '9638527410', 'ishwarya@gmail.com', '93', 'ORDERGfYY9yQ2', 37, '2018-06-19 06:51:38'),
(102, 'Tshering', '', '', '', '', '', '', '', '', '', '', 44, '2018-06-19 09:31:01'),
(103, 'Pratap', 'Tex', 'Kg kc', 'Coimbtore', 'Gc', 'India', '641010', '9638527410', 'cofo@istofy.com', '94', 'ORDERPgE08N6v', 43, '2018-06-19 12:08:47'),
(104, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '95', 'ORDERPgE08N6v', 43, '2018-06-19 12:08:47'),
(105, 'Pratap', 'Tex', 'Kg kc', '1', 'Gc', '1', '641010', '9638527410', 'cofo@istofy.com', '96', 'ORDERYJmICVUA', 43, '2018-06-19 12:09:19'),
(106, 'user', 'ahmethotmailcom', 'seksfjsdfjoxgjkdsopg', 'Coimbtore', 'werwerewrew', 'India', '231231', '1234567890', 'user@laravelecommerce.com', '97', 'ORDER152941962697', 12, '2018-06-19 14:47:06'),
(107, 'ert', 'ret', 'werew', 'Coimbtore', 'tamilnadu', 'India', '173027', '234254', 'sherly@pofitec.com', '98', 'ORDER152947442398', 45, '2018-06-20 06:00:23'),
(108, 'user', 'test', 'test', 'Coimbtore', 'tn', 'India', '641010', '1234567890', 'user@laravelecommerce.com', '99', 'ORDER152956218699', 12, '2018-06-21 06:23:06'),
(109, 'user', 'sdfv', 'sfvc', 'Coimbtore', 'dc', 'India', '41010', '1234567890', 'user@laravelecommerce.com', '100', 'ORDER1529562255100', 12, '2018-06-21 06:24:15'),
(110, 'Test', 'kchgxj', 'jcjckf', '1', 'TN', '1', '65773', '96385214 ', 'coufhoy@surfisirs.ch', '', '', 46, '2018-06-21 10:07:01'),
(111, 'Test', 'Kchgxj', 'Jcjckf', '1', 'TN', '1', '65773', '96385214 ', 'coufhoy@surfisirs.ch', '101', 'ORDERJ6GGq7iS', 46, '2018-06-21 10:17:33'),
(112, 'suganya', '', '', '1', '', '1', '', '', '', '', '', 47, '2018-06-21 11:05:37'),
(113, 'Demo', '', '', '1', '', '1', '', '', '', '', '', 49, '2018-06-21 11:55:22'),
(114, 'Ishwarya', 'tdc', 'jfcgjx', '1', 'tn', '1', '64110', '963852710', 'kgoy@ifot.com', '', '', 51, '2018-06-22 04:42:28'),
(115, 'Ishwarya', 'Tdc', 'Jfcgjx', '1', 'Tn', '1', '64110', '963852710', 'kgoy@ifot.com', '102', 'ORDERkt6mKXS1', 51, '2018-06-22 04:43:57'),
(116, 'Ishwarya', 'Tdc', 'Jfcgjx', 'Coimbtore', 'Tn', 'India', '64110', '963852710', 'kgoy@ifot.com', '14', 'PAY-00A984011X1514630LMWH5QY', 51, '2018-06-22 04:45:04'),
(117, 'new', '', '', '1', '', '1', '', '', '', '', '', 52, '2018-06-22 06:11:18'),
(118, 'New', 'ff7g7gi8', 'ucg8cigc', 'Coimbtore', 'tn', 'India', '641010', '9638527410', 'ucff7@c7gf8f.com', '103', 'ORDERbIKOwROw', 52, '2018-06-22 07:43:11'),
(119, 'New', 'tdcfyc7f', 'y dudcufv', 'Coimbtore', 'ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '104', 'ORDERH3o55JRb', 52, '2018-06-22 07:44:28'),
(120, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '105', 'ORDERaPq8QxfI', 52, '2018-06-22 07:46:28'),
(121, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '106', 'ORDERp8UM38Pf', 52, '2018-06-22 07:51:01'),
(122, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '107', 'ORDERrNElxnzj', 52, '2018-06-22 07:53:57'),
(123, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '108', 'ORDERrkHa5Ule', 52, '2018-06-22 07:59:23'),
(124, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '109', 'ORDERTwkmNlCh', 52, '2018-06-22 08:00:09'),
(125, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '110', 'ORDERTq82PGvv', 52, '2018-06-22 08:00:42'),
(126, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '111', 'ORDERSaEi5eCl', 52, '2018-06-22 08:01:47'),
(127, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '112', 'ORDERzJRbzLui', 52, '2018-06-22 11:50:06'),
(128, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '113', 'ORDERcdY4tgtG', 52, '2018-06-22 11:50:57'),
(129, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '114', 'ORDERZnQx4zSD', 52, '2018-06-22 11:52:50'),
(130, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '115', 'ORDEREuK06lmk', 52, '2018-06-22 11:55:49'),
(131, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '116', 'ORDERLBf7eSeW', 52, '2018-06-22 12:18:02'),
(132, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '117', 'ORDER629naOlO', 52, '2018-06-22 12:28:13'),
(133, 'New', 'Tdcfyc7f', 'Y dudcufv', '1', 'Ydfy', '1', '522558', '9638527410', 'dtuf@f77gig.com', '118', 'ORDERyfg36ATR', 52, '2018-06-23 05:13:01'),
(134, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '119', 'ORDERuutBrj8s', 52, '2018-06-23 06:30:58'),
(135, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '15', 'PAY-18X32451H0459092JKO7KFUI', 52, '2018-06-23 06:32:56'),
(136, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '120', 'ORDERAgbkVlVg', 52, '2018-06-23 06:33:36'),
(137, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '121', 'ORDERAgbkVlVg', 52, '2018-06-23 06:33:36'),
(138, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '122', 'ORDER0c1fn9Kt', 52, '2018-06-23 06:39:06'),
(139, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '16', 'PAY-18X32451H0459092JKO7KFUI', 52, '2018-06-23 06:39:43'),
(140, 'New', 'Tdcfyc7f', 'Y dudcufv', '1', 'Ydfy', '1', '522558', '9638527410', 'dtuf@f77gig.com', '123', 'ORDERVo2ZGlku', 52, '2018-06-23 06:49:22'),
(141, 'New', 'Tdcfyc7f', 'Y dudcufv', 'Coimbtore', 'Ydfy', 'India', '522558', '9638527410', 'dtuf@f77gig.com', '124', 'ORDERYrNEBsXm', 52, '2018-06-23 06:52:02'),
(142, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', '0', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '125', 'ORDERVojxoAI1', 35, '2018-06-23 08:15:47'),
(143, 'user', 'gfghfh', 'hfhghfh', 'Coimbtore', 'tamil nadu', 'India', '123', '1234567890', 'user@laravelecommerce.com', '137', 'ORDER1529747827137', 12, '2018-06-23 09:57:07'),
(144, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '', '', 54, '2018-06-23 10:19:45'),
(145, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '138', 'ORDERJPthodd1', 54, '2018-06-23 10:22:17'),
(146, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '17', 'PAY-4JC48338N6174605ALMXB7SI', 54, '2018-06-23 10:24:18'),
(147, 'figxicoh', '', '', '1', '', '1', '', '', '', '', '', 55, '2018-06-23 13:05:05'),
(148, 'Figxicoh', 'ydduif', 'ududd78r', 'Coimbtore', 'tn', 'India', '641010', '9638527410', 'jchchx@hhi.com', '139', 'ORDERSPN2uUVo', 55, '2018-06-23 13:06:47'),
(149, 'Ishwarya', 'Cfgh', 'Xdfb', 'Coimbtore', 'Cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '140', 'ORDERgeceltgq', 1, '2018-06-25 07:52:21'),
(150, 'Ishwarya', 'Cfgh', 'Xdfb', '0', 'Cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '141', 'ORDERmCKeX6Uy', 1, '2018-06-25 07:54:58'),
(151, 'Ishwarya', 'Cfgh', 'Xdfb', 'Coimbtore', 'Cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '142', 'ORDER2upVb7Uf', 1, '2018-06-25 09:15:20'),
(152, 'rtyr', 'ytry', 'rtytry', 'Coimbtore', 'try', 'India', '123435', '1234567890', 'user@laravelecommerce.com', '143', 'ORDER1529920144143', 12, '2018-06-25 09:49:04'),
(153, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '144', 'ORDERU05XWfVt', 35, '2018-06-25 10:10:06'),
(154, 'user', 'test', 'test', 'Coimbtore', 'banglore', 'India', '123123', '1234567890', 'user@laravelecommerce.com', '145', 'ORDER1529923921145', 12, '2018-06-25 10:52:01'),
(155, 'user', 'dffd', 'fdgfg', 'Coimbtore', 'fgdfg', 'India', '7672', '1234567890', 'user@laravelecommerce.com', '146', 'ORDER1529924637146', 12, '2018-06-25 11:03:58'),
(156, 'Sherly Paris', '678 Ramnagar', 'tytry', 'Coimbtore', 'Tamil Nadu', 'India', '7768', '9994988352', 'user@laravelecommerce.com', '147', 'ORDER1529927435147', 12, '2018-06-25 11:50:35'),
(157, 'user3', 'dfdfg', 'dghgj', 'Coimbtore', 'dfsgfd', 'India', '4353', '1234567890', 'user@laravelecommerce.com', '148', 'ORDER1529927895148', 12, '2018-06-25 11:58:15'),
(158, 'user', 'fghf', 'fuhf', 'Coimbtore', 'ftu', 'India', '546547', '1234567890', 'user@laravelecommerce.com', '149', 'ORDER1529928083149', 12, '2018-06-25 12:01:23'),
(159, 'user', 'rtyty', 'ty', 'Coimbtore', 'ryt', 'India', '54675', '1234567890', 'user@laravelecommerce.com', '150', 'ORDER1529928217150', 12, '2018-06-25 12:03:37'),
(160, 'user', 'ghfgh', 'fhfghg', 'Coimbtore', 'jgfh', 'India', '68778', '1234567890', 'user@laravelecommerce.com', '18', 'ORDER1529928303dQjGkt', 12, '2018-06-25 12:05:04'),
(161, 'user', 'test', 'test', 'Coimbtore', 'banglore', 'India', '123123', '1234567890', 'user@laravelecommerce.com', '151', 'ORDER1529942855151', 12, '2018-06-25 16:07:35'),
(162, 'John Estrada ', '', '', '3', '', '3', '', '', '', '', '', 57, '2018-06-25 17:50:44'),
(163, 'Ishwarya', 'Cfgh', 'Xdfb', 'Coimbtore', 'Cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '19', 'PAY-18X32451H0459092JKO7KFUI', 1, '2018-06-26 06:13:53'),
(164, 'user', 'cbe', 'cbe', 'Coimbtore', 'tn', 'India', '641654', '1234567890', 'user@laravelecommerce.com', '152', 'ORDER1529994407152', 12, '2018-06-26 06:26:48'),
(165, 'user', 'cbe', 'cbe', 'Coimbtore', 'tn', 'India', '641654', '1234567890', 'user@laravelecommerce.com', '153', 'ORDER1529994947153', 12, '2018-06-26 06:35:47'),
(166, 'User', 'Cbe', 'Cbe', '1', 'Tn', '1', '641654', '1234567890', 'user@laravelecommerce.com', '0', 'ORDER15299960210', 12, '2018-06-26 06:53:41'),
(167, 'testuset', '\"test addr1\"', '\"test addr2\"', 'Coimbtore', 'tn', 'India', '123456', '7200285584', 'suganya.t@pofitec.com', '20', 'PAY-18X32451H0459092JKO7KFUI', 5, '2018-06-26 07:03:52'),
(168, 'Chhety ', '', '', '1', '', '1', '', '', '', '', '', 58, '2018-06-26 11:29:00'),
(169, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '21', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:25:58'),
(170, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '22', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:26:00'),
(171, 'Ishwarya', 'Cfgh', 'Xdfb', 'Coimbtore', 'Cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '23', 'PAY-18X32451H0459092JKO7KFUI', 1, '2018-06-27 05:28:01'),
(172, 'Ishwarya', 'Cfgh', 'Xdfb', 'Coimbtore', 'Cfb', 'India', '421010', '9632587410', 'pofi@mailinator.com', '24', 'PAY-18X32451H0459092JKO7KFUI', 1, '2018-06-27 05:28:59'),
(173, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '25', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:29:27'),
(174, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '26', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:33:55'),
(175, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '27', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:39:12'),
(176, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '28', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:39:47'),
(177, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '29', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 05:44:55'),
(178, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '30', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 06:37:44'),
(179, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '155', 'ORDERyt56E8Yd', 35, '2018-06-27 09:25:05'),
(180, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '31', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-06-27 09:25:35'),
(181, 'New', '', '', '1', '', '1', '', '', '', '', '', 59, '2018-06-27 09:43:21'),
(182, 'New', 'tesr', 'neew', 'Coimbtore', 'tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '156', 'ORDER4HW5bwrI', 59, '2018-06-27 10:10:26'),
(183, 'New', 'Tesr', 'Neew', 'Coimbtore', 'Tn', 'India', '641010', '9638527410', 'ishwarya@pofitec.com', '32', 'PAY-18X32451H0459092JKO7KFUI', 59, '2018-06-27 10:28:05'),
(184, 'Test', 'Digi', 'Fix if', 'Coimbtore', 'TN', 'India', '35443524', '3757373', 'ohfyof@otddotdot.con', '33', 'PAY-1B452982JM070094JLMZWRNA', 54, '2018-06-27 10:36:47'),
(185, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '34', 'PAY-1B452982JM070094JLMZWRNA', 54, '2018-06-27 10:36:48'),
(186, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '35', 'PAY-8K271050177606841LMZWR3I', 54, '2018-06-27 10:37:42'),
(187, 'Test', 'Digi', 'Fix if', 'Coimbtore', 'TN', 'India', '35443524', '3757373', 'ohfyof@otddotdot.con', '36', 'PAY-8UR66503P81009642LMZWSTQ', 54, '2018-06-27 10:39:19'),
(188, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '37', 'PAY-8UR66503P81009642LMZWSTQ', 54, '2018-06-27 10:39:20'),
(189, 'Test', 'Digi', 'Fix if', 'Coimbtore', 'TN', 'India', '35443524', '3757373', 'ohfyof@otddotdot.con', '38', 'PAY-8YG95888U0325654CLMZWUVI', 54, '2018-06-27 10:43:46'),
(190, 'Test', 'Digi', 'Fix if', '1', 'TN', '1', '35443524', '3757373', 'ohfyof@otddotdot.con', '39', 'PAY-8YG95888U0325654CLMZWUVI', 54, '2018-06-27 10:43:47'),
(191, 'Test', 'Digi', 'Fix if', 'Coimbtore', 'TN', 'India', '35443524', '3757373', 'ohfyof@otddotdot.con', '157', 'ORDEROP8fVpAn', 54, '2018-06-27 11:05:23'),
(192, 'Suganya', 'Avinashi', 'Covai', 'Coimbtore', 'TN', 'India', '641001', '9445847896', 'nagoor@pofitec.com', '40', 'PAY-18X32451H0459092JKO7KFUI', 12, '2018-06-27 13:06:12'),
(193, 'Suganya', 'Avinashi', 'Covai', 'Coimbtore', 'TN', 'India', '641001', '9445847896', 'nagoor@pofitec.com', '41', 'PAY-18X32451H0459092JKO7KFUI', 12, '2018-06-27 13:06:14'),
(194, 'Nagoor meeran', 'Karumbukadai', 'Aasath Nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641008', '1591591599', 'nagoor@pofitec.com', '42', 'PAY-18X32451H0459092JKO7KFUI', 12, '2018-06-27 13:07:18'),
(195, 'Naveen Reddy', '', '', '', '', '', '', '', '', '', '', 60, '2018-06-28 07:22:25'),
(196, 'test', 'gtscjycv', 'hfuhv', 'Coimbtore', 'uffg', 'India', '654', '1425412541', 'gyddh@gggx.com', '158', 'ORDERCvYjHytF', 50, '2018-06-28 08:08:00'),
(197, 'Test', 'Testing', 'Testing', 'Coimbtore', 'TN', 'India', '641010', '9638527410', 'ishwarya@gmail.com', '159', 'ORDERfZzuFZgw', 37, '2018-06-28 12:34:45'),
(198, 'user', 'x4', '46656', 'Coimbtore', 'tala', 'India', '500005', '1234567890', 'user@laravelecommerce.com', '160', 'ORDER1530381040160', 12, '2018-06-30 17:50:40'),
(199, 'Rabbi', '', '', '3', '', '3', '', '', '', '', '', 61, '2018-07-01 02:47:16'),
(200, 'john', '', '', '3', '', '3', '', '', '', '', '', 62, '2018-07-01 17:12:44'),
(201, 'user', 'test', 'tesrt', 'Coimbtore', 'tn', 'India', '641010', '1234567890', 'user@laravelecommerce.com', '161', 'ORDER1530526965161', 12, '2018-07-02 10:22:45'),
(202, 'ra', 'szdf', 'zd', 'Coimbtore', 'tn', 'India', '641010', '9632587410', 'ishwarya@mailinator.com', '163', 'ORDER1530528434163', 12, '2018-07-02 10:47:15'),
(203, 'Test', 'Kchgxj', 'Jcjckf', '1', 'TN', '1', '65773', '96385214 ', 'coufhoy@surfisirs.ch', '43', 'PAY-44S12960GV3186747LM5BLPQ', 46, '2018-07-02 12:08:46'),
(204, 'Ggsdnh', '', '', '3', '', '3', '', '', '', '', '', 64, '2018-07-02 20:18:55'),
(205, 'user', 'fdf', 'trytry', 'Coimbtore', 'fdgdf', 'India', '435654', '1234567890', 'user@laravelecommerce.com', '164', 'ORDER1530595255164', 12, '2018-07-03 05:20:55'),
(206, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '44', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-07-03 05:32:01'),
(207, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '45', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-07-03 05:32:04'),
(208, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '46', 'PAY-18X32451H0459092JKO7KFUI', 35, '2018-07-03 05:32:42'),
(209, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '165', 'ORDERuzG8qqFW', 35, '2018-07-03 05:33:25'),
(210, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '166', 'ORDERuzG8qqFW', 35, '2018-07-03 05:33:25'),
(211, 'Nazeer Pofitec', 'Arputham Towers', 'Ram nagar', 'Coimbtore', 'Tamil Nadu', 'India', '641001', '9445894458', 'nazeer@pofitec.com', '167', 'ORDERnT5FyURs', 35, '2018-07-03 05:33:45'),
(212, 'user', 'rfdt', 'rwtre', 'Coimbtore', 'ytryt', 'India', '5646', '1234567890', 'user@laravelecommerce.com', '168', 'ORDER1530610277168', 12, '2018-07-03 09:31:17'),
(213, 'user', 'fghfgh', 'fghf', 'Coimbtore', 'gfhhf', 'India', '5465', '1234567890', 'user@laravelecommerce.com', '169', 'ORDER1530610336169', 12, '2018-07-03 09:32:16'),
(214, 'user', 'rtryt', 'tyty', 'Coimbtore', 'ytry', 'India', '546467', '1234567890', 'user@laravelecommerce.com', '47', '8XA904683K396563B', 12, '2018-07-03 09:50:45'),
(215, 'Kuber ', '', '', '2', '', '1', '', '', '', '', '', 65, '2018-07-03 18:05:22'),
(216, 'subho', 'C-15  Chalantika Garia Station Road , Kolkata - 700084', 'Near Amtala Bus Stoppage In between Kavi Nazrul and Sahid Khudiram Merto', 'Coimbtore', 'West Bengal', 'India', '700084', '5341351351', 'fjhfj@hvjh.vj', '170', 'ORDER1530652732170', 12, '2018-07-03 21:18:53'),
(217, 'Test Account', '', '', '1', '', '1', '', '', '', '', '', 66, '2018-07-04 05:05:57'),
(218, 'user', 'asadsa', 'eegrfrg', 'Coimbtore', 'dfsrf', 'India', '434534', '1234567890', 'user@laravelecommerce.com', '171', 'ORDER1530682093171', 12, '2018-07-04 05:28:13'),
(219, 'sathosh', 'santhoshpofiteccom', '134gaNDHIPURAM', 'Coimbtore', 'Tamil Nadu', 'India', '641022', '8300687371', 'santhosh@pofitec.com', '175', 'ORDER1530710839175', 12, '2018-07-04 13:27:19'),
(220, 'Sagar', '', '', '1', '', '1', '', '', '', '', '', 68, '2018-07-05 11:09:47'),
(221, 'fhcjc', '', '', '2', '', '1', '', '', '', '', '', 69, '2018-07-07 04:25:39'),
(222, 'user', 'vhjvh', 'jjjvjvjvjv', 'Coimbtore', 'bihar', 'India', '800001', '7004500011', 'user@laravelecommerce.com', '178', 'ORDER1530938113178', 12, '2018-07-07 04:35:13'),
(223, 'chamapk', '', '', '2', '', '1', '', '', '', '', '', 70, '2018-07-07 05:49:32'),
(224, 'Test', 'Testing', 'Testing', 'Coimbtore', 'TN', 'India', '641010', '9638527410', 'ishwarya@gmail.com', '179', 'ORDER1YvFbdPh', 37, '2018-07-07 06:41:51'),
(225, 'Invento', '', '', '1', '', '1', '', '', '', '', '', 71, '2018-07-07 06:48:05'),
(226, 'user', 'gfhfgh', 'hgfh', 'Coimbtore', 'fgfdg', 'India', '456756', '1234567890', 'user@laravelecommerce.com', '181', 'ORDER1531066134181', 12, '2018-07-08 16:08:55'),
(227, 'I ', '', '', '3', '', '3', '', '', '', '', '', 72, '2018-07-09 08:46:23'),
(228, 'Test', 'Testing', 'Testing', 'Coimbtore', 'TN', 'India', '641010', '9638527410', 'ishwarya@gmail.com', '182', 'ORDER2DXd4Zqy', 37, '2018-07-09 09:32:23'),
(229, 'Tuan', 'hello', 'hello', '2', 'snans kkkkaaaa', '1', '84', '0986036164', 'vantuantran@gmail.com', '', '', 73, '2018-07-10 04:49:24'),
(230, 'Tuan', 'hello', 'hello', 'chennai', 'snans kkkkaaaa', 'India', '84', '0986036164', 'vantuantran@gmail.com', '183', 'ORDERGbX7sgoh', 73, '2018-07-10 04:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `nm_size`
--

CREATE TABLE `nm_size` (
  `si_id` smallint(5) UNSIGNED NOT NULL,
  `si_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_size`
--

INSERT INTO `nm_size` (`si_id`, `si_name`) VALUES
(1, '10'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'S'),
(6, '20'),
(7, 'XXL'),
(8, 'SF'),
(9, 'XXXL'),
(10, '30'),
(11, 'no size'),
(12, '21');

-- --------------------------------------------------------

--
-- Table structure for table `nm_smtp`
--

CREATE TABLE `nm_smtp` (
  `sm_id` tinyint(4) NOT NULL,
  `sm_host` varchar(150) NOT NULL,
  `sm_port` varchar(20) NOT NULL,
  `sm_uname` varchar(30) NOT NULL,
  `sm_pwd` varchar(30) NOT NULL,
  `sm_isactive` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_social_media`
--

CREATE TABLE `nm_social_media` (
  `sm_id` int(11) NOT NULL,
  `sm_fb_app_id` varchar(100) NOT NULL,
  `sm_fb_sec_key` varchar(100) NOT NULL,
  `sm_fb_page_url` varchar(250) NOT NULL,
  `sm_fb_like_page_url` varchar(250) NOT NULL,
  `sm_twitter_url` varchar(250) NOT NULL,
  `sm_twitter_app_id` varchar(250) NOT NULL,
  `sm_twitter_sec_key` varchar(250) NOT NULL,
  `sm_linkedin_url` varchar(250) NOT NULL,
  `sm_youtube_url` varchar(250) NOT NULL,
  `sm_gmap_app_key` varchar(250) NOT NULL,
  `sm_android_page_url` varchar(250) NOT NULL,
  `sm_iphone_url` varchar(250) NOT NULL,
  `sm_analytics_code` text NOT NULL,
  `sm_gl_client_id` varchar(250) NOT NULL,
  `sm_gl_sec_key` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_social_media`
--

INSERT INTO `nm_social_media` (`sm_id`, `sm_fb_app_id`, `sm_fb_sec_key`, `sm_fb_page_url`, `sm_fb_like_page_url`, `sm_twitter_url`, `sm_twitter_app_id`, `sm_twitter_sec_key`, `sm_linkedin_url`, `sm_youtube_url`, `sm_gmap_app_key`, `sm_android_page_url`, `sm_iphone_url`, `sm_analytics_code`, `sm_gl_client_id`, `sm_gl_sec_key`) VALUES
(1, '2061310464145758', '2bf864193bf35640985298f43f40ad44', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'dsf1dsfsd232d1f21dsf21ds2f1dsf', 'sd2f1sd2f13sfgsd543df3ds1fds1f', 'https://www.facebook.com', 'https://www.facebook.com', 'AIzaSyCsDoY1OPjAqu1PlQhH3UljYsfw-81bLkI', '', '', '<script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-62671250-4\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n</script>', '782885230420-rbpe9m9044krsto1dqchhr3p6am81ggh.apps.googleusercontent.com', 'O40k7cbT7lnLaESYQ0npsY5c');

-- --------------------------------------------------------

--
-- Table structure for table `nm_specification`
--

CREATE TABLE `nm_specification` (
  `sp_id` smallint(5) UNSIGNED NOT NULL,
  `sp_name` text NOT NULL,
  `sp_name_fr` text NOT NULL,
  `sp_spg_id` smallint(5) UNSIGNED NOT NULL,
  `sp_order` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_specification`
--

INSERT INTO `nm_specification` (`sp_id`, `sp_name`, `sp_name_fr`, `sp_spg_id`, `sp_order`) VALUES
(1, 'Test', '', 1, 2),
(2, 'TEST1', '', 1, 2),
(3, 'Hono 9 lite', '', 2, 1),
(4, 'i phone x', '', 3, 2),
(5, 'Shiffon', '', 4, 3),
(6, 'Blue', '', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nm_spgroup`
--

CREATE TABLE `nm_spgroup` (
  `spg_id` smallint(5) UNSIGNED NOT NULL,
  `spg_name` varchar(150) NOT NULL,
  `spg_name_fr` varchar(500) NOT NULL,
  `spg_order` smallint(6) NOT NULL,
  `sp_mc_id` int(11) NOT NULL,
  `sp_smc_id` int(11) NOT NULL,
  `show_on_filter` enum('0','1') NOT NULL COMMENT '0:No;1:yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_spgroup`
--

INSERT INTO `nm_spgroup` (`spg_id`, `spg_name`, `spg_name_fr`, `spg_order`, `sp_mc_id`, `sp_smc_id`, `show_on_filter`) VALUES
(1, 'Test', '', 1, 1, 1, '1'),
(2, 'Honor', '', 2, 4, 9, '1'),
(3, 'i phone', '', 3, 4, 9, '1'),
(4, 'Synthetic Saree', '', 4, 2, 3, '1'),
(5, 'Denim', '', 5, 3, 6, '0');

-- --------------------------------------------------------

--
-- Table structure for table `nm_store`
--

CREATE TABLE `nm_store` (
  `stor_id` int(10) UNSIGNED NOT NULL,
  `stor_merchant_id` int(10) NOT NULL,
  `stor_name` varchar(100) NOT NULL,
  `stor_name_fr` varchar(100) NOT NULL,
  `stor_phone` varchar(20) NOT NULL,
  `stor_address1` varchar(150) NOT NULL,
  `stor_address1_fr` varchar(200) NOT NULL,
  `stor_address2` varchar(150) NOT NULL,
  `stor_address2_fr` varchar(200) NOT NULL,
  `stor_country` smallint(5) UNSIGNED NOT NULL,
  `stor_city` int(10) UNSIGNED NOT NULL,
  `stor_zipcode` varchar(20) NOT NULL,
  `stor_metakeywords` text NOT NULL,
  `stor_metakeywords_fr` text NOT NULL,
  `stor_metadesc` text NOT NULL,
  `stor_metadesc_fr` text NOT NULL,
  `stor_website` text NOT NULL,
  `stor_latitude` decimal(18,14) NOT NULL,
  `stor_longitude` decimal(18,14) NOT NULL,
  `stor_img` varchar(200) NOT NULL,
  `stor_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>unblock,0=>block',
  `created_date` varchar(20) NOT NULL,
  `stor_addedby` int(5) NOT NULL DEFAULT '1' COMMENT '1-admin,2 -merchant',
  `store_city_status` char(1) NOT NULL DEFAULT 'A',
  `promote_status` tinyint(4) NOT NULL,
  `stor_slogan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_store`
--

INSERT INTO `nm_store` (`stor_id`, `stor_merchant_id`, `stor_name`, `stor_name_fr`, `stor_phone`, `stor_address1`, `stor_address1_fr`, `stor_address2`, `stor_address2_fr`, `stor_country`, `stor_city`, `stor_zipcode`, `stor_metakeywords`, `stor_metakeywords_fr`, `stor_metadesc`, `stor_metadesc_fr`, `stor_website`, `stor_latitude`, `stor_longitude`, `stor_img`, `stor_status`, `created_date`, `stor_addedby`, `store_city_status`, `promote_status`, `stor_slogan`) VALUES
(1, 1, 'Aldo', '', '9874569874', 'store add-1', '', 'store add-2', '', 1, 1, '641010', 'Aldo', '', 'Aldo', '', 'https://www.google.co.in/', '11.01684450000000', '76.95583209999995', 'Store_1527135534.png', 1, '05/03/2018', 1, 'A', 1, 'The Aldo Store'),
(2, 2, 'Crabtree ', '', '9876543210', 'front test', '', 'front test2', '', 1, 1, '641010', 'Crabtree ', '', 'Crabtree ', '', 'https://www.google.co.in/', '7.98591014355452', '80.73921674804683', 'Store_1527135348.png', 1, '05/03/2018', 1, 'A', 1, 'The Crabtree'),
(3, 3, 'Tech Store', '', '01234567890', 'ramnagar', '', 'gandhipuram', '', 1, 1, '641009', 'Tech Store', '', 'Tech Store', '', 'http://www.demo.laravelecommerce.com', '11.03567115521433', '76.96541303710933', 'Store_1527133843.jpg', 1, '05/24/2018', 1, 'A', 1, ''),
(4, 4, 'mobile store', '', '996633225', 'mstore add1', '', 'mstore add2', '', 1, 1, '64110', '', '', '', '', 'https://www.google.co.in/', '7.93694817961415', '80.73372358398433', 'Store_1527742924.jpg', 1, '05/31/2018', 1, 'A', 0, ''),
(5, 5, 'ARUN MORRISVILLE  STORE ', '', '9198892630', 'davis dr', '', 'FF', '', 3, 4, '27560', 'metaaaa', '', 'DESC', '', 'http://www.globalpointmall.com', '7.98591014355452', '80.73921674804683', 'Store_1527770403_Store_1516713562_455 378.jpg', 1, '05/31/2018', 1, 'A', 1, ''),
(6, 6, 'new ios store', '', '09632587410', 'szdf', '', 'zd', '', 1, 2, '641010', '', '', '', '', 'https://demo.laravelecommerce.com/', '11.01684450000000', '76.95583209999995', 'Store_1528894199.jpg', 1, '06/13/2018', 1, 'A', 0, ''),
(7, 7, 'testing', '', '09632587410', 'test', '', 'test', '', 1, 2, '641010', '', '', '', '', 'https://demo.laravelecommerce.com/', '7.98047021452896', '80.73372358398433', 'Store_1528980746.jpg', 1, '06/14/2018', 1, 'A', 0, ''),
(8, 8, 'new testing', '', '09632587410', 'szdf', '', 'zd', '', 1, 1, '641010', '', '', '', '', 'https://demo.laravelecommerce.com/', '10.98449113876404', '76.95995197304683', 'Store_1529042081.jpg', 1, '06/15/2018', 1, 'A', 0, ''),
(9, 9, 'fun store', '', '789561584', 'dfdfs', '', 'fsdf', '', 1, 2, '213545', 'sfdfds', '', 'sf', '', 'https://www.google.co.in/', '34.05223420000000', '-118.24368490000000', 'Store_1529654091.png', 1, '06/22/2018', 1, 'A', 0, ''),
(10, 10, 'recheck', '', '9874563210', 'trrr', '', 'uyyy', '', 1, 2, '641010', '', '', '', '', 'https://www.google.co.in/', '11.01684450000000', '76.95583209999995', 'Store_1529662716.jpg', 1, '06/22/2018', 1, 'A', 0, ''),
(11, 11, 'today', '', '9874547890', 'Test', '', 'Testing', '', 1, 1, '641010', 'test', '', 'test', '', 'https://www.google.co.in/', '11.01684450000000', '76.95583209999995', 'Store_1529735026.jpg', 1, '06/23/2018', 1, 'A', 0, ''),
(12, 12, 'android', '', '9632587410', 'test', '', 'test', '', 1, 2, '641010', '', '', '', '', 'https://www.google.co.in/', '7.96551003649077', '80.73921674804683', 'Store_1530093654.jpg', 1, '06/27/2018', 1, 'A', 0, ''),
(13, 13, 'front store', '', '96325877410', 'ram nagar store add 1', '', 'store add 1', '', 1, 1, '641010', 'test', '', 'test', '', 'https://www.google.co.in/', '7.98591014355452', '80.73921674804683', 'Store_1530527729_455 378-147.jpg', 1, '07/02/2018', 1, 'A', 0, ''),
(14, 14, 'Selma Wynn', '', '9898989898', 'cbe', '', 's', '', 1, 2, '641011', 'Officiis dignissimos velit ut laborum', '', 'Labore illum repellendus Asperiores voluptas officia quasi et', '', 'http://www.nigaweb.co.uk', '11.19144740000000', '77.26888209999993', 'Store_1530701249.jpg', 1, '07/04/2018', 1, 'A', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nm_subcategory`
--

CREATE TABLE `nm_subcategory` (
  `sb_id` smallint(5) UNSIGNED NOT NULL,
  `sb_name` varchar(100) NOT NULL,
  `sb_name_fr` varchar(100) NOT NULL,
  `sc_img` varchar(250) NOT NULL,
  `sb_smc_id` smallint(5) UNSIGNED NOT NULL,
  `mc_id` smallint(5) UNSIGNED NOT NULL,
  `sb_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_subcategory`
--

INSERT INTO `nm_subcategory` (`sb_id`, `sb_name`, `sb_name_fr`, `sc_img`, `sb_smc_id`, `mc_id`, `sb_status`) VALUES
(1, '111-a', '', 'Sup_category_1527773166_download.png', 16, 7, 1),
(2, 'test sub 1', '', 'Sup_category_1528980640_200 200-11.jpg', 20, 9, 1),
(3, 'test123', '', 'Sup_category_1529041952_200 200-1234.jpg', 22, 10, 1),
(4, 'The Letter of Marque', '', 'Sup_category_1530092941_200 200-11.jpg', 24, 11, 1),
(5, 'Sub category 1', '', 'Sup_category_1530945888_200 200-1234.jpg', 26, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nm_subscription`
--

CREATE TABLE `nm_subscription` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `sub_cus_id` int(10) UNSIGNED NOT NULL COMMENT 'customer id',
  `sub_mc_id` smallint(5) UNSIGNED NOT NULL,
  `sub_status` tinyint(4) NOT NULL,
  `sub_readstatus` int(11) NOT NULL DEFAULT '0' COMMENT '-not read 1 read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_terms`
--

CREATE TABLE `nm_terms` (
  `tr_id` int(11) NOT NULL,
  `tr_description` text NOT NULL,
  `tr_description_fr` longtext NOT NULL,
  `tr_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_terms`
--

INSERT INTO `nm_terms` (`tr_id`, `tr_description`, `tr_description_fr`, `tr_date`) VALUES
(1, '<b>Introduction</b><br>These terms and conditions govern your use of <a href=\"http://http://www.rapamber.com/\" target=\"\" rel=\"\">http://www.rapamber.com/</a>; by using this website, you accept these terms and conditions in full. If you disagree with these terms and conditions or any part of these terms and conditions, you must not use this website.<br>You must be at least 18 years of age to use this website. By using this website and by agreeing to these terms and conditions you warrant and represent that you are at least 18 years of age.<br>This website uses cookies. By using this website and agreeing to these terms and conditions, you consent to use of cookies in accordance with the terms of <a href=\"http://www.laravelecommerce.com\" target=\"\" rel=\"\">www.laravelecommerce.com</a><br>\r\n             <b>LICENSE TO USE WEBSITE</b><br>Unless otherwise stated, Laravel Ecommerce and/or its licensors own the intellectual property rights in the website and material on the website. Subject to the license below, all these intellectual property rights are reserved.<br>You may view, download for caching purposes only, and print pages [or [OTHER CONTENT]] from the website for your own personal use, subject to the restrictions set out below and elsewhere in these terms and conditions.<br><br>YOU MUST NOT:&nbsp;&nbsp; <br><ul><li>Sell, rent or sub license material from the website;</li><li>Show any material from the website in public;</li><li>Reproduce, duplicate, copy or otherwise exploit material on this website for a commercial purpose;</li><li>Edit or otherwise modify any material on the website;</li><li>Redistribute material from this website.</li></ul><b>ACCEPTABLE USE </b><ul><li>You must not use this website in any way that causes, or may cause, damage to the website or impairment of the availability or accessibility of the website; or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity.</li><li>You must not use this website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software.</li><li>You must not conduct any systematic or automated data collection activities (including without limitation scraping, data mining, data extraction and data harvesting) on or in relation to this website without Laravel Ecommerce’s express written consent.</li><li>You must not use this website to transmit or send unsolicited commercial communications.</li><li>You must not use this website for any purposes related to marketing without Laravel Ecommerce’s express written consent.</li></ul><b>RESTRICTED ACCESS </b><br>[Access to certain areas of this website is restricted.] Laravel Ecommerce’s reserves the right to restrict access to [other] areas of this website, or indeed this entire website, at Laravel Ecommerce discretion.<br>If Laravel Ecommerce’s provides you with a user ID and password to enable you to access restricted areas of this website or other content or services, you must ensure that the user ID and password are kept confidential.<br>Laravel Ecommerce’s may disable your user ID and password in Laravel Ecommerce’s sole discretion without notice or explanation.]<br><br><b>USER CONTENT</b> <br>In these terms and conditions, “your user content” means material (including without limitation text, images, audio material, video material and audio-visual material) that you submit to this website, for whatever purpose.<br>You grant to Laravel Ecommerce a worldwide, irrevocable, non-exclusive, royalty-free license to use, reproduce, adapt, publish, translate and distribute your user content in any existing or future media. You also grant to the right to sub-license these rights, and the right to bring an action for infringement of these rights.<br>Your user content must not be illegal or unlawful, must not infringe any third party’s legal rights, and must not be capable of giving rise to legal action whether against you or Laravel Ecommerce or a third party.<br>You must not submit any user content to the website that is or has ever been the subject of any threatened or actual legal proceedings or other similar complaint.<br>Laravel Ecommerce reserves the right to edit or remove any material submitted to this website, or stored on Laravel Ecommerce’s servers, or hosted or published upon this website. <br><br><b>LIMITATIONS OF LIABILITY</b> <br>Laravel Ecommerce will not be liable to you (whether under the law of contact, the law of torts or otherwise) in relation to the contents of, or use of, or otherwise in connection with, this website:<br>For any indirect, special or consequential loss; or For any business losses, loss of revenue, income, profits or anticipated savings, loss of contracts or business relationships, loss of reputation or goodwill, or loss or corruption of information or data.<br>These limitations of liability apply even if Laravel Ecommerce has been expressly advised of the potential loss.<br><br><b>REASONABLENESS</b> <br>By using this website, you agree that the exclusions and limitations of liability set out in this website disclaimer are reasonable.<br>If you do not think they are reasonable, you must not use this website.<br><br><b>UNENFORCEABLE PROVISIONS<br></b>&nbsp;If any provision of this website disclaimer is, or is found to be, unenforceable under applicable law, that will not affect the enforceability of the other provisions of this website disclaimer.<br><br><b>BREACHES OF THESE TERMS AND CONDITIONS<br></b>&nbsp;Without prejudice to Laravel Ecommerce’s other rights under these terms and conditions, if you breach these terms and conditions in any way, Laravel Ecommerce may take such action as Laravel Ecommerce deems appropriate to deal with the breach, including suspending your access to this website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.<br><br><b>VARIATION<br></b>&nbsp;Laravel Ecommerce may revise these terms and conditions from time-to-time. Revised terms and conditions will apply to the use of this website from the date of the publication of the revised terms and conditions on this website. Please check this page regularly to ensure you are familiar with the current version.<br><br><b>ASSIGNMENT<br></b>&nbsp;Laravel Ecommerce may transfer, sub-contract or otherwise deal with Laravel Ecommerce rights and/or obligations under these terms and conditions without notifying you or obtaining your consent.<br>You may not transfer, sub-contract or otherwise deal with your rights and/or obligations under these terms and conditions.<br><br><b>SEVERABILITY<br></b>&nbsp;If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect. If any unlawful and/or unenforceable provision would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.<br><br><b>LAW AND JURISDICTION<br></b>&nbsp;These terms and conditions will be governed by and construed in accordance with Indian law, and any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of Coimbatore.<br><br><br><br>', 'introduction\r\nCes termes et conditions régissent votre utilisation de http://www.rapamber.com/; En utilisant ce site, vous acceptez ces termes et conditions dans leur intégralité. Si vous n\'êtes pas d\'accord avec ces termes et conditions ou une partie de ces termes et conditions, vous ne devez pas utiliser ce site.\r\nVous devez avoir au moins 18 ans pour utiliser ce site. En utilisant ce site et en acceptant ces termes et conditions, vous garantissez et vous déclare que vous avez au moins 18 ans.\r\nCe site utilise des cookies. En utilisant ce site et en acceptant ces termes et conditions, vous consentez à utiliser des cookies conformément aux termes de www.laravelecommerce.com\r\nLICENCE D\'UTILISATION DU SITE WEB\r\nSauf indication contraire, Laravel Ecommerce et / ou ses concédants possèdent les droits de propriété intellectuelle sur le site et le matériel sur le site. Sous réserve de la licence ci-dessous, tous ces droits de propriété intellectuelle sont réservés.\r\nVous pouvez visualiser, télécharger uniquement à des fins de mise en cache et imprimer des pages [ou [AUTRES CONTENUS]] à partir du site Web pour votre propre usage, sous réserve des restrictions énoncées ci-dessous et ailleurs dans ces termes et conditions.', '2017-12-09 09:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `nm_theme`
--

CREATE TABLE `nm_theme` (
  `the_id` smallint(5) UNSIGNED NOT NULL,
  `the_Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nm_wishlist`
--

CREATE TABLE `nm_wishlist` (
  `ws_id` bigint(20) UNSIGNED NOT NULL,
  `ws_pro_id` bigint(20) UNSIGNED NOT NULL,
  `ws_cus_id` bigint(20) UNSIGNED NOT NULL,
  `ws_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_wishlist`
--

INSERT INTO `nm_wishlist` (`ws_id`, `ws_pro_id`, `ws_cus_id`, `ws_date`) VALUES
(1, 1, 1, '2018-05-03 10:45:20'),
(2, 3, 1, '2018-05-03 11:58:59'),
(3, 6, 2, '2018-05-12 11:27:32'),
(9, 6, 9, '2018-05-24 11:56:35'),
(11, 1, 24, '2018-05-31 05:29:02'),
(12, 4, 24, '2018-05-31 05:29:04'),
(13, 2, 24, '2018-05-31 05:29:06'),
(14, 3, 24, '2018-05-31 05:29:07'),
(15, 8, 24, '2018-05-31 05:29:09'),
(18, 12, 26, '2018-05-31 07:44:35'),
(21, 6, 12, '2018-06-08 07:44:32'),
(22, 11, 12, '2018-06-08 10:30:20'),
(24, 34, 30, '2018-06-13 13:05:00'),
(25, 35, 30, '2018-06-13 13:05:01'),
(27, 34, 31, '2018-06-14 13:21:41'),
(28, 38, 34, '2018-06-15 06:06:59'),
(29, 4, 12, '2018-06-18 10:24:56'),
(30, 9, 12, '2018-06-18 11:09:44'),
(33, 3, 45, '2018-06-20 05:43:12'),
(34, 7, 45, '2018-06-20 05:43:17'),
(35, 40, 52, '2018-06-23 06:29:59'),
(36, 34, 52, '2018-06-23 06:52:22'),
(37, 22, 12, '2018-07-03 10:07:24'),
(38, 5, 12, '2018-07-03 10:07:39'),
(39, 45, 12, '2018-07-08 18:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `nm_withdraw_request`
--

CREATE TABLE `nm_withdraw_request` (
  `wd_id` int(11) NOT NULL,
  `wd_mer_id` int(11) NOT NULL,
  `wd_total_wd_amt` decimal(10,2) NOT NULL,
  `wd_submited_wd_amt` decimal(10,2) NOT NULL,
  `wd_status` int(11) NOT NULL COMMENT '1 => paid, 0=> Hold',
  `wd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nm_withdraw_request`
--

INSERT INTO `nm_withdraw_request` (`wd_id`, `wd_mer_id`, `wd_total_wd_amt`, `wd_submited_wd_amt`, `wd_status`, `wd_date`) VALUES
(1, 1, '17316.50', '500.00', 0, '2018-05-25 06:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `nm_withdraw_request_paypal`
--

CREATE TABLE `nm_withdraw_request_paypal` (
  `wr_id` int(11) NOT NULL,
  `wr_mer_id` int(11) NOT NULL,
  `wr_mer_name` varchar(250) NOT NULL,
  `wr_mer_payment_email` varchar(250) NOT NULL,
  `wr_paid_amount` varchar(250) NOT NULL,
  `wr_txn_id` varchar(250) NOT NULL,
  `wr_status` varchar(100) NOT NULL,
  `wr_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_status_chat`
--
ALTER TABLE `delivery_status_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `nm_aboutus`
--
ALTER TABLE `nm_aboutus`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `nm_add`
--
ALTER TABLE `nm_add`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `nm_admin`
--
ALTER TABLE `nm_admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `nm_adminreply_comments`
--
ALTER TABLE `nm_adminreply_comments`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `nm_auction`
--
ALTER TABLE `nm_auction`
  ADD PRIMARY KEY (`auc_id`);

--
-- Indexes for table `nm_banner`
--
ALTER TABLE `nm_banner`
  ADD PRIMARY KEY (`bn_id`);

--
-- Indexes for table `nm_blog`
--
ALTER TABLE `nm_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `nm_blogsetting`
--
ALTER TABLE `nm_blogsetting`
  ADD PRIMARY KEY (`bs_id`);

--
-- Indexes for table `nm_blog_cus_comments`
--
ALTER TABLE `nm_blog_cus_comments`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Indexes for table `nm_category_ad`
--
ALTER TABLE `nm_category_ad`
  ADD PRIMARY KEY (`cat_ad_id`);

--
-- Indexes for table `nm_category_banner`
--
ALTER TABLE `nm_category_banner`
  ADD PRIMARY KEY (`cat_bn_id`);

--
-- Indexes for table `nm_city`
--
ALTER TABLE `nm_city`
  ADD PRIMARY KEY (`ci_id`);

--
-- Indexes for table `nm_cms_pages`
--
ALTER TABLE `nm_cms_pages`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `nm_cod_commission_paid`
--
ALTER TABLE `nm_cod_commission_paid`
  ADD PRIMARY KEY (`comPaid_id`);

--
-- Indexes for table `nm_cod_commission_tracking`
--
ALTER TABLE `nm_cod_commission_tracking`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `nm_color`
--
ALTER TABLE `nm_color`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `nm_contact`
--
ALTER TABLE `nm_contact`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `nm_country`
--
ALTER TABLE `nm_country`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `nm_coupon`
--
ALTER TABLE `nm_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nm_coupon_purchage`
--
ALTER TABLE `nm_coupon_purchage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nm_currency`
--
ALTER TABLE `nm_currency`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indexes for table `nm_customer`
--
ALTER TABLE `nm_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `nm_deals`
--
ALTER TABLE `nm_deals`
  ADD PRIMARY KEY (`deal_id`);

--
-- Indexes for table `nm_emailsetting`
--
ALTER TABLE `nm_emailsetting`
  ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `nm_enquiry`
--
ALTER TABLE `nm_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nm_estimate_zipcode`
--
ALTER TABLE `nm_estimate_zipcode`
  ADD PRIMARY KEY (`ez_id`);

--
-- Indexes for table `nm_faq`
--
ALTER TABLE `nm_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `nm_generalsetting`
--
ALTER TABLE `nm_generalsetting`
  ADD PRIMARY KEY (`gs_id`);

--
-- Indexes for table `nm_imagesetting`
--
ALTER TABLE `nm_imagesetting`
  ADD PRIMARY KEY (`imgs_id`);

--
-- Indexes for table `nm_image_sizes`
--
ALTER TABLE `nm_image_sizes`
  ADD PRIMARY KEY (`image_size_id`);

--
-- Indexes for table `nm_inquiries`
--
ALTER TABLE `nm_inquiries`
  ADD PRIMARY KEY (`iq_id`);

--
-- Indexes for table `nm_language`
--
ALTER TABLE `nm_language`
  ADD UNIQUE KEY `id` (`lang_id`);

--
-- Indexes for table `nm_login`
--
ALTER TABLE `nm_login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `nm_maincategory`
--
ALTER TABLE `nm_maincategory`
  ADD PRIMARY KEY (`mc_id`),
  ADD KEY `mc_status` (`mc_status`);

--
-- Indexes for table `nm_merchant`
--
ALTER TABLE `nm_merchant`
  ADD PRIMARY KEY (`mer_id`),
  ADD KEY `mer_pro_status` (`mer_pro_status`),
  ADD KEY `mer_staus` (`mer_staus`),
  ADD KEY `mer_co_id` (`mer_co_id`),
  ADD KEY `mer_ci_id` (`mer_ci_id`),
  ADD KEY `mer_logintype` (`mer_logintype`);

--
-- Indexes for table `nm_merchant_overallorders`
--
ALTER TABLE `nm_merchant_overallorders`
  ADD PRIMARY KEY (`overOrd_id`);

--
-- Indexes for table `nm_modulesettings`
--
ALTER TABLE `nm_modulesettings`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `nm_newsletter_subscribers`
--
ALTER TABLE `nm_newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nm_order`
--
ALTER TABLE `nm_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_cus_id` (`order_cus_id`,`order_pro_id`,`order_status`,`delivery_status`);

--
-- Indexes for table `nm_ordercod`
--
ALTER TABLE `nm_ordercod`
  ADD PRIMARY KEY (`cod_id`);

--
-- Indexes for table `nm_order_auction`
--
ALTER TABLE `nm_order_auction`
  ADD PRIMARY KEY (`oa_id`);

--
-- Indexes for table `nm_order_delivery_status`
--
ALTER TABLE `nm_order_delivery_status`
  ADD PRIMARY KEY (`delStatus_id`);

--
-- Indexes for table `nm_order_payu`
--
ALTER TABLE `nm_order_payu`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_cus_id` (`order_cus_id`,`order_pro_id`,`order_status`,`delivery_status`);

--
-- Indexes for table `nm_paymentsettings`
--
ALTER TABLE `nm_paymentsettings`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `nm_procart`
--
ALTER TABLE `nm_procart`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `nm_procolor`
--
ALTER TABLE `nm_procolor`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `nm_product`
--
ALTER TABLE `nm_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `nm_prosize`
--
ALTER TABLE `nm_prosize`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `nm_prospec`
--
ALTER TABLE `nm_prospec`
  ADD PRIMARY KEY (`spc_id`);

--
-- Indexes for table `nm_referaluser`
--
ALTER TABLE `nm_referaluser`
  ADD PRIMARY KEY (`ruse_id`);

--
-- Indexes for table `nm_review`
--
ALTER TABLE `nm_review`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `nm_save_cart`
--
ALTER TABLE `nm_save_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `nm_secmaincategory`
--
ALTER TABLE `nm_secmaincategory`
  ADD PRIMARY KEY (`smc_id`),
  ADD KEY `smc_status` (`smc_status`),
  ADD KEY `smc_mc_id` (`smc_mc_id`);

--
-- Indexes for table `nm_secsubcategory`
--
ALTER TABLE `nm_secsubcategory`
  ADD PRIMARY KEY (`ssb_id`),
  ADD KEY `ssb_status` (`ssb_status`),
  ADD KEY `ssb_sb_id` (`ssb_sb_id`),
  ADD KEY `ssb_smc_id` (`ssb_smc_id`),
  ADD KEY `mc_id` (`mc_id`);

--
-- Indexes for table `nm_shipping`
--
ALTER TABLE `nm_shipping`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `nm_size`
--
ALTER TABLE `nm_size`
  ADD PRIMARY KEY (`si_id`);

--
-- Indexes for table `nm_smtp`
--
ALTER TABLE `nm_smtp`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `nm_social_media`
--
ALTER TABLE `nm_social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `nm_specification`
--
ALTER TABLE `nm_specification`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `nm_spgroup`
--
ALTER TABLE `nm_spgroup`
  ADD PRIMARY KEY (`spg_id`);

--
-- Indexes for table `nm_store`
--
ALTER TABLE `nm_store`
  ADD PRIMARY KEY (`stor_id`),
  ADD KEY `stor_merchant_id` (`stor_merchant_id`),
  ADD KEY `stor_status` (`stor_status`);

--
-- Indexes for table `nm_subcategory`
--
ALTER TABLE `nm_subcategory`
  ADD PRIMARY KEY (`sb_id`);

--
-- Indexes for table `nm_subscription`
--
ALTER TABLE `nm_subscription`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `nm_terms`
--
ALTER TABLE `nm_terms`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `nm_theme`
--
ALTER TABLE `nm_theme`
  ADD PRIMARY KEY (`the_id`);

--
-- Indexes for table `nm_wishlist`
--
ALTER TABLE `nm_wishlist`
  ADD PRIMARY KEY (`ws_id`);

--
-- Indexes for table `nm_withdraw_request`
--
ALTER TABLE `nm_withdraw_request`
  ADD PRIMARY KEY (`wd_id`);

--
-- Indexes for table `nm_withdraw_request_paypal`
--
ALTER TABLE `nm_withdraw_request_paypal`
  ADD PRIMARY KEY (`wr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_status_chat`
--
ALTER TABLE `delivery_status_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_aboutus`
--
ALTER TABLE `nm_aboutus`
  MODIFY `ap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_add`
--
ALTER TABLE `nm_add`
  MODIFY `ad_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nm_admin`
--
ALTER TABLE `nm_admin`
  MODIFY `adm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_adminreply_comments`
--
ALTER TABLE `nm_adminreply_comments`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_auction`
--
ALTER TABLE `nm_auction`
  MODIFY `auc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nm_banner`
--
ALTER TABLE `nm_banner`
  MODIFY `bn_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nm_blog`
--
ALTER TABLE `nm_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nm_blogsetting`
--
ALTER TABLE `nm_blogsetting`
  MODIFY `bs_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_blog_cus_comments`
--
ALTER TABLE `nm_blog_cus_comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nm_category_ad`
--
ALTER TABLE `nm_category_ad`
  MODIFY `cat_ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nm_category_banner`
--
ALTER TABLE `nm_category_banner`
  MODIFY `cat_bn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nm_city`
--
ALTER TABLE `nm_city`
  MODIFY `ci_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nm_cms_pages`
--
ALTER TABLE `nm_cms_pages`
  MODIFY `cp_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nm_cod_commission_paid`
--
ALTER TABLE `nm_cod_commission_paid`
  MODIFY `comPaid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_cod_commission_tracking`
--
ALTER TABLE `nm_cod_commission_tracking`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_color`
--
ALTER TABLE `nm_color`
  MODIFY `co_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nm_contact`
--
ALTER TABLE `nm_contact`
  MODIFY `cont_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_country`
--
ALTER TABLE `nm_country`
  MODIFY `co_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nm_coupon`
--
ALTER TABLE `nm_coupon`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nm_coupon_purchage`
--
ALTER TABLE `nm_coupon_purchage`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_currency`
--
ALTER TABLE `nm_currency`
  MODIFY `cur_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_customer`
--
ALTER TABLE `nm_customer`
  MODIFY `cus_id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `nm_deals`
--
ALTER TABLE `nm_deals`
  MODIFY `deal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nm_emailsetting`
--
ALTER TABLE `nm_emailsetting`
  MODIFY `es_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_enquiry`
--
ALTER TABLE `nm_enquiry`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nm_estimate_zipcode`
--
ALTER TABLE `nm_estimate_zipcode`
  MODIFY `ez_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nm_faq`
--
ALTER TABLE `nm_faq`
  MODIFY `faq_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nm_generalsetting`
--
ALTER TABLE `nm_generalsetting`
  MODIFY `gs_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_imagesetting`
--
ALTER TABLE `nm_imagesetting`
  MODIFY `imgs_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nm_image_sizes`
--
ALTER TABLE `nm_image_sizes`
  MODIFY `image_size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_inquiries`
--
ALTER TABLE `nm_inquiries`
  MODIFY `iq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_language`
--
ALTER TABLE `nm_language`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nm_login`
--
ALTER TABLE `nm_login`
  MODIFY `log_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `nm_maincategory`
--
ALTER TABLE `nm_maincategory`
  MODIFY `mc_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nm_merchant`
--
ALTER TABLE `nm_merchant`
  MODIFY `mer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nm_merchant_overallorders`
--
ALTER TABLE `nm_merchant_overallorders`
  MODIFY `overOrd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nm_modulesettings`
--
ALTER TABLE `nm_modulesettings`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_newsletter_subscribers`
--
ALTER TABLE `nm_newsletter_subscribers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nm_order`
--
ALTER TABLE `nm_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `nm_ordercod`
--
ALTER TABLE `nm_ordercod`
  MODIFY `cod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `nm_order_auction`
--
ALTER TABLE `nm_order_auction`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_order_delivery_status`
--
ALTER TABLE `nm_order_delivery_status`
  MODIFY `delStatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nm_order_payu`
--
ALTER TABLE `nm_order_payu`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nm_paymentsettings`
--
ALTER TABLE `nm_paymentsettings`
  MODIFY `ps_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_procart`
--
ALTER TABLE `nm_procart`
  MODIFY `pc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_procolor`
--
ALTER TABLE `nm_procolor`
  MODIFY `pc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `nm_product`
--
ALTER TABLE `nm_product`
  MODIFY `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `nm_prosize`
--
ALTER TABLE `nm_prosize`
  MODIFY `ps_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `nm_prospec`
--
ALTER TABLE `nm_prospec`
  MODIFY `spc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `nm_referaluser`
--
ALTER TABLE `nm_referaluser`
  MODIFY `ruse_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_review`
--
ALTER TABLE `nm_review`
  MODIFY `comment_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nm_save_cart`
--
ALTER TABLE `nm_save_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `nm_secmaincategory`
--
ALTER TABLE `nm_secmaincategory`
  MODIFY `smc_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `nm_secsubcategory`
--
ALTER TABLE `nm_secsubcategory`
  MODIFY `ssb_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nm_shipping`
--
ALTER TABLE `nm_shipping`
  MODIFY `ship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `nm_size`
--
ALTER TABLE `nm_size`
  MODIFY `si_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nm_smtp`
--
ALTER TABLE `nm_smtp`
  MODIFY `sm_id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_social_media`
--
ALTER TABLE `nm_social_media`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_specification`
--
ALTER TABLE `nm_specification`
  MODIFY `sp_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nm_spgroup`
--
ALTER TABLE `nm_spgroup`
  MODIFY `spg_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nm_store`
--
ALTER TABLE `nm_store`
  MODIFY `stor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nm_subcategory`
--
ALTER TABLE `nm_subcategory`
  MODIFY `sb_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nm_subscription`
--
ALTER TABLE `nm_subscription`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_terms`
--
ALTER TABLE `nm_terms`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_theme`
--
ALTER TABLE `nm_theme`
  MODIFY `the_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nm_wishlist`
--
ALTER TABLE `nm_wishlist`
  MODIFY `ws_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `nm_withdraw_request`
--
ALTER TABLE `nm_withdraw_request`
  MODIFY `wd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nm_withdraw_request_paypal`
--
ALTER TABLE `nm_withdraw_request_paypal`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
