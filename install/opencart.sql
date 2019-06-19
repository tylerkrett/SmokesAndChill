--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'admin', 'admin', '', 'address', '', 'city', '12345', 2, 33, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(5, 'Default', '051iUhoAIo2SYTPQP2KYWWDc5IhpbdzdLFZpaJziuxsYgKZChj6wVTuCwiZ15Bqp6W8CuHg28DiikUwYpqO1PsdWUXQAAJfCAQylmJlDe1sUuG8fAzMNFuDlKU4wOnST7VUrMpCOQFnihNsq7fsAcskRPzSdiGCwswXBy6aisZf8n7tiTSJ3dAR60gCuWL4ZXjilHHXujZWTE7cG7XB5twKfRh2zByXbVgLLPkMvm4jVS8SjKzLaDhwjcTawODT5', 1, '2016-04-15 17:24:55', '2016-04-15 17:24:55'),
(6, 'Default', 'oq1pyZ7OfCmEIS5jYGe3mTdxKKtYCmjrRAEJ6TDbC4rKjt7ZYQyagJOq2HQMdyPeShm3jegYOSZvdOQxl8kVrYTv60w1tGumzh2e0zypGINZy5He5egHeFphiT8xTg1W0cl8KVQT1faZnobghm0zTV20IkLIKPh2MrxTa6HiFqiCkhS8mSK01BMPI1tVRPtnOz2fP42KvtKuttlxwnxS9vTU4tkJTLIPmh2Qa0P8uqnoKRkHsvn333armRlE5Y4B', 1, '2016-04-21 12:36:03', '2016-04-21 12:36:03'),
(7, 'Default', 'NMkrrrPLXOwDtjYwsJ7o2OmHHSAS4mg91gj4IXDj7EmXesfkQFElFA1TEhe70E0bbisb20O24oDK0SyRzSK3XD8YqwrMT5C3jh5BH4L44LUsD4JEiWx6NA0qfQxpytH5kUVlM91ZfBFUGDHkfT4gPVqiR9BHfhHgB7CekWpQH0pZrfnZiTQAq9CO81Y08eShl43aStnw4GwGuuLTI76cF2u8uUPZY49kmOlsVdpSbKZv4p90rfQ1T7xhsjCzGrf6', 1, '2016-07-11 17:39:20', '2016-07-11 17:39:20'),
(8, 'Default', 'EwmQRTFBDGMb96gOqxqKCzufI9rSLnCZGQS1xOg3W6kzaeYyrHR20cHbdB2R1WQSYDsQWxPdiedwC5XUOxmFW1IGBceUOtZSMZlv0CYffkylMI2xYnHwFvqTi6DppskHKhViLwmt5raMJ9Q7eHwJ52KwdCbFv1D0QwsW6cwouud7ID3HdEE28L1zz6SxxL0StfATsMvZaSfdA3GV91lkx3Lz3QPIAEuE8PTscvMfqkiwuMTAi11SMDFlzqJ5bZTQ', 1, '2017-06-01 16:55:23', '2017-06-01 16:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(3, 4, '192.168.9.13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 2, 'Attribute 2'),
(2, 2, 'Attribute 3'),
(4, 3, 'Attribute 6'),
(5, 3, 'Attribute 1'),
(6, 2, 'Attribute 8'),
(7, 3, 'Attribute 4'),
(8, 3, 'Attribute 5'),
(9, 3, 'Attribute 2'),
(10, 3, 'Attribute 7'),
(11, 3, 'Attribute 3'),
(3, 2, 'Attribute 1'),
(1, 3, 'Attribute 2'),
(2, 3, 'Attribute 3'),
(4, 2, 'Attribute 6'),
(5, 2, 'Attribute 1'),
(6, 1, 'Attribute 8'),
(7, 2, 'Attribute 4'),
(8, 2, 'Attribute 5'),
(9, 2, 'Attribute 2'),
(10, 2, 'Attribute 7'),
(11, 2, 'Attribute 3'),
(3, 3, 'Attribute 1'),
(3, 1, 'Attribute 1'),
(1, 1, 'Attribute 2'),
(2, 1, 'Attribute 3'),
(5, 1, 'Attribute 1'),
(9, 1, 'Attribute 2'),
(11, 1, 'Attribute 3'),
(7, 1, 'Attribute 4'),
(8, 1, 'Attribute 5'),
(4, 1, 'Attribute 6'),
(10, 1, 'Attribute 7'),
(6, 3, 'Attribute 8');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 2, 'Attribute group 2'),
(4, 2, 'Attribute group 1'),
(5, 3, 'Attribute group 3'),
(6, 1, 'Attribute group 4'),
(4, 3, 'Attribute group 1'),
(5, 2, 'Attribute group 3'),
(6, 2, 'Attribute group 4'),
(4, 1, 'Attribute group 1'),
(3, 1, 'Attribute group 2'),
(5, 1, 'Attribute group 3'),
(3, 3, 'Attribute group 2'),
(6, 3, 'Attribute group 4');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(10, 'Parallax-1', 1),
(15, 'Slideshow', 1),
(14, 'banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(169, 14, 'index.php?route=product/category&amp;path=20', 'catalog/banner-2.png', 2),
(168, 14, 'index.php?route=product/category&amp;path=25', 'catalog/banner-1.png', 1),
(188, 15, '', 'catalog/slide-3.jpg', 3),
(189, 10, '', 'catalog/parallax-1.jpg', 0),
(187, 15, '', 'catalog/slide-2.jpg', 2),
(186, 15, '', 'catalog/slide-1.jpg', 1),
(170, 14, 'index.php?route=product/category&amp;path=18', 'catalog/banner-3.png', 3),
(171, 14, 'index.php?route=product/category&amp;path=34', 'catalog/banner-4.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(188, 3, 15, 'slide-3', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=42&quot;&gt;read more&lt;/a&gt;\r\n'),
(188, 2, 15, 'slide-3', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=42&quot;&gt;read more&lt;/a&gt;\r\n'),
(188, 1, 15, 'slide-3', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=42&quot;&gt;read more&lt;/a&gt;\r\n'),
(170, 2, 14, 'banner-3', '&lt;h3&gt;special &lt;span&gt;offer&lt;/span&gt;\r\n&lt;em&gt;Save up to 40%&lt;/em&gt;\r\n&lt;/h3&gt;\r\n\r\n'),
(169, 3, 14, 'banner-2', '&lt;h3&gt;new &lt;span&gt;arrivals&lt;/span&gt;\r\n&lt;em&gt;Shop now!&lt;/em&gt;\r\n&lt;/h3&gt;\r\n'),
(170, 1, 14, 'banner-3', '&lt;h3&gt;special &lt;span&gt;offer&lt;/span&gt;\r\n&lt;em&gt;Save up to 40%&lt;/em&gt;\r\n&lt;/h3&gt;\r\n\r\n'),
(169, 2, 14, 'banner-2', '&lt;h3&gt;new &lt;span&gt;arrivals&lt;/span&gt;\r\n&lt;em&gt;Shop now!&lt;/em&gt;\r\n&lt;/h3&gt;\r\n'),
(189, 3, 10, 'parallax-1', '&lt;h1&gt;TOP PRODUCTS&lt;/h1&gt;\r\n&lt;h3&gt;perspiciatis unde omnis iste natus error sit&lt;/h3&gt;'),
(189, 2, 10, 'parallax-1', '&lt;h1&gt;TOP PRODUCTS&lt;/h1&gt;\r\n&lt;h3&gt;perspiciatis unde omnis iste natus error sit&lt;/h3&gt;'),
(189, 1, 10, 'parallax-1', '&lt;h1&gt;TOP PRODUCTS&lt;/h1&gt;\r\n&lt;h3&gt;perspiciatis unde omnis iste natus error sit&lt;/h3&gt;'),
(187, 3, 15, 'slide-2', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=32&quot;&gt;read more&lt;/a&gt;\r\n'),
(187, 2, 15, 'slide-2', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=32&quot;&gt;read more&lt;/a&gt;\r\n'),
(187, 1, 15, 'slide-2', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=32&quot;&gt;read more&lt;/a&gt;\r\n'),
(169, 1, 14, 'banner-2', '&lt;h3&gt;new &lt;span&gt;arrivals&lt;/span&gt;\r\n&lt;em&gt;Shop now!&lt;/em&gt;\r\n&lt;/h3&gt;\r\n'),
(168, 3, 14, 'banner-1', '&lt;h3&gt;Sale &lt;span&gt;50% off&lt;/span&gt;\r\n&lt;em&gt;For featured products&lt;/em&gt;\r\n&lt;/h3&gt;\r\n'),
(168, 1, 14, 'banner-1', '&lt;h3&gt;Sale &lt;span&gt;50% off&lt;/span&gt;\r\n&lt;em&gt;For featured products&lt;/em&gt;\r\n&lt;/h3&gt;\r\n'),
(168, 2, 14, 'banner-1', '&lt;h3&gt;Sale &lt;span&gt;50% off&lt;/span&gt;\r\n&lt;em&gt;For featured products&lt;/em&gt;\r\n&lt;/h3&gt;\r\n'),
(186, 3, 15, 'slide-1', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=28&quot;&gt;read more&lt;/a&gt;\r\n'),
(170, 3, 14, 'banner-3', '&lt;h3&gt;special &lt;span&gt;offer&lt;/span&gt;\r\n&lt;em&gt;Save up to 40%&lt;/em&gt;\r\n&lt;/h3&gt;\r\n\r\n'),
(171, 1, 14, 'banner-4', '&lt;h3&gt;free &lt;span&gt;SHIPPING&lt;/span&gt;\r\n&lt;em&gt;On orders over $99&lt;/em&gt;\r\n&lt;/h3&gt;\r\n\r\n'),
(171, 2, 14, 'banner-4', '&lt;h3&gt;free &lt;span&gt;SHIPPING&lt;/span&gt;\r\n&lt;em&gt;On orders over $99&lt;/em&gt;\r\n&lt;/h3&gt;\r\n\r\n'),
(171, 3, 14, 'banner-4', '&lt;h3&gt;free &lt;span&gt;SHIPPING&lt;/span&gt;\r\n&lt;em&gt;On orders over $99&lt;/em&gt;\r\n&lt;/h3&gt;\r\n\r\n'),
(186, 2, 15, 'slide-1', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot;  href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=28&quot;&gt;read more&lt;/a&gt;\r\n'),
(186, 1, 15, 'slide-1', '&lt;h2&gt;A comprehensive quality control for customer&lt;/h2&gt;\r\n&lt;h1&gt;satisfaction&lt;/h1&gt;\r\n&lt;h3&gt;we understand your current and future customer needs&lt;/h3&gt;\r\n&lt;a class=&quot;button&quot; href=&quot;index.php?route=product/product&amp;path=34&amp;product_id=28&quot;&gt;read more&lt;/a&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(5, 1, '9b28j699991sdjnp13fgb38pg4', 28, 0, '{"1":"2"}', 1, '2016-03-28 10:49:41'),
(6, 1, '9b28j699991sdjnp13fgb38pg4', 36, 0, '{"228":"f3b2a142a7f2290371d31034dd7fd59317e72f72","17":"40"}', 1, '2016-03-28 10:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/product-51.png', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2015-09-03 15:13:52'),
(20, 'catalog/product-25.png', 0, 1, 1, 2, 1, '2009-01-05 21:49:43', '2015-09-03 15:14:28'),
(18, 'catalog/product-19.png', 0, 1, 0, 4, 1, '2009-01-05 21:49:15', '2015-09-03 15:14:59'),
(28, 'catalog/product-19.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2015-09-28 11:52:07'),
(29, 'catalog/product-40.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2015-09-28 11:51:20'),
(30, 'catalog/product-11.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2015-09-28 11:50:08'),
(31, 'catalog/product-10.png', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2015-09-28 11:48:27'),
(32, 'catalog/product-1.png', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2015-09-28 11:47:48'),
(33, 'catalog/product-36.png', 0, 1, 1, 1, 1, '2009-02-03 14:17:55', '2015-09-03 15:12:59'),
(34, 'catalog/product-46.png', 0, 1, 4, 5, 1, '2009-02-03 14:18:11', '2015-09-03 15:15:30'),
(35, 'catalog/product-25.png', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2015-09-28 11:54:30'),
(36, 'catalog/product-30.png', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2015-09-28 11:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(33, 2, 'LIVING ROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'LIVING ROOM', '', ''),
(31, 2, ' Home Styles', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Home Styles', '', ''),
(25, 2, 'BEDROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'BEDROOM', '', ''),
(20, 2, 'KITCHEN', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'KITCHEN', 'Example of category description', ''),
(34, 2, 'BATHROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'BATHROOM', '', ''),
(18, 2, 'DINING ROOM ', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'DINING ROOM ', '', ''),
(35, 2, 'Cabin Creek Queen', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Cabin Creek Queen', '', ''),
(35, 1, 'Cabin Creek Queen', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Cabin Creek Queen', '', ''),
(36, 2, 'Queen 3 Piece', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Queen 3 Piece', '', ''),
(36, 1, 'Queen 3 Piece', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Queen 3 Piece', '', ''),
(28, 1, ' Sauder Full', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Sauder Full', '', ''),
(28, 2, ' Sauder Full', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Sauder Full', '', ''),
(29, 2, ' Sauder Harbor View', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Sauder Harbor View', '', ''),
(29, 1, ' Sauder Harbor View', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Sauder Harbor View', '', ''),
(30, 1, 'Queen Bed', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Queen Bed', '', ''),
(30, 2, 'Queen Bed', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Queen Bed', '', ''),
(31, 1, ' Home Styles', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Home Styles', '', ''),
(32, 1, ' South Shore', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' South Shore', '', ''),
(32, 2, ' South Shore', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' South Shore', '', ''),
(33, 1, 'LIVING ROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'LIVING ROOM', '', ''),
(25, 1, 'BEDROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'BEDROOM', '', ''),
(20, 1, 'KITCHEN', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'KITCHEN', 'Example of category description', ''),
(18, 1, 'DINING ROOM ', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'DINING ROOM ', '', ''),
(34, 1, 'BATHROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'BATHROOM', '', ''),
(33, 3, 'LIVING ROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'LIVING ROOM', '', ''),
(25, 3, 'BEDROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'BEDROOM', '', ''),
(20, 3, 'KITCHEN', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'KITCHEN', 'Example of category description', ''),
(18, 3, 'DINING ROOM ', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'DINING ROOM ', '', ''),
(34, 3, 'BATHROOM', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'BATHROOM', '', ''),
(32, 3, ' South Shore', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' South Shore', '', '');
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(31, 3, ' Home Styles', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Home Styles', '', ''),
(30, 3, 'Queen Bed', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Queen Bed', '', ''),
(29, 3, ' Sauder Harbor View', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Sauder Harbor View', '', ''),
(28, 3, ' Sauder Full', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', ' Sauder Full', '', ''),
(36, 3, 'Queen 3 Piece', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Queen 3 Piece', '', ''),
(35, 3, 'Cabin Creek Queen', '&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', 'Cabin Creek Queen', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 28, 1),
(28, 25, 0),
(35, 35, 2),
(35, 28, 1),
(35, 25, 0),
(36, 36, 2),
(36, 28, 1),
(36, 25, 0),
(29, 29, 1),
(29, 25, 0),
(30, 30, 1),
(30, 25, 0),
(31, 31, 1),
(31, 25, 0),
(32, 32, 1),
(32, 25, 0),
(20, 20, 0),
(18, 18, 0),
(33, 33, 0),
(34, 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(33, 0, 0),
(25, 0, 0),
(20, 0, 0),
(18, 0, 0),
(34, 0, 0),
(35, 0, 0),
(36, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(25, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.77550000, 1, '2017-06-01 13:55:33'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-06-01 13:55:33'),
(3, 'Euro', 'EUR', '', '€', '2', 0.89050001, 1, '2017-06-01 13:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 'admin', 'admin', 'admin@admin.com', '1234567890', '', '0e16d9048d26c0a2d972233c24c414c968325f86', 'URPIxZCzs', NULL, NULL, 1, 1, '', '192.168.9.13', 1, 1, 0, '', '', '2016-03-24 16:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', '{"customer_id":1,"name":"admin admin"}', '192.168.9.13', '2016-03-24 16:24:10'),
(2, 1, 'login', '{"customer_id":"1","name":"admin admin"}', '192.168.9.13', '2016-03-24 16:25:59'),
(3, 1, 'login', '{"customer_id":"1","name":"admin admin"}', '192.168.9.13', '2016-03-24 16:29:19'),
(4, 0, 'order_guest', '{"name":"asdasdasd asdasdasd","order_id":1}', '192.168.9.13', '2016-03-24 18:15:49'),
(5, 1, 'login', '{"customer_id":"1","name":"admin admin"}', '192.168.9.13', '2016-03-24 18:16:06'),
(6, 1, 'order_account', '{"customer_id":"1","name":"admin admin","order_id":2}', '192.168.9.13', '2016-03-24 18:19:36'),
(7, 1, 'login', '{"customer_id":"1","name":"admin admin"}', '192.168.9.13', '2016-03-24 18:25:36'),
(8, 1, 'login', '{"customer_id":"1","name":"admin admin"}', '192.168.9.13', '2016-03-28 10:44:42'),
(9, 1, 'order_account', '{"customer_id":"1","name":"admin admin","order_id":3}', '192.168.9.13', '2016-03-28 10:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '192.168.9.13', '2016-03-24 16:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '192.168.89.95', 2, '2016-03-24 11:11:10', '2016-03-24 11:11:25'),
(2, 'admin1@admin.com', '192.168.9.13', 1, '2016-03-24 11:36:50', '2016-03-24 11:36:50'),
(3, '', '192.168.9.13', 5, '2016-03-24 11:45:28', '2016-03-24 15:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 36, '2016-03-24 16:31:01'),
(1, 28, '2016-03-24 16:31:01'),
(1, 33, '2016-03-24 16:31:02'),
(1, 32, '2016-03-24 16:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addHistory/after', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(50, 'module', 'account'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(42, 'module', 'featured'),
(40, 'module', 'olark'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(36, 'module', 'tm_google_map'),
(20, 'theme', 'theme_default'),
(57, 'module', 'tm_slideshow'),
(43, 'module', 'tm_blog_articles'),
(44, 'module', 'tm_blog_category'),
(45, 'module', 'latest'),
(46, 'module', 'special'),
(47, 'module', 'bestseller'),
(51, 'module', 'affiliate'),
(52, 'module', 'banner'),
(53, 'module', 'html'),
(54, 'module', 'information'),
(55, 'module', 'parallax'),
(56, 'module', 'tm_social_list');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(6, 3, 'Информация о доставке', '&lt;div class=&quot;delivery_page&quot;&gt;\r\n&lt;h4&gt;Hello and welcome to the Shipping and Delivery Information page! Here you can get acquainted with useful information on terms and conditions of our goods delivery.&lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;You can purchase your items online and pick them up at our street store, or ship them directly to your doorstep. Shipping is free on some orders. We use the best carriers in the business to make sure your order gets to you on time. From the Secure Checkout page you\'ll see your item description, price and delivery timing. Where available, you can also choose a faster delivery method for each item on your order, for an additional fee. Delivery times vary according to your selected delivery address, availability of your items and the time of day you place your order.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3 class=&quot;clear&quot;&gt;Cost&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;table-responsive&quot;&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Service&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Locations&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Delivery Schedule&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Cost per Shipment&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n&lt;/thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail Tracker (Order value $50 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$4.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$5.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Northern Ireland, Eire, Scilly Isles&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$9.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Priority courier pre 12pm Next Working Day&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Pre 12pm &lt;br&gt; Delivery 7.30am - 12pm &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$8.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/table&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Free Delivery&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Free two-day shipping is available on in-stock items. You can see in your bag if your item is in stock. Free two-day shipping is not available on customized, engraved products, and for certain order types, including orders paid for with financing or by bank transfer. To get free two-day shipping, you will need to place your order by 5pm, Monday to Friday. For instance, if you order your goods before 5:00 pm, Monday to Friday we will deliver them in two business days.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Информация о доставке', '', ''),
(6, 2, 'Lieferinformationen', '&lt;div class=&quot;delivery_page&quot;&gt;\r\n&lt;h4&gt;Hello and welcome to the Shipping and Delivery Information page! Here you can get acquainted with useful information on terms and conditions of our goods delivery.&lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;You can purchase your items online and pick them up at our street store, or ship them directly to your doorstep. Shipping is free on some orders. We use the best carriers in the business to make sure your order gets to you on time. From the Secure Checkout page you\'ll see your item description, price and delivery timing. Where available, you can also choose a faster delivery method for each item on your order, for an additional fee. Delivery times vary according to your selected delivery address, availability of your items and the time of day you place your order.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3 class=&quot;clear&quot;&gt;Cost&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;table-responsive&quot;&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Service&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Locations&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Delivery Schedule&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Cost per Shipment&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n&lt;/thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail Tracker (Order value $50 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$4.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$5.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Northern Ireland, Eire, Scilly Isles&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$9.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Priority courier pre 12pm Next Working Day&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Pre 12pm &lt;br&gt; Delivery 7.30am - 12pm &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$8.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/table&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Free Delivery&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Free two-day shipping is available on in-stock items. You can see in your bag if your item is in stock. Free two-day shipping is not available on customized, engraved products, and for certain order types, including orders paid for with financing or by bank transfer. To get free two-day shipping, you will need to place your order by 5pm, Monday to Friday. For instance, if you order your goods before 5:00 pm, Monday to Friday we will deliver them in two business days.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Lieferinformationen', '', ''),
(6, 1, 'Delivery Information', '&lt;div class=&quot;delivery_page&quot;&gt;\r\n&lt;h4&gt;Hello and welcome to the Shipping and Delivery Information page! Here you can get acquainted with useful information on terms and conditions of our goods delivery.&lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;You can purchase your items online and pick them up at our street store, or ship them directly to your doorstep. Shipping is free on some orders. We use the best carriers in the business to make sure your order gets to you on time. From the Secure Checkout page you\'ll see your item description, price and delivery timing. Where available, you can also choose a faster delivery method for each item on your order, for an additional fee. Delivery times vary according to your selected delivery address, availability of your items and the time of day you place your order.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3 class=&quot;clear&quot;&gt;Cost&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;table-responsive&quot;&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Service&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Locations&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Delivery Schedule&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Cost per Shipment&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n&lt;/thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail Tracker (Order value $50 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$4.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$5.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Northern Ireland, Eire, Scilly Isles&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$9.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Priority courier pre 12pm Next Working Day&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Pre 12pm &lt;br&gt; Delivery 7.30am - 12pm &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$8.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/table&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Free Delivery&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Free two-day shipping is available on in-stock items. You can see in your bag if your item is in stock. Free two-day shipping is not available on customized, engraved products, and for certain order types, including orders paid for with financing or by bank transfer. To get free two-day shipping, you will need to place your order by 5pm, Monday to Friday. For instance, if you order your goods before 5:00 pm, Monday to Friday we will deliver them in two business days.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(3, 3, 'Политика конфиденциальности', '&lt;div class=&quot;privacy_page&quot;&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h4&gt;General information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Welcome to our Privacy Policy page! When you use our store services, you trust us with your information. This Privacy Policy is meant to help you understand what data we collect, why we collect it, and what we do with it. When you share information with us, we can make our services even better for you. For instance, we can show you more relevant search results and ads, help you connect with people or to make sharing with others quicker and easier. As you use our services, we want you to be clear how we’re using information and the ways in which you can protect your privacy. This is important; we hope you will take time to read it carefully. Remember, you can find controls to manage your information and protect your privacy and security. We’ve tried to keep it as simple as possible. &lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Right to access, correct and delete data and to object to data processing&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our customers have the right to access, correct and delete personal data relating to them, and to object to the processing of such data, by addressing a written request, at any time. The Company makes every effort to put in place suitable precautions to safeguard the security and privacy of personal data, and to prevent it from being altered, corrupted, destroyed or accessed by unauthorized third parties. However, the Company does not control each and every risk related to the use of the Internet, and therefore warns the Site users of the potential risks involved in the functioning and use of the Internet. The Site may include links to other web sites or other internet sources. As the Company cannot control these web sites and external sources, the Company cannot be held responsible for the provision or display of these web sites and external sources, and may not be held liable for the content, advertising, products, services or any other material available on or from these web sites or external sources.  &lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Management of personal data&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;You can view or edit your personal data online for many of our services. You can also make choices about our collection and use of your data. How you can access or control your personal data will depend on which services you use. You can choose whether you wish to receive promotional communications from our store by email, SMS, physical mail, and telephone. If you receive promotional email or SMS messages from us and would like to opt out, you can do so by following the directions in that message. You can also make choices about the receipt of promotional email, telephone calls, and postal mail by visiting and signing into Company Promotional Communications Manager, which allows you to update contact information, manage contact preferences, opt out of email subscriptions, and choose whether to share your contact information with our partners. These choices do not apply to mandatory service communications that are part of certain store services.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Information We Collect&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store collects data to operate effectively and provide you the best experiences with our services. You provide some of this data directly, such as when you create a personal account. We get some of it by recording how you interact with our services by, for example, using technologies like cookies, and receiving error reports or usage data from software running on your device. We also obtain data from third parties (including other companies). For example, we supplement the data we collect by purchasing demographic data from other companies. We also use services from other companies to help us determine a location based on your IP address in order to customize certain services to your location. The data we collect depends on the services and features you use. \r\n&lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;How We Use Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store uses the data we collect for three basic purposes: to operate our business and provide (including improving and personalizing) the services we offer, to send communications, including promotional communications, and to display advertising. In carrying out these purposes, we combine data we collect through the various store services you use to give you a more seamless, consistent and personalized experience. However, to enhance privacy, we have built in technological and procedural safeguards designed to prevent certain data combinations. For example, we store data we collect from you when you are unauthenticated (not signed in) separately from any account information that directly identifies you, such as your name, email address or phone number.\r\n&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Sharing Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;We share your personal data with your consent or as necessary to complete any transaction or provide any service you have requested or authorized. For example, we share your content with third parties when you tell us to do so. When you provide payment data to make a purchase, we will share payment data with banks and other entities that process payment transactions or provide other financial services, and for fraud prevention and credit risk reduction. In addition, we share personal data among our controlled affiliates and subsidiaries. We also share personal data with vendors or agents working on our behalf for the purposes described in this statement. For example, companies we\'ve hired to provide customer service support or assist in protecting and securing our systems and services may need access to personal data in order to provide those functions. In such cases, these companies must abide by our data privacy and security requirements and are not allowed to use personal data they receive from us for any other purpose. We may also disclose personal data as part of a corporate transaction such as a merger or sale of assets.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n    &lt;/ol&gt;\r\n&lt;/div&gt;', 'Политика конфиденциальности', '', ''),
(5, 3, 'Условия использования', '&lt;div class=&quot;row terms_conditions_page&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;entire agreement&lt;/h4&gt;\r\n\r\n		&lt;p&gt;If you require a complete delivery of your orders, please enter an X in the Complete Delivery field on the shipping screen of the customer master record. The indicator is copied into the order header, which you can also use for the purpose. &lt;/p&gt;\r\n\r\n		&lt;h4&gt;controlling terms&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale represent the complete agreement of the parties with respect to the sale of the product(s) listed on the Invoice and no different or additional terms or conditions in Buyer’s purchase order or in any other prior or subsequent communications in any way adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be binding upon Seller.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;acceptance of orders&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller may accept buyer’s offer to purchase and shall be bound to supply the applicable Goods in accordance with these terms and conditions either by execution of the acknowledgment copy of the order, or acceptable electronic transmission, delivery of the Goods to CAI or by any other statement, act or course of conduct which constitutes acceptance under applicable law.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;prices&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise indicated on the face of the invoice, all prices are quoted on a per pound basis. Buyer is responsible for any tax or government charges imposed upon the sale or transfer of the Product. Buyer shall not have any right to set off any amounts due hereunder against any amounts which may become payable to Seller under any other agreement.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;delivery&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise agrees in writing signed by officer of Seller, all delivery dates are estimates Seller shall use its reasonable efforts to deliver all Product within the time specified; however, in no case shall Seller be liable for any expense, loss or damage whatsoever suffered by Buyer as a result of the Seller’s failure to deliver Product by the specified date.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;transportation and risk of loss&lt;/h4&gt;\r\n\r\n		&lt;p&gt;The method and route of shipment are at Seller’s discretion unless Buyer timely supplies explicit instructions otherwise. Title to the Product passes to Buyer when Product is delivered to the selected carrier, even if Seller made a nonconforming tender. Buyer attempts to revoke acceptance of the Product, or Buyer repudiates this document after the Products have been identified hereto.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;cancellation or modification&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Any order placed with and accepted by Seller may be canceled by Buyer only upon Seller’s approval in a writing signed by an officer of Seller and upon terms that indemnify Seller against any loss. Seller will not accept order cancellations once a product has been delivered to a carrier, without charging a cancellation fee of twenty-five percent (25%) of order value to recover retrieval costs incurred. Seller will not accept cancellations of special orders of non-standard, non-price list products. Seller may cancel all or any part of this order and discontinue its performance hereunder without liability to Buyer in the event Buyer materially breaches this contract, becomes insolvent, is the subject to bankruptcy protection, or is the subject of a receivership, liquidation, dissolution or similar proceeding.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;taxes&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer is responsible for any tax or governmental charge imposed upon the sale or transfer of any product. Any such tax or governmental charge will be added to the total invoice amount. All prices are FOB Seller’s facilities. Applicable freight costs will be added to the invoice.&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;warranty and disclaimer&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller warrants that the purchased Product is free from defects in materials and workmanship at the time of delivery. If an analysis is stated on the face of the Invoice, it is not intended to be a complete analysis and is not to be regarded as a specification or warranty, unless specifically stated in writing to be such. \r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;limitation of liability&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer acknowledges and agrees that seller’s liability for any claims with respect to the products shall not exceed the amount paid by buyer for the products under the invoice. Such limitations on seller’s liability hereunder shall apply even if seller’s liability is due in whole or in part to its own negligence. Any action by or on behalf of Buyer or its successors or assigns for breach of this document must be commenced within one (1) year after the cause of action as accrued.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;return of material&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Upon delivery of Product, Buyer shall have five (5) days to inspect Product and notify Seller, in writing, of any defective goods or other cause for rejection. Buyer agrees that five (5) day period provides Buyer a reasonable opportunity to inspect the Product. Such notification shall identify each and every reason for any rejection of Product. Buyer’s failure to reject Product within such five (5) day period shall constitute a waiver of Buyer’s inspection right and an unqualified and irrevocable acceptance of the Product by Buyer.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;indemnity&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer shall defend, indemnify and hold harmless Seller and its affiliated or related companies from and against any and all claims, losses, liability, damages and expenses including, but not limited to, attorneys’ fees and cost of defense arising from, related to or in any way connected with or alleged to arise from or out of any asserted deficiencies or defects in Product caused by any alteration or modification thereof by Buyer with or without Seller’s consent, or improper handling or storage by Buyer, the breach of any term or condition stated herein, Buyer’s failure to label Product or Buyer’s improper labeling of Product regardless of whether the labeling was done with or without the advice of Seller, or any act or omission of Buyer including any Claims for or resulting from any injury to person (including death) or damage to property or for economic loss, several or comparative negligence, breach of agreement, breach of warranty or other breach of duty of or by Indemnitee or as a result of Indemnitee’s strict or other product liability. The foregoing indemnification shall not be construed to eliminate or in any way reduce any other indemnification or right which Indemnitee has by law.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;payment&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Net cash thirty (30) days from the date of Invoice. Amounts not paid within thirty (30) days are overdue and shall accrue interest at a rate of one and one-half percent (1-1/2%) per month or the highest allowed by law, whichever is less. Buyer shall reimburse Seller for any costs incurred in collecting past due sums or any other amounts owed by Buyer for any reason whatsoever, including, but not limited to, court costs and attorneys’ fees.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;governing law and arbitration&lt;/h4&gt;\r\n\r\n		&lt;p&gt;This document shall be interpreted and governed by the law of the State of America, excluding its conflicts of laws rules. The parties specifically exclude the application of the United Nations Convention on the Sale of Goods.\r\n&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n&lt;/div&gt;', 'Условия использования', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;div class=&quot;row terms_conditions_page&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;entire agreement&lt;/h4&gt;\r\n\r\n		&lt;p&gt;If you require a complete delivery of your orders, please enter an X in the Complete Delivery field on the shipping screen of the customer master record. The indicator is copied into the order header, which you can also use for the purpose. &lt;/p&gt;\r\n\r\n		&lt;h4&gt;controlling terms&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale represent the complete agreement of the parties with respect to the sale of the product(s) listed on the Invoice and no different or additional terms or conditions in Buyer’s purchase order or in any other prior or subsequent communications in any way adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be binding upon Seller.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;acceptance of orders&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller may accept buyer’s offer to purchase and shall be bound to supply the applicable Goods in accordance with these terms and conditions either by execution of the acknowledgment copy of the order, or acceptable electronic transmission, delivery of the Goods to CAI or by any other statement, act or course of conduct which constitutes acceptance under applicable law.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;prices&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise indicated on the face of the invoice, all prices are quoted on a per pound basis. Buyer is responsible for any tax or government charges imposed upon the sale or transfer of the Product. Buyer shall not have any right to set off any amounts due hereunder against any amounts which may become payable to Seller under any other agreement.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;delivery&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise agrees in writing signed by officer of Seller, all delivery dates are estimates Seller shall use its reasonable efforts to deliver all Product within the time specified; however, in no case shall Seller be liable for any expense, loss or damage whatsoever suffered by Buyer as a result of the Seller’s failure to deliver Product by the specified date.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;transportation and risk of loss&lt;/h4&gt;\r\n\r\n		&lt;p&gt;The method and route of shipment are at Seller’s discretion unless Buyer timely supplies explicit instructions otherwise. Title to the Product passes to Buyer when Product is delivered to the selected carrier, even if Seller made a nonconforming tender. Buyer attempts to revoke acceptance of the Product, or Buyer repudiates this document after the Products have been identified hereto.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;cancellation or modification&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Any order placed with and accepted by Seller may be canceled by Buyer only upon Seller’s approval in a writing signed by an officer of Seller and upon terms that indemnify Seller against any loss. Seller will not accept order cancellations once a product has been delivered to a carrier, without charging a cancellation fee of twenty-five percent (25%) of order value to recover retrieval costs incurred. Seller will not accept cancellations of special orders of non-standard, non-price list products. Seller may cancel all or any part of this order and discontinue its performance hereunder without liability to Buyer in the event Buyer materially breaches this contract, becomes insolvent, is the subject to bankruptcy protection, or is the subject of a receivership, liquidation, dissolution or similar proceeding.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;taxes&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer is responsible for any tax or governmental charge imposed upon the sale or transfer of any product. Any such tax or governmental charge will be added to the total invoice amount. All prices are FOB Seller’s facilities. Applicable freight costs will be added to the invoice.&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;warranty and disclaimer&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller warrants that the purchased Product is free from defects in materials and workmanship at the time of delivery. If an analysis is stated on the face of the Invoice, it is not intended to be a complete analysis and is not to be regarded as a specification or warranty, unless specifically stated in writing to be such. \r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;limitation of liability&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer acknowledges and agrees that seller’s liability for any claims with respect to the products shall not exceed the amount paid by buyer for the products under the invoice. Such limitations on seller’s liability hereunder shall apply even if seller’s liability is due in whole or in part to its own negligence. Any action by or on behalf of Buyer or its successors or assigns for breach of this document must be commenced within one (1) year after the cause of action as accrued.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;return of material&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Upon delivery of Product, Buyer shall have five (5) days to inspect Product and notify Seller, in writing, of any defective goods or other cause for rejection. Buyer agrees that five (5) day period provides Buyer a reasonable opportunity to inspect the Product. Such notification shall identify each and every reason for any rejection of Product. Buyer’s failure to reject Product within such five (5) day period shall constitute a waiver of Buyer’s inspection right and an unqualified and irrevocable acceptance of the Product by Buyer.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;indemnity&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer shall defend, indemnify and hold harmless Seller and its affiliated or related companies from and against any and all claims, losses, liability, damages and expenses including, but not limited to, attorneys’ fees and cost of defense arising from, related to or in any way connected with or alleged to arise from or out of any asserted deficiencies or defects in Product caused by any alteration or modification thereof by Buyer with or without Seller’s consent, or improper handling or storage by Buyer, the breach of any term or condition stated herein, Buyer’s failure to label Product or Buyer’s improper labeling of Product regardless of whether the labeling was done with or without the advice of Seller, or any act or omission of Buyer including any Claims for or resulting from any injury to person (including death) or damage to property or for economic loss, several or comparative negligence, breach of agreement, breach of warranty or other breach of duty of or by Indemnitee or as a result of Indemnitee’s strict or other product liability. The foregoing indemnification shall not be construed to eliminate or in any way reduce any other indemnification or right which Indemnitee has by law.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;payment&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Net cash thirty (30) days from the date of Invoice. Amounts not paid within thirty (30) days are overdue and shall accrue interest at a rate of one and one-half percent (1-1/2%) per month or the highest allowed by law, whichever is less. Buyer shall reimburse Seller for any costs incurred in collecting past due sums or any other amounts owed by Buyer for any reason whatsoever, including, but not limited to, court costs and attorneys’ fees.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;governing law and arbitration&lt;/h4&gt;\r\n\r\n		&lt;p&gt;This document shall be interpreted and governed by the law of the State of America, excluding its conflicts of laws rules. The parties specifically exclude the application of the United Nations Convention on the Sale of Goods.\r\n&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(5, 2, 'Allgemeine Geschäftsbedingungen', '&lt;div class=&quot;row terms_conditions_page&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;entire agreement&lt;/h4&gt;\r\n\r\n		&lt;p&gt;If you require a complete delivery of your orders, please enter an X in the Complete Delivery field on the shipping screen of the customer master record. The indicator is copied into the order header, which you can also use for the purpose. &lt;/p&gt;\r\n\r\n		&lt;h4&gt;controlling terms&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale represent the complete agreement of the parties with respect to the sale of the product(s) listed on the Invoice and no different or additional terms or conditions in Buyer’s purchase order or in any other prior or subsequent communications in any way adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be binding upon Seller.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;acceptance of orders&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller may accept buyer’s offer to purchase and shall be bound to supply the applicable Goods in accordance with these terms and conditions either by execution of the acknowledgment copy of the order, or acceptable electronic transmission, delivery of the Goods to CAI or by any other statement, act or course of conduct which constitutes acceptance under applicable law.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;prices&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise indicated on the face of the invoice, all prices are quoted on a per pound basis. Buyer is responsible for any tax or government charges imposed upon the sale or transfer of the Product. Buyer shall not have any right to set off any amounts due hereunder against any amounts which may become payable to Seller under any other agreement.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;delivery&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise agrees in writing signed by officer of Seller, all delivery dates are estimates Seller shall use its reasonable efforts to deliver all Product within the time specified; however, in no case shall Seller be liable for any expense, loss or damage whatsoever suffered by Buyer as a result of the Seller’s failure to deliver Product by the specified date.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;transportation and risk of loss&lt;/h4&gt;\r\n\r\n		&lt;p&gt;The method and route of shipment are at Seller’s discretion unless Buyer timely supplies explicit instructions otherwise. Title to the Product passes to Buyer when Product is delivered to the selected carrier, even if Seller made a nonconforming tender. Buyer attempts to revoke acceptance of the Product, or Buyer repudiates this document after the Products have been identified hereto.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;cancellation or modification&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Any order placed with and accepted by Seller may be canceled by Buyer only upon Seller’s approval in a writing signed by an officer of Seller and upon terms that indemnify Seller against any loss. Seller will not accept order cancellations once a product has been delivered to a carrier, without charging a cancellation fee of twenty-five percent (25%) of order value to recover retrieval costs incurred. Seller will not accept cancellations of special orders of non-standard, non-price list products. Seller may cancel all or any part of this order and discontinue its performance hereunder without liability to Buyer in the event Buyer materially breaches this contract, becomes insolvent, is the subject to bankruptcy protection, or is the subject of a receivership, liquidation, dissolution or similar proceeding.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;taxes&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer is responsible for any tax or governmental charge imposed upon the sale or transfer of any product. Any such tax or governmental charge will be added to the total invoice amount. All prices are FOB Seller’s facilities. Applicable freight costs will be added to the invoice.&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;warranty and disclaimer&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller warrants that the purchased Product is free from defects in materials and workmanship at the time of delivery. If an analysis is stated on the face of the Invoice, it is not intended to be a complete analysis and is not to be regarded as a specification or warranty, unless specifically stated in writing to be such. \r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;limitation of liability&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer acknowledges and agrees that seller’s liability for any claims with respect to the products shall not exceed the amount paid by buyer for the products under the invoice. Such limitations on seller’s liability hereunder shall apply even if seller’s liability is due in whole or in part to its own negligence. Any action by or on behalf of Buyer or its successors or assigns for breach of this document must be commenced within one (1) year after the cause of action as accrued.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;return of material&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Upon delivery of Product, Buyer shall have five (5) days to inspect Product and notify Seller, in writing, of any defective goods or other cause for rejection. Buyer agrees that five (5) day period provides Buyer a reasonable opportunity to inspect the Product. Such notification shall identify each and every reason for any rejection of Product. Buyer’s failure to reject Product within such five (5) day period shall constitute a waiver of Buyer’s inspection right and an unqualified and irrevocable acceptance of the Product by Buyer.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;indemnity&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer shall defend, indemnify and hold harmless Seller and its affiliated or related companies from and against any and all claims, losses, liability, damages and expenses including, but not limited to, attorneys’ fees and cost of defense arising from, related to or in any way connected with or alleged to arise from or out of any asserted deficiencies or defects in Product caused by any alteration or modification thereof by Buyer with or without Seller’s consent, or improper handling or storage by Buyer, the breach of any term or condition stated herein, Buyer’s failure to label Product or Buyer’s improper labeling of Product regardless of whether the labeling was done with or without the advice of Seller, or any act or omission of Buyer including any Claims for or resulting from any injury to person (including death) or damage to property or for economic loss, several or comparative negligence, breach of agreement, breach of warranty or other breach of duty of or by Indemnitee or as a result of Indemnitee’s strict or other product liability. The foregoing indemnification shall not be construed to eliminate or in any way reduce any other indemnification or right which Indemnitee has by law.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;payment&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Net cash thirty (30) days from the date of Invoice. Amounts not paid within thirty (30) days are overdue and shall accrue interest at a rate of one and one-half percent (1-1/2%) per month or the highest allowed by law, whichever is less. Buyer shall reimburse Seller for any costs incurred in collecting past due sums or any other amounts owed by Buyer for any reason whatsoever, including, but not limited to, court costs and attorneys’ fees.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;governing law and arbitration&lt;/h4&gt;\r\n\r\n		&lt;p&gt;This document shall be interpreted and governed by the law of the State of America, excluding its conflicts of laws rules. The parties specifically exclude the application of the United Nations Convention on the Sale of Goods.\r\n&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n&lt;/div&gt;', 'Allgemeine Geschäftsbedingungen', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 3, 'O нас', '&lt;div class=&quot;text-center&quot;&gt;\r\n&lt;h4&gt;Catering to your requirements, handling your needs with care  &lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Our store is more than just another average online retailer. We sell not only top quality products, but give our customers a positive online shopping experience. Forget about struggling to do everything at once: taking care of the family, running your business, walking your dog, cleaning the house, doing the shopping, etc. Purchase the goods you need every day or just like in a few clicks or taps, depending on the device you use to access the Internet. We work to make your life more enjoyable. &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;14500&lt;/strong&gt;\r\n            &lt;h5&gt;Products available&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;81%&lt;/strong&gt;\r\n            &lt;h5&gt;Clients come back&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;10 mlns&lt;/strong&gt;\r\n            &lt;h5&gt;Site members&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Store Events&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-search100&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;For convenience of choice&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We think about the convenience of your choice. Our products are supplied with star rating that should help hesitant buyers to take a decision. What’s more, you can search our site if you know exactly what you are looking for or use a bunch of different filters that will considerably save your time and efforts.   &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-front16&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;Delivery to all regions&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We deliver our goods worldwide. No matter where you live, your order will be shipped in time and delivered right to your door or to any other location you have stated. The packages are handled with utmost care, so the ordered products will be handed to you safe and sound, just like you expect them to be.    &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;The highest quality of products&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We guarantee the highest quality of the products we sell. Several decades of successful operation and millions of happy customers let us feel certain about that. Besides, all items we sell pass thorough quality control, so no characteristics mismatch can escape the eye of our professionals.   &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;OUR TEAM&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;&lt;img alt=&quot;Robert Johnson&quot; src=&quot;image/catalog/article/article-1.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;Robert Johnson&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;&lt;img alt=&quot;Jessica Priston&quot; src=&quot;image/catalog/article/article-2.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;Jessica Priston&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;&lt;img alt=&quot;Sam Kromstain&quot; src=&quot;image/catalog/article/article-3.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;Sam Kromstain&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store.  &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;&lt;img alt=&quot;Edna Barton&quot; src=&quot;image/catalog/article/article-4.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;Edna Barton&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;h3&gt;Testimonials&lt;/h3&gt;\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-10 col-sm-offset-1&quot;&gt;\r\n        &lt;div class=&quot;testimonials&quot;&gt;\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;blockquote&gt;\r\n                    &lt;h5&gt;Mary Taba&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n                    &lt;p&gt;“Guys, you rock! Made a purchase at your store recently. The order has been shipped and delivered on time. The quality is superb! The price is quite reasonable. Told all my friends about your excellent service and the variety of choice. I think I’ll be your loyal customer in future as well. I wish your store many more years of prosperity.” &lt;/p&gt;\r\n\r\n\r\n\r\n                &lt;/blockquote&gt;\r\n            &lt;/div&gt;\r\n\r\n\r\n\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;blockquote&gt;\r\n                    &lt;h5&gt;Virginia Ubert&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n                    &lt;p&gt;“Having the distressing experience with some online shops before decided to say ‘’THANK YOU” to all personnel of this store. You are not only friendly, but deliver really good products in the shortest possible terms. In a word, I am absolutely happy with my purchase and the service. Everything was perfect!”&lt;/p&gt;\r\n\r\n\r\n\r\n                &lt;/blockquote&gt;\r\n            &lt;/div&gt;\r\n\r\n\r\n\r\n          \r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'O нас', '', ''),
(3, 1, 'Privacy Policy', '&lt;div class=&quot;privacy_page&quot;&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h4&gt;General information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Welcome to our Privacy Policy page! When you use our store services, you trust us with your information. This Privacy Policy is meant to help you understand what data we collect, why we collect it, and what we do with it. When you share information with us, we can make our services even better for you. For instance, we can show you more relevant search results and ads, help you connect with people or to make sharing with others quicker and easier. As you use our services, we want you to be clear how we’re using information and the ways in which you can protect your privacy. This is important; we hope you will take time to read it carefully. Remember, you can find controls to manage your information and protect your privacy and security. We’ve tried to keep it as simple as possible. &lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Right to access, correct and delete data and to object to data processing&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our customers have the right to access, correct and delete personal data relating to them, and to object to the processing of such data, by addressing a written request, at any time. The Company makes every effort to put in place suitable precautions to safeguard the security and privacy of personal data, and to prevent it from being altered, corrupted, destroyed or accessed by unauthorized third parties. However, the Company does not control each and every risk related to the use of the Internet, and therefore warns the Site users of the potential risks involved in the functioning and use of the Internet. The Site may include links to other web sites or other internet sources. As the Company cannot control these web sites and external sources, the Company cannot be held responsible for the provision or display of these web sites and external sources, and may not be held liable for the content, advertising, products, services or any other material available on or from these web sites or external sources.  &lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Management of personal data&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;You can view or edit your personal data online for many of our services. You can also make choices about our collection and use of your data. How you can access or control your personal data will depend on which services you use. You can choose whether you wish to receive promotional communications from our store by email, SMS, physical mail, and telephone. If you receive promotional email or SMS messages from us and would like to opt out, you can do so by following the directions in that message. You can also make choices about the receipt of promotional email, telephone calls, and postal mail by visiting and signing into Company Promotional Communications Manager, which allows you to update contact information, manage contact preferences, opt out of email subscriptions, and choose whether to share your contact information with our partners. These choices do not apply to mandatory service communications that are part of certain store services.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Information We Collect&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store collects data to operate effectively and provide you the best experiences with our services. You provide some of this data directly, such as when you create a personal account. We get some of it by recording how you interact with our services by, for example, using technologies like cookies, and receiving error reports or usage data from software running on your device. We also obtain data from third parties (including other companies). For example, we supplement the data we collect by purchasing demographic data from other companies. We also use services from other companies to help us determine a location based on your IP address in order to customize certain services to your location. The data we collect depends on the services and features you use. \r\n&lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;How We Use Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store uses the data we collect for three basic purposes: to operate our business and provide (including improving and personalizing) the services we offer, to send communications, including promotional communications, and to display advertising. In carrying out these purposes, we combine data we collect through the various store services you use to give you a more seamless, consistent and personalized experience. However, to enhance privacy, we have built in technological and procedural safeguards designed to prevent certain data combinations. For example, we store data we collect from you when you are unauthenticated (not signed in) separately from any account information that directly identifies you, such as your name, email address or phone number.\r\n&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Sharing Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;We share your personal data with your consent or as necessary to complete any transaction or provide any service you have requested or authorized. For example, we share your content with third parties when you tell us to do so. When you provide payment data to make a purchase, we will share payment data with banks and other entities that process payment transactions or provide other financial services, and for fraud prevention and credit risk reduction. In addition, we share personal data among our controlled affiliates and subsidiaries. We also share personal data with vendors or agents working on our behalf for the purposes described in this statement. For example, companies we\'ve hired to provide customer service support or assist in protecting and securing our systems and services may need access to personal data in order to provide those functions. In such cases, these companies must abide by our data privacy and security requirements and are not allowed to use personal data they receive from us for any other purpose. We may also disclose personal data as part of a corporate transaction such as a merger or sale of assets.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n    &lt;/ol&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(3, 2, 'Datenschutz-Bestimmungen', '&lt;div class=&quot;privacy_page&quot;&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h4&gt;General information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Welcome to our Privacy Policy page! When you use our store services, you trust us with your information. This Privacy Policy is meant to help you understand what data we collect, why we collect it, and what we do with it. When you share information with us, we can make our services even better for you. For instance, we can show you more relevant search results and ads, help you connect with people or to make sharing with others quicker and easier. As you use our services, we want you to be clear how we’re using information and the ways in which you can protect your privacy. This is important; we hope you will take time to read it carefully. Remember, you can find controls to manage your information and protect your privacy and security. We’ve tried to keep it as simple as possible. &lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Right to access, correct and delete data and to object to data processing&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our customers have the right to access, correct and delete personal data relating to them, and to object to the processing of such data, by addressing a written request, at any time. The Company makes every effort to put in place suitable precautions to safeguard the security and privacy of personal data, and to prevent it from being altered, corrupted, destroyed or accessed by unauthorized third parties. However, the Company does not control each and every risk related to the use of the Internet, and therefore warns the Site users of the potential risks involved in the functioning and use of the Internet. The Site may include links to other web sites or other internet sources. As the Company cannot control these web sites and external sources, the Company cannot be held responsible for the provision or display of these web sites and external sources, and may not be held liable for the content, advertising, products, services or any other material available on or from these web sites or external sources.  &lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Management of personal data&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;You can view or edit your personal data online for many of our services. You can also make choices about our collection and use of your data. How you can access or control your personal data will depend on which services you use. You can choose whether you wish to receive promotional communications from our store by email, SMS, physical mail, and telephone. If you receive promotional email or SMS messages from us and would like to opt out, you can do so by following the directions in that message. You can also make choices about the receipt of promotional email, telephone calls, and postal mail by visiting and signing into Company Promotional Communications Manager, which allows you to update contact information, manage contact preferences, opt out of email subscriptions, and choose whether to share your contact information with our partners. These choices do not apply to mandatory service communications that are part of certain store services.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Information We Collect&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store collects data to operate effectively and provide you the best experiences with our services. You provide some of this data directly, such as when you create a personal account. We get some of it by recording how you interact with our services by, for example, using technologies like cookies, and receiving error reports or usage data from software running on your device. We also obtain data from third parties (including other companies). For example, we supplement the data we collect by purchasing demographic data from other companies. We also use services from other companies to help us determine a location based on your IP address in order to customize certain services to your location. The data we collect depends on the services and features you use. \r\n&lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;How We Use Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store uses the data we collect for three basic purposes: to operate our business and provide (including improving and personalizing) the services we offer, to send communications, including promotional communications, and to display advertising. In carrying out these purposes, we combine data we collect through the various store services you use to give you a more seamless, consistent and personalized experience. However, to enhance privacy, we have built in technological and procedural safeguards designed to prevent certain data combinations. For example, we store data we collect from you when you are unauthenticated (not signed in) separately from any account information that directly identifies you, such as your name, email address or phone number.\r\n&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Sharing Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;We share your personal data with your consent or as necessary to complete any transaction or provide any service you have requested or authorized. For example, we share your content with third parties when you tell us to do so. When you provide payment data to make a purchase, we will share payment data with banks and other entities that process payment transactions or provide other financial services, and for fraud prevention and credit risk reduction. In addition, we share personal data among our controlled affiliates and subsidiaries. We also share personal data with vendors or agents working on our behalf for the purposes described in this statement. For example, companies we\'ve hired to provide customer service support or assist in protecting and securing our systems and services may need access to personal data in order to provide those functions. In such cases, these companies must abide by our data privacy and security requirements and are not allowed to use personal data they receive from us for any other purpose. We may also disclose personal data as part of a corporate transaction such as a merger or sale of assets.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n    &lt;/ol&gt;\r\n&lt;/div&gt;', 'Datenschutz-Bestimmungen', '', ''),
(7, 1, 'Robert Johnson', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n		&lt;img src=&quot;image/catalog/article/article-1.jpg&quot; alt=&quot;Robert Johnson&quot;&gt;\r\n	\r\n&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Senior salesman&lt;/strong&gt; with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Robert Johnson', '', ''),
(7, 2, 'Robert Johnson', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n		&lt;img src=&quot;image/catalog/article/article-1.jpg&quot; alt=&quot;Robert Johnson&quot;&gt;\r\n	\r\n&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Senior salesman&lt;/strong&gt; with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Robert Johnson', '', ''),
(7, 3, 'Robert Johnson', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n		&lt;img src=&quot;image/catalog/article/article-1.jpg&quot; alt=&quot;Robert Johnson&quot;&gt;\r\n	\r\n&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Senior salesman&lt;/strong&gt; with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Robert Johnson', '', ''),
(8, 3, 'Jessica Priston', '&lt;div class=&quot;human_info&quot;&gt;\r\n	&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;&lt;img src=&quot;image/catalog/article/article-2.jpg&quot; alt=&quot;Jessica Priston&quot;&gt;&lt;/figure&gt;\r\n	&lt;p&gt;\r\n		Jessica Priston is our shop assistant who is always ready to help whatever you want to buy.\r\n		Our customers love her for friendly, helpful service.\r\n		Jessica\'s duty is to welcome customers, talk to them, help them and make their shopping trip memorable.\r\n		It’s what our clients love and have come to expect.\r\n		She also has an important part to play in helping our store team meet sales targets, whether it’s by recommending a product to a customer or making sure the shelves are stocked with the things they want to buy.\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		According to her own words, she has always been interested in sales and communicating with people.\r\n		Since her childhood, she has been spending a lot of time in her mother’s shop.\r\n		Jessica learned many secrets of her current profession there.\r\n		After her graduation from the university with BA in Accounting, Jessica spent 8 years working as a cashier and later as a shop assistant at local shops and supermarkets.\r\n		Five years ago she became a member of our team, where her skills were estimated at their true worth.\r\n		Today Jessica is not only the best member of our team.\r\n		She brings more positive emotions into our work than anyone else.\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Jessica Priston', '', ''),
(9, 1, 'Sam Kromstain', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;							&lt;img src=&quot;image/catalog/article/article-3.jpg&quot; alt=&quot;Sam Kromstain&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Wholesale manager.&lt;/strong&gt; Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Sam Kromstain', '', ''),
(9, 2, 'Sam Kromstain', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;							&lt;img src=&quot;image/catalog/article/article-3.jpg&quot; alt=&quot;Sam Kromstain&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Wholesale manager.&lt;/strong&gt; Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Sam Kromstain', '', ''),
(9, 3, 'Sam Kromstain', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;							&lt;img src=&quot;image/catalog/article/article-3.jpg&quot; alt=&quot;Sam Kromstain&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Wholesale manager.&lt;/strong&gt; Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Sam Kromstain', '', ''),
(10, 1, 'Edna Barton', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;									&lt;img src=&quot;image/catalog/article/article-4.jpg&quot; alt=&quot;Edna Barton&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt; &lt;strong&gt;Quality control manager&lt;/strong&gt;. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Edna Barton', '', ''),
(10, 2, 'Edna Barton', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;									&lt;img src=&quot;image/catalog/article/article-4.jpg&quot; alt=&quot;Edna Barton&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt; &lt;strong&gt;Quality control manager&lt;/strong&gt;. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Edna Barton', '', ''),
(10, 3, 'Edna Barton', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;									&lt;img src=&quot;image/catalog/article/article-4.jpg&quot; alt=&quot;Edna Barton&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt; &lt;strong&gt;Quality control manager&lt;/strong&gt;. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Edna Barton', '', ''),
(4, 1, 'About', '&lt;div class=&quot;text-center&quot;&gt;\r\n&lt;h4&gt;Catering to your requirements, handling your needs with care  &lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Our store is more than just another average online retailer. We sell not only top quality products, but give our customers a positive online shopping experience. Forget about struggling to do everything at once: taking care of the family, running your business, walking your dog, cleaning the house, doing the shopping, etc. Purchase the goods you need every day or just like in a few clicks or taps, depending on the device you use to access the Internet. We work to make your life more enjoyable. &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;14500&lt;/strong&gt;\r\n            &lt;h5&gt;Products available&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;81%&lt;/strong&gt;\r\n            &lt;h5&gt;Clients come back&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;10 mlns&lt;/strong&gt;\r\n            &lt;h5&gt;Site members&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Store Events&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-search100&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;For convenience of choice&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We think about the convenience of your choice. Our products are supplied with star rating that should help hesitant buyers to take a decision. What’s more, you can search our site if you know exactly what you are looking for or use a bunch of different filters that will considerably save your time and efforts.   &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-front16&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;Delivery to all regions&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We deliver our goods worldwide. No matter where you live, your order will be shipped in time and delivered right to your door or to any other location you have stated. The packages are handled with utmost care, so the ordered products will be handed to you safe and sound, just like you expect them to be.    &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;The highest quality of products&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We guarantee the highest quality of the products we sell. Several decades of successful operation and millions of happy customers let us feel certain about that. Besides, all items we sell pass thorough quality control, so no characteristics mismatch can escape the eye of our professionals.   &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;OUR TEAM&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;&lt;img alt=&quot;Robert Johnson&quot; src=&quot;image/catalog/article/article-1.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;Robert Johnson&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;&lt;img alt=&quot;Jessica Priston&quot; src=&quot;image/catalog/article/article-2.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;Jessica Priston&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;&lt;img alt=&quot;Sam Kromstain&quot; src=&quot;image/catalog/article/article-3.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;Sam Kromstain&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store.  &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;&lt;img alt=&quot;Edna Barton&quot; src=&quot;image/catalog/article/article-4.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;Edna Barton&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;h3&gt;Testimonials&lt;/h3&gt;\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-10 col-sm-offset-1&quot;&gt;\r\n        &lt;div class=&quot;testimonials&quot;&gt;\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;blockquote&gt;\r\n                    &lt;h5&gt;Mary Taba&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n                    &lt;p&gt;“Guys, you rock! Made a purchase at your store recently. The order has been shipped and delivered on time. The quality is superb! The price is quite reasonable. Told all my friends about your excellent service and the variety of choice. I think I’ll be your loyal customer in future as well. I wish your store many more years of prosperity.” &lt;/p&gt;\r\n\r\n\r\n\r\n                &lt;/blockquote&gt;\r\n            &lt;/div&gt;\r\n\r\n\r\n\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;blockquote&gt;\r\n                    &lt;h5&gt;Virginia Ubert&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n                    &lt;p&gt;“Having the distressing experience with some online shops before decided to say ‘’THANK YOU” to all personnel of this store. You are not only friendly, but deliver really good products in the shortest possible terms. In a word, I am absolutely happy with my purchase and the service. Everything was perfect!”&lt;/p&gt;\r\n\r\n\r\n\r\n                &lt;/blockquote&gt;\r\n            &lt;/div&gt;\r\n\r\n\r\n\r\n          \r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'About', '', ''),
(4, 2, ' Uber Uns', '&lt;div class=&quot;text-center&quot;&gt;\r\n&lt;h4&gt;Catering to your requirements, handling your needs with care  &lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Our store is more than just another average online retailer. We sell not only top quality products, but give our customers a positive online shopping experience. Forget about struggling to do everything at once: taking care of the family, running your business, walking your dog, cleaning the house, doing the shopping, etc. Purchase the goods you need every day or just like in a few clicks or taps, depending on the device you use to access the Internet. We work to make your life more enjoyable. &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;14500&lt;/strong&gt;\r\n            &lt;h5&gt;Products available&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;81%&lt;/strong&gt;\r\n            &lt;h5&gt;Clients come back&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;count-box&quot;&gt;&lt;strong&gt;10 mlns&lt;/strong&gt;\r\n            &lt;h5&gt;Site members&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Store Events&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-search100&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;For convenience of choice&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We think about the convenience of your choice. Our products are supplied with star rating that should help hesitant buyers to take a decision. What’s more, you can search our site if you know exactly what you are looking for or use a bunch of different filters that will considerably save your time and efforts.   &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-front16&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;Delivery to all regions&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We deliver our goods worldwide. No matter where you live, your order will be shipped in time and delivered right to your door or to any other location you have stated. The packages are handled with utmost care, so the ordered products will be handed to you safe and sound, just like you expect them to be.    &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;icon-box&quot;&gt;&lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;\r\n            &lt;h5&gt;The highest quality of products&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n            &lt;p&gt;We guarantee the highest quality of the products we sell. Several decades of successful operation and millions of happy customers let us feel certain about that. Besides, all items we sell pass thorough quality control, so no characteristics mismatch can escape the eye of our professionals.   &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;OUR TEAM&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;&lt;img alt=&quot;Robert Johnson&quot; src=&quot;image/catalog/article/article-1.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;Robert Johnson&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;&lt;img alt=&quot;Jessica Priston&quot; src=&quot;image/catalog/article/article-2.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;Jessica Priston&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;&lt;img alt=&quot;Sam Kromstain&quot; src=&quot;image/catalog/article/article-3.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;Sam Kromstain&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store.  &lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n    &lt;div class=&quot;col-sm-3&quot;&gt;\r\n        &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n            &lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;&lt;img alt=&quot;Edna Barton&quot; src=&quot;image/catalog/article/article-4.jpg&quot;&gt;&lt;/a&gt;\r\n        &lt;/figure&gt;\r\n        &lt;h5&gt;&lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;Edna Barton&lt;/a&gt;&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n        &lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n&lt;h3&gt;Testimonials&lt;/h3&gt;\r\n\r\n\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-10 col-sm-offset-1&quot;&gt;\r\n        &lt;div class=&quot;testimonials&quot;&gt;\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;blockquote&gt;\r\n                    &lt;h5&gt;Mary Taba&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n                    &lt;p&gt;“Guys, you rock! Made a purchase at your store recently. The order has been shipped and delivered on time. The quality is superb! The price is quite reasonable. Told all my friends about your excellent service and the variety of choice. I think I’ll be your loyal customer in future as well. I wish your store many more years of prosperity.” &lt;/p&gt;\r\n\r\n\r\n\r\n                &lt;/blockquote&gt;\r\n            &lt;/div&gt;\r\n\r\n\r\n\r\n            &lt;div class=&quot;item&quot;&gt;\r\n                &lt;blockquote&gt;\r\n                    &lt;h5&gt;Virginia Ubert&lt;/h5&gt;\r\n\r\n\r\n\r\n\r\n                    &lt;p&gt;“Having the distressing experience with some online shops before decided to say ‘’THANK YOU” to all personnel of this store. You are not only friendly, but deliver really good products in the shortest possible terms. In a word, I am absolutely happy with my purchase and the service. Everything was perfect!”&lt;/p&gt;\r\n\r\n\r\n\r\n                &lt;/blockquote&gt;\r\n            &lt;/div&gt;\r\n\r\n\r\n\r\n          \r\n\r\n\r\n\r\n        &lt;/div&gt;\r\n\r\n\r\n\r\n    &lt;/div&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', ' Uber Uns', '', ''),
(8, 1, 'Jessica Priston', '&lt;div class=&quot;human_info&quot;&gt;\r\n	&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;&lt;img src=&quot;image/catalog/article/article-2.jpg&quot; alt=&quot;Jessica Priston&quot;&gt;&lt;/figure&gt;\r\n	&lt;p&gt;\r\n		Jessica Priston is our shop assistant who is always ready to help whatever you want to buy.\r\n		Our customers love her for friendly, helpful service.\r\n		Jessica\'s duty is to welcome customers, talk to them, help them and make their shopping trip memorable.\r\n		It’s what our clients love and have come to expect.\r\n		She also has an important part to play in helping our store team meet sales targets, whether it’s by recommending a product to a customer or making sure the shelves are stocked with the things they want to buy.\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		According to her own words, she has always been interested in sales and communicating with people.\r\n		Since her childhood, she has been spending a lot of time in her mother’s shop.\r\n		Jessica learned many secrets of her current profession there.\r\n		After her graduation from the university with BA in Accounting, Jessica spent 8 years working as a cashier and later as a shop assistant at local shops and supermarkets.\r\n		Five years ago she became a member of our team, where her skills were estimated at their true worth.\r\n		Today Jessica is not only the best member of our team.\r\n		She brings more positive emotions into our work than anyone else.\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Jessica Priston', '', ''),
(8, 2, 'Jessica Priston', '&lt;div class=&quot;human_info&quot;&gt;\r\n	&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;&lt;img src=&quot;image/catalog/article/article-2.jpg&quot; alt=&quot;Jessica Priston&quot;&gt;&lt;/figure&gt;\r\n	&lt;p&gt;\r\n		Jessica Priston is our shop assistant who is always ready to help whatever you want to buy.\r\n		Our customers love her for friendly, helpful service.\r\n		Jessica\'s duty is to welcome customers, talk to them, help them and make their shopping trip memorable.\r\n		It’s what our clients love and have come to expect.\r\n		She also has an important part to play in helping our store team meet sales targets, whether it’s by recommending a product to a customer or making sure the shelves are stocked with the things they want to buy.\r\n	&lt;/p&gt;\r\n	&lt;p&gt;\r\n		According to her own words, she has always been interested in sales and communicating with people.\r\n		Since her childhood, she has been spending a lot of time in her mother’s shop.\r\n		Jessica learned many secrets of her current profession there.\r\n		After her graduation from the university with BA in Accounting, Jessica spent 8 years working as a cashier and later as a shop assistant at local shops and supermarkets.\r\n		Five years ago she became a member of our team, where her skills were estimated at their true worth.\r\n		Today Jessica is not only the best member of our team.\r\n		She brings more positive emotions into our work than anyone else.\r\n	&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Jessica Priston', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(3, 0, 0),
(5, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Deutsch', 'de-DE', '', '', '', 2, 1),
(3, 'Русский', 'ru-ru', '', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(848, 4, 'olark.74', 'footer_top', 1),
(844, 8, 'olark.74', 'footer_top', 0),
(838, 7, 'olark.74', 'footer_top', 0),
(837, 7, 'account', 'column_left', 1),
(830, 3, 'bestseller.69', 'column_left', 1),
(822, 6, 'html.71', 'footer_top', 1),
(824, 10, 'bestseller.69', 'column_left', 2),
(864, 9, 'html.71', 'footer_top', 0),
(860, 13, 'olark.74', 'footer_top', 0),
(843, 8, 'account', 'column_left', 2),
(821, 6, 'olark.74', 'footer_top', 0),
(829, 3, 'olark.74', 'footer_top', 1),
(851, 11, 'html.71', 'footer_top', 1),
(854, 5, 'olark.74', 'footer_top', 0),
(863, 9, 'account', 'column_left', 2),
(883, 1, 'banner.65', 'top', 2),
(882, 1, 'tm_slideshow.78', 'top', 1),
(859, 13, 'latest.72', 'column_left', 2),
(881, 1, 'html.71', 'footer_top', 1),
(880, 1, 'olark.74', 'footer_top', 0),
(820, 6, 'account', 'column_left', 1),
(823, 10, 'affiliate', 'column_left', 1),
(828, 3, 'bestseller.69', 'column_left', 2),
(836, 7, 'latest.72', 'column_left', 2),
(849, 4, 'html.71', 'footer_top', 1),
(842, 8, 'special.76', 'column_left', 1),
(847, 4, 'bestseller.69', 'column_left', 2),
(846, 4, 'account', 'column_left', 1),
(850, 11, 'olark.74', 'footer_top', 0),
(853, 5, 'account', 'column_left', 1),
(857, 2, 'html.71', 'footer_top', 1),
(852, 5, 'featured.68', 'column_left', 2),
(856, 2, 'olark.74', 'footer_top', 0),
(858, 13, 'bestseller.69', 'column_left', 1),
(862, 9, 'latest.72', 'column_left', 1),
(827, 3, 'account', 'column_left', 1),
(879, 1, 'featured.70', 'content_top', 2),
(878, 1, 'parallax.75', 'content_bottom', 2),
(819, 6, 'featured.68', 'column_left', 2),
(825, 10, 'olark.74', 'footer_top', 0),
(826, 10, 'html.71', 'footer_top', 1),
(831, 3, 'html.71', 'footer_top', 1),
(845, 8, 'html.71', 'footer_top', 1),
(841, 12, 'html.71', 'footer_top', 1),
(840, 12, 'olark.74', 'footer_top', 0),
(839, 7, 'html.71', 'footer_top', 1),
(855, 5, 'html.71', 'footer_top', 1),
(861, 13, 'html.71', 'footer_top', 1),
(865, 9, 'html.71', 'footer_top', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(216, 6, 0, 'account/%'),
(217, 10, 0, 'affiliate/%'),
(218, 3, 0, 'product/category'),
(231, 1, 0, 'common/home'),
(226, 2, 0, 'product/product'),
(224, 11, 0, 'information/information'),
(220, 7, 0, 'checkout/%'),
(222, 8, 0, 'information/contact'),
(228, 9, 0, 'information/sitemap'),
(223, 4, 0, ''),
(225, 5, 0, 'product/manufacturer'),
(221, 12, 0, 'product/compare'),
(227, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Centimeter', 'cm'),
(2, 3, 'Millimeter', 'mm'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'Ikea', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Suspendisse ', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Colette', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Marlow Accent', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Marlowe', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sonny', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(174, 'Export/Import Tool (V2.31) for OpenCart 2.x', 'Export/Import Tool (V2.31) for OpenCart 2.x', 'mhccorp.com', '2.x-2.31', '', '<modification>\n	<name>Export/Import Tool (V2.31) for OpenCart 2.x</name>\n	<code>Export/Import Tool (V2.31) for OpenCart 2.x</code>\n	<version>2.x-2.31</version>\n	<author>mhccorp.com</author>\n	<file path="admin/controller/common/menu.php">\n		<operation>\n			<search><![CDATA[$data[\'text_backup\'] = $this->language->get(\'text_backup\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_export_import\'] = $this->language->get(\'text_export_import\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'backup\'] = $this->url->link(\'tool/backup\', \'token=\' . $this->session->data[\'token\'],]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'export_import\'] = $this->url->link(\'tool/export_import\', \'token=\' . $this->session->data[\'token\'], true);\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/language/*/common/menu.php">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position="after"><![CDATA[\n				$_[\'text_export_import\'] = \'Export / Import\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/view/template/common/menu.tpl">\n		<operation>\n			<search><![CDATA[<li><a href="<?php echo $backup; ?>"><?php echo $text_backup; ?></a></li>]]></search>\n			<add position="replace">\n				<![CDATA[<li><a href="<?php echo $backup; ?>"><?php echo $text_backup; ?></a></li><li><a href="<?php echo $export_import; ?>"><?php echo $text_export_import; ?></a></li>\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>\n', 1, '2016-07-11 17:44:29'),
(175, 'TemplateMonster Ajax add to cart ', 'TemplateMonster_ajax_add', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Ajax add to cart </name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_ajax_add</code>\n	<!-- Featured -->\n	<file path="catalog/controller/module/featured.php">\n		<operation>\n			<search><![CDATA[$data[\'button_cart\'] = $this->language->get(\'button_cart\');]]></search>\n			<add position="after">\n				<![CDATA[ \n				$data[\'text_option\'] = $this->language->get(\'text_option\');\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\n				$data[\'button_upload\'] = $this->language->get(\'button_upload\');\n				$data[\'text_loading\'] = $this->language->get(\'text_loading\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position="before">\n				<![CDATA[\n				$options = array();\n				foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {\n				$product_option_value_data = array();\n				foreach ($option[\'product_option_value\'] as $option_value) {\n				if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\n				if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\n				$price_option = $this->currency->format($this->tax->calculate($option_value[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false), $this->session->data[\'currency\']);\n				} else {\n				$price_option = false;\n				}\n				$product_option_value_data[] = array(\n				\'product_option_value_id\' => $option_value[\'product_option_value_id\'],\n				\'option_value_id\'         => $option_value[\'option_value_id\'],\n				\'name\'                    => $option_value[\'name\'],\n				\'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\n				\'price\'                   => $price_option,\n				\'price_prefix\'            => $option_value[\'price_prefix\']\n				);\n				}\n				}\n				$options[] = array(\n				\'product_option_id\'    => $option[\'product_option_id\'],\n				\'product_option_value\' => $product_option_value_data,\n				\'option_id\'            => $option[\'option_id\'],\n				\'name\'                 => $option[\'name\'],\n				\'type\'                 => $option[\'type\'],\n				\'value\'                => $option[\'value\'],\n				\'required\'             => $option[\'required\']\n				);\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\'])]]></search>\n			<add position="after">\n				<![CDATA[\n				,\n				\'options\'     => $options\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- Specials -->\n	<file path="catalog/controller/module/{special,bestseller,latest}*.php|catalog/controller/product/{category,manufacturer,product,search,special}*.php">\n		<operation>\n			<search><![CDATA[$data[\'button_cart\'] = $this->language->get(\'button_cart\');]]></search>\n			<add position="after">\n				<![CDATA[ \n				$data[\'text_option\'] = $this->language->get(\'text_option\');\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\n				$data[\'button_upload\'] = $this->language->get(\'button_upload\');\n				$data[\'text_loading\'] = $this->language->get(\'text_loading\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position="before">\n				<![CDATA[\n				$options = array();\n				foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\n				$product_option_value_data = array();\n				foreach ($option[\'product_option_value\'] as $option_value) {\n				if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\n				if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\n				$price_option = $this->currency->format($this->tax->calculate($option_value[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false), $this->session->data[\'currency\']);\n				} else {\n				$price_option = false;\n				}\n				$product_option_value_data[] = array(\n				\'product_option_value_id\' => $option_value[\'product_option_value_id\'],\n				\'option_value_id\'         => $option_value[\'option_value_id\'],\n				\'name\'                    => $option_value[\'name\'],\n				\'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\n				\'price\'                   => $price_option,\n				\'price_prefix\'            => $option_value[\'price_prefix\']\n				);\n				}\n				}\n				$options[] = array(\n				\'product_option_id\'    => $option[\'product_option_id\'],\n				\'product_option_value\' => $product_option_value_data,\n				\'option_id\'            => $option[\'option_id\'],\n				\'name\'                 => $option[\'name\'],\n				\'type\'                 => $option[\'type\'],\n				\'value\'                => $option[\'value\'],\n				\'required\'             => $option[\'required\']\n				);\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/module/{bestseller,latest,special}*.php|catalog/controller/product/product.php">\n		<operation>\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])]]></search>\n			<add position="after">\n				<![CDATA[,\n				\'options\'     => $options\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/{search,special}*.php">\n		<operation>\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url)]]></search>\n			<add position="after">\n				<![CDATA[\n				,\n				\'options\'     => $options\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/manufacturer.php">\n		<operation>\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url) ]]></search>\n			<add position="after">\n				<![CDATA[\n				,\n				\'options\'     => $options\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/category.php">\n		<operation>\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url)]]></search>\n			<add position="after">\n				<![CDATA[\n				,\n				\'options\'     => $options\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/module/{featured,special,bestseller,latest}*.php|catalog/language/en-gb/product/{category,manufacturer,product,search,special}*.php">\n		<operation>\n			<search><![CDATA[$_[\'text_tax\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_option\']              = \'Available Options\';\n				$_[\'text_select\']              = \'--- Please Select ---\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/module/{featured,special,bestseller,latest}*.php|catalog/language/de-DE/product/{category,manufacturer,product,search,special}*.php">\n		<operation>\n			<search><![CDATA[$_[\'text_tax\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_option\']              = \'Mögliche Optionen\';\n				$_[\'text_select\']              = \'--- Bitte wählen ---\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/module/{featured,special,bestseller,latest}*.php|catalog/language/ru-ru/product/{category,manufacturer,product,search,special}*.php">\n		<operation>\n			<search><![CDATA[$_[\'text_tax\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_option\']              = \'Доступные варианты\';\n				$_[\'text_select\']              = \'--- Выберите ---\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:31'),
(199, 'TM Description fo banners', '2', 'http://www.templatemonster.com', '1.0', 'http://www.opencart.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Description fo banners</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.opencart.com</link>\n	<code>2</code>\n	<file path="admin/controller/design/banner.php">\n		<operation>\n			<search><![CDATA[\n			$data[\'button_remove\'] = $this->language->get(\'button_remove\');\n			]]></search>\n			<add position="after"><![CDATA[\n\n			$data[\'entry_description\'] = $this->language->get(\'entry_description\');\n			\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$data[\'banner_images\'][] = array(\n			]]></search>\n			<add position="after"><![CDATA[\n			\'description\'			   => $banner_image[\'description\'],\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/model/design/banner.php">\n		<operation>\n			<search><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . "\'"); ]]>\n			</search>\n			<add position="replace"><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . "\', description = \'" .  $this->db->escape($banner_image_description[\'description\']) . "\'"); ]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			$banner_image_description_data[$banner_image_description[\'language_id\']] = array(\'title\' => $banner_image_description[\'title\']);\n			]]></search>\n			<add position="after"><![CDATA[\n			$banner_image_description_desc[$banner_image_description[\'language_id\']] = array ( \'description\' => $banner_image_description[\'description\'] );\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			\'banner_image_description\' => $banner_image_description_data,\n			]]></search>\n			<add position="after"><![CDATA[\n			\'description\'              => $banner_image_description_desc,\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/language/english/design/banner.php">\n		<operation>\n			<search><![CDATA[\n			$_[\'entry_sort_order\']   = \'Sort Order\';\n			]]></search>\n			<add position="after"><![CDATA[\n			$_[\'entry_description\']       = \'Description:\';\n			]]></add>\n		</operation>\n	</file>\n	<file path="admin/view/template/design/banner_form.tpl">\n		<operation>\n			<search><![CDATA[\n			<td class="text-left"><?php echo $entry_title; ?></td>\n			]]></search>\n			<add position="after"><![CDATA[\n			<td class="text-left"><?php echo $entry_description; ?></td>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			<input type="text" name="banner_image[<?php echo $image_row; ?>][link]" value="<?php echo $banner_image[\'link\']; ?>" placeholder="<?php echo $entry_link; ?>" class="form-control" /></td>\n			]]></search>\n			<add position="before"><![CDATA[\n			<td>\n				<?php foreach ($languages as $language) { ?>\n				<textarea style="width:300px; height:150px;" name="banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]" id="description"><?php echo isset($banner_image[\'description\'][$language[\'language_id\']]) ? $banner_image[\'description\'][$language[\'language_id\']][\'description\'] : \'\'; ?></textarea>\n				<img src="view/image/flags/<?php echo $language[\'image\']; ?>" title="<?php echo $language[\'name\']; ?>" /><br />\n				<?php } ?>\n				</td>\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[\n			html += \'  <td class="text-left"><input type="text" name="banner_image[\' + image_row + \'][link]" value="" placeholder="<?php echo $entry_link; ?>" class="form-control" /></td>\';\n			]]></search>\n			<add position="before"><![CDATA[\n	 html += \'<td class="text-left">\';\n	<?php foreach ($languages as $language) { ?>\n	html += \'<textarea style="width:300px; height:150px;" name="banner_image[\' + image_row + \'][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]" id="description"></textarea><br />\';\n	<?php } ?>\n	html += \'</td>\';\n	]]></add>\n		</operation>\n	</file>\n	<file path="catalog/controller/module/banner.php">\n		<operation>\n			<search><![CDATA[\n			\'title\' => $result[\'title\'],\n			]]></search>\n			<add position="before"><![CDATA[\n			\'description\' => html_entity_decode($result[\'description\']),\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/controller/module/tm_slideshow.php">\n		<operation>\n			<search><![CDATA[\n			\'title\' => $result[\'title\'],\n			]]></search>\n			<add position="before"><![CDATA[\n			\'description\' => html_entity_decode($result[\'description\']),\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/controller/module/parallax.php">\n		<operation>\n			<search><![CDATA[\n			\'title\' => $result[\'title\'],\n			]]></search>\n			<add position="before"><![CDATA[\n			\'description\' => html_entity_decode($result[\'description\']),\n			]]></add>\n		</operation>\n	</file>\n\n</modification>', 1, '2016-07-11 18:49:20'),
(177, 'TemplateMonster Header Cart', 'TemplateMonster_cart', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Header Cart</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_cart</code>\n	<file path="catalog/controller/common/cart.php">\n		<operation>\n			<search><![CDATA[ $data[\'text_loading\'] = $this->language->get(\'text_loading\'); ]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_items2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));\n				$data[\'text_shopping_cart\'] = $this->language->get(\'text_shopping_cart\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/checkout/cart.php">\n		<operation>\n			<search><![CDATA[$json[\'total\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));]]></search>\n			<add position="after">\n				<![CDATA[\n				$json[\'total2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/common/cart.php|catalog/language/en-gb/checkout/cart.php">\n		<operation>\n			<search><![CDATA[$_[\'text_items\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_items2\']    = \'%s\';\n				$_[\'text_shopping_cart\']    = \'Shopping Cart: \';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/common/cart.php|catalog/language/de-DE/checkout/cart.php">\n		<operation>\n			<search><![CDATA[$_[\'text_recurring\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_shopping_cart\']= \'Warenkorb: \';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/common/cart.php|catalog/language/ru-ru/checkout/cart.php">\n		<operation>\n			<search><![CDATA[$_[\'text_recurring\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_shopping_cart\'] = \'Корзина: \';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:36'),
(178, 'TemplateMonster GTMetrix', 'gtmetrix', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster GTMetrix</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>gtmetrix</code>\n	<!-- catalog -->\n	<file path="catalog/controller/product/category.php">\n		<operation>\n			<search><![CDATA[$data[\'thumb\'] = $this->model_tool_image->resize($category_info[\'image\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'thumb_width\']  = $this->config->get($this->config->get(\'config_theme\') . \'_image_category_width\');\n				$data[\'thumb_height\'] = $this->config->get($this->config->get(\'config_theme\') . \'_image_category_height\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'categories\'][] = array(]]></search>\n			<add position="before"><![CDATA[\n				$image = $this->model_tool_image->resize($result[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_category_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_category_height\'));\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'name\' => $result[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\n			<add position="after">\n				<![CDATA[\n				\'thumb\'        => $image,\n				]]>\n			</add>\n		</operation>\n		\n	</file>\n</modification>', 1, '2016-07-11 17:44:39'),
(179, 'TemplateMonster Labels', 'TemplateMonster_labels', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Labels</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_labels</code>\n	<!-- real things -->\n	<file path="catalog/controller/product/{category,product,search,special}.php|catalog/controller/module/{special,latest,bestseller}.php">\n		<operation>\n			<search index="0"><![CDATA[$data[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_sale\'] = $this->language->get(\'text_sale\');\n				$data[\'text_new\'] = $this->language->get(\'text_new\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'products\'] = array();]]></search>\n			<add position="before">\n				<![CDATA[\n				$data[\'label_sale\'] = $this->config->get(\'config_label_sale\');\n				$data[\'label_discount\'] = $this->config->get(\'config_label_discount\');\n				$data[\'label_new\'] = $this->config->get(\'config_label_new\');\n				if ($this->config->get(\'config_label_new\')) {\n				$product_new = $this->model_catalog_product->getLatestProducts($this->config->get(\'config_label_new_limit\'));\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$special = $this->currency->format]]></search>\n			<add position="after">\n				<![CDATA[\n				$label_discount = \'-\' . (int)(100 - ($result[\'special\'] * 100 / $result[\'price\'])) . \'%\';\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$special = false;]]></search>\n			<add position="after">\n				<![CDATA[\n				$label_discount = false;\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'special\'     => $special,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'label_discount\' => $label_discount,\n				\'label_new\' => $this->config->get(\'config_label_new\') ? $label_new : 0,\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[if ($result[\'image\']) {]]></search>\n			<add position="before">\n				<![CDATA[\n				if ($this->config->get(\'config_label_new\')) {\n				$label_new = 0;\n				foreach ($product_new as $product_new_id => $product) {\n				if ($product_new[$product_new_id][\'product_id\'] == $result[\'product_id\']) {\n				$label_new = 1;\n				break;\n				}\n				}\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- featured -->\n	<file path="catalog/controller/module/featured.php">\n		<operation>\n			<search index="0"><![CDATA[$data[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_sale\'] = $this->language->get(\'text_sale\');\n				$data[\'text_new\'] = $this->language->get(\'text_new\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'products\'] = array();]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'label_sale\'] = $this->config->get(\'config_label_sale\');\n				$data[\'label_discount\'] = $this->config->get(\'config_label_discount\');\n				$data[\'label_new\'] = $this->config->get(\'config_label_new\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$special = $this->currency->format]]></search>\n			<add position="after">\n				<![CDATA[\n				$label_discount = \'-\' . (int)(100 - ($product_info[\'special\'] * 100 / $product_info[\'price\'])) . \'%\';\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$special = false;]]></search>\n			<add position="after">\n				<![CDATA[\n				$label_discount = false;\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'special\'     => $special,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'label_discount\' => $label_discount,\n				\'label_new\' => $this->config->get(\'config_label_new\') ? $label_new : 0,\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$products = array_slice($setting[\'product\'], 0, (int)$setting[\'limit\']);]]></search>\n			<add position="after">\n				<![CDATA[\n				if ($this->config->get(\'config_label_new\')) {\n				$product_new = $this->model_catalog_product->getLatestProducts($this->config->get(\'config_label_new_limit\'));\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$product_info = $this->model_catalog_product->getProduct($product_id);]]></search>\n			<add position="after">\n				<![CDATA[\n				if ($this->config->get(\'config_label_new\')) {\n				$label_new = 0;\n				foreach ($product_new as $product_new_id => $product) {\n				if ($product_new[$product_new_id][\'product_id\'] == $product_id) {\n				$label_new = 1;\n				break;\n				}\n				}\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- manufacturer -->\n	<file path="catalog/controller/product/manufacturer.php">\n		<operation>\n			<search><![CDATA[$data[\'heading_title\'] = $manufacturer_info[\'name\'];]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_sale\'] = $this->language->get(\'text_sale\');\n				$data[\'text_new\'] = $this->language->get(\'text_new\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'products\'] = array();]]></search>\n			<add position="before">\n				<![CDATA[\n				$data[\'label_sale\'] = $this->config->get(\'config_label_sale\');\n				$data[\'label_discount\'] = $this->config->get(\'config_label_discount\');\n				if ($this->config->get(\'config_label_new\')) {\n				$product_new = $this->model_catalog_product->getLatestProducts($this->config->get(\'config_label_new_limit\'));\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$special = $this->currency->format]]></search>\n			<add position="after">\n				<![CDATA[\n				$label_discount = \'-\' . (int)(100 - ($result[\'special\'] * 100 / $result[\'price\'])) . \'%\';\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$special = false;]]></search>\n			<add position="after">\n				<![CDATA[\n				$label_discount = false;\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'special\'     => $special,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'label_discount\' => $label_discount,\n				\'label_new\' => $this->config->get(\'config_label_new\') ? $label_new : 0,\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[if ($result[\'image\']) {]]></search>\n			<add position="before">\n				<![CDATA[\n				if ($this->config->get(\'config_label_new\')) {\n				$label_new = 0;\n				foreach ($product_new as $product_new_id => $product) {\n				if ($product_new[$product_new_id][\'product_id\'] == $result[\'product_id\']) {\n				$label_new = 1;\n				break;\n				}\n				}\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- language -->\n	<file path="catalog/language/en-gb/product/{category,manufacturer,product,search,special}.php|catalog/language/en-gb/module/{featured,special,latest,bestseller}.php">\n		<operation>\n			<search index="0"><![CDATA[$_[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_sale\']      = \'Sale\';\n				$_[\'text_new\'] = \'New\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/product/{category,manufacturer,product,search,special}.php|catalog/language/de-DE/module/{featured,special,latest,bestseller}.php">\n		<operation>\n			<search index="0"><![CDATA[$_[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_sale\']      = \'Verkauf\';\n				$_[\'text_new\'] = \'Neu\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/product/{category,manufacturer,product,search,special}.php|catalog/language/ru-ru/module/{featured,special,latest,bestseller}.php">\n		<operation>\n			<search index="0"><![CDATA[$_[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_sale\']      = \'Скидка\';\n				$_[\'text_new\'] = \'Новый\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- admin panel -->\n	<file path="admin/view/template/setting/setting.tpl">\n		<operation>\n			<search><![CDATA[<legend><?php echo $text_product; ?></legend>]]></search>\n			<add position="after">\n				<![CDATA[\n				<div class="form-group">\n					<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $help_label_sale; ?>"><?php echo $entry_label_sale; ?></span></label>\n					<div class="col-sm-10">\n						<label class="radio-inline">\n							<?php if ($config_label_sale) { ?>\n							<input type="radio" name="config_label_sale" value="1" checked="checked" />\n							<?php echo $text_yes; ?>\n							<?php } else { ?>\n							<input type="radio" name="config_label_sale" value="1" />\n							<?php echo $text_yes; ?>\n							<?php } ?>\n						</label>\n						<label class="radio-inline">\n							<?php if (!$config_label_sale) { ?>\n							<input type="radio" name="config_label_sale" value="0" checked="checked" />\n							<?php echo $text_no; ?>\n							<?php } else { ?>\n							<input type="radio" name="config_label_sale" value="0" />\n							<?php echo $text_no; ?>\n							<?php } ?>\n						</label>\n					</div>\n				</div>\n				<div class="form-group">\n					<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $help_label_discount; ?>"><?php echo $entry_label_discount; ?></span></label>\n					<div class="col-sm-10">\n						<label class="radio-inline">\n							<?php if ($config_label_discount) { ?>\n							<input type="radio" name="config_label_discount" value="1" checked="checked" />\n							<?php echo $text_yes; ?>\n							<?php } else { ?>\n							<input type="radio" name="config_label_discount" value="1" />\n							<?php echo $text_yes; ?>\n							<?php } ?>\n						</label>\n						<label class="radio-inline">\n							<?php if (!$config_label_discount) { ?>\n							<input type="radio" name="config_label_discount" value="0" checked="checked" />\n							<?php echo $text_no; ?>\n							<?php } else { ?>\n							<input type="radio" name="config_label_discount" value="0" />\n							<?php echo $text_no; ?>\n							<?php } ?>\n						</label>\n					</div>\n				</div>\n				<div class="form-group">\n					<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $help_label_new; ?>"><?php echo $entry_label_new; ?></span></label>\n					<div class="col-sm-10">\n						<label class="radio-inline">\n							<?php if ($config_label_new) { ?>\n							<input type="radio" name="config_label_new" value="1" checked="checked" />\n							<?php echo $text_yes; ?>\n							<?php } else { ?>\n							<input type="radio" name="config_label_new" value="1" />\n							<?php echo $text_yes; ?>\n							<?php } ?>\n						</label>\n						<label class="radio-inline">\n							<?php if (!$config_label_new) { ?>\n							<input type="radio" name="config_label_new" value="0" checked="checked" />\n							<?php echo $text_no; ?>\n							<?php } else { ?>\n							<input type="radio" name="config_label_new" value="0" />\n							<?php echo $text_no; ?>\n							<?php } ?>\n						</label>\n					</div>\n				</div>\n				<div class="form-group required label-new-option <?php echo $config_label_new ? \'\' : \'hidden\'; ?>">\n					<label class="col-sm-2 control-label" for="input-label_new_limit">\n						<?php echo $entry_label_new_limit; ?>\n					</label>\n					<div class="col-sm-10">\n						<input type="text" name="config_label_new_limit" value="<?php echo $config_label_new_limit; ?>" placeholder="<?php echo $entry_label_new_limit; ?>" id="input-label_new_limit" class="form-control" />\n						<?php if ($error_label_new_limit) { ?>\n						<div class="text-danger">\n							<?php echo $error_label_new_limit; ?>\n						</div>\n						<?php } ?>\n					</div>\n				</div>\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[<?php echo $footer; ?>]]></search>\n			<add position="before">\n				<![CDATA[\n				<script type="text/javascript">\n					$(document).ready(function(){\n					$(\'[name=\\\'config_label_new\\\']\').on(\'click\', function(){\n					toggle($(this), "1", $(\'.label-new-option\'));\n					});\n					});\n					function toggle(e1, v, e2){\n					if (e1.val() == v) {\n					e2.removeClass(\'hidden\');\n					} else {\n					e2.addClass(\'hidden\');\n					}\n					}\n				</script>\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/controller/setting/setting.php">\n		<operation>\n			<search><![CDATA[if (isset($this->request->post[\'config_name\'])) {]]></search>\n			<add position="before">\n				<![CDATA[\n				if (isset($this->request->post[\'config_label_sale\'])) {\n				$data[\'config_label_sale\'] = $this->request->post[\'config_label_sale\'];\n				} else {\n				$data[\'config_label_sale\'] = $this->config->get(\'config_label_sale\');\n				}\n				if (isset($this->request->post[\'config_label_discount\'])) {\n				$data[\'config_label_discount\'] = $this->request->post[\'config_label_discount\'];\n				} else {\n				$data[\'config_label_discount\'] = $this->config->get(\'config_label_discount\');\n				}\n				if (isset($this->request->post[\'config_label_new\'])) {\n				$data[\'config_label_new\'] = $this->request->post[\'config_label_new\'];\n				} else {\n				$data[\'config_label_new\'] = $this->config->get(\'config_label_new\');\n				}\n				if (isset($this->request->post[\'config_label_new_limit\'])) {\n				$data[\'config_label_new_limit\'] = $this->request->post[\'config_label_new_limit\'];\n				} else {\n				$data[\'config_label_new_limit\'] = $this->config->get(\'config_label_new_limit\');\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[if (isset($this->error[\'name\'])) {]]></search>\n			<add position="before">\n				<![CDATA[\n				if (isset($this->error[\'label_new_limit\'])) {\n				$data[\'error_label_new_limit\'] = $this->error[\'label_new_limit\'];\n				} else {\n				$data[\'error_label_new_limit\'] = \'\';\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[if (!$this->user->hasPermission(\'modify\', \'setting/setting\')) {]]></search>\n			<add position="before">\n				<![CDATA[\n				if ($this->request->post[\'config_label_new\'] && (!is_numeric($this->request->post[\'config_label_new_limit\']) || $this->request->post[\'config_label_new_limit\'] < 1)) {\n				$this->error[\'label_new_limit\'] = $this->language->get(\'error_label_new_limit\');\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'entry_status\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$data[\'entry_label_sale\'] = $this->language->get(\'entry_label_sale\');\n				$data[\'entry_label_discount\'] = $this->language->get(\'entry_label_discount\');\n				$data[\'entry_label_new\'] = $this->language->get(\'entry_label_new\');\n				$data[\'entry_label_new_limit\'] = $this->language->get(\'entry_label_new_limit\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'help_compression\'] = $this->language->get(\'help_compression\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'help_label_sale\'] = $this->language->get(\'help_label_sale\');\n				$data[\'help_label_discount\'] = $this->language->get(\'help_label_discount\');\n				$data[\'help_label_new\'] = $this->language->get(\'help_label_new\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/language/en-gb/setting/setting.php">\n		<operation>\n			<search><![CDATA[$_[\'entry_status\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'entry_label_sale\'] = \'Show Label Sale\';\n				$_[\'entry_label_discount\'] = \'Show label Discount\';\n				$_[\'entry_label_new\'] = \'Show label New\';\n				$_[\'entry_label_new_limit\'] = \'label new limit\';\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$_[\'help_compression\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'help_label_sale\'] = \'Show Label Sale\';\n				$_[\'help_label_discount\'] = \'Show label Discount\';\n				$_[\'help_label_new\'] = \'Show label New\';\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search index="0"><![CDATA[$_[\'entry_error_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'error_label_new_limit\']              = \'label new limit must be numeric and > 0\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:41'),
(180, 'TemplateMonster Lazy load', 'TemplateMonster_lazy_load', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Lazy load</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_lazy_load</code>\n	<file path="catalog/controller/module/{featured,bestseller,latest,special}.php">\n		<operation>\n			<search><![CDATA[ \'thumb\'       => $image,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'img-width\'  => $setting[\'width\'],\n				\'img-height\' => $setting[\'height\'],\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/{category,manufacturer,product,search,special}.php">\n		<operation>\n			<search><![CDATA[\'thumb\'       => $image,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'img-width\'  => $this->config->get($this->config->get(\'config_theme\') . \'_image_related_width\'),\n				\'img-height\' => $this->config->get($this->config->get(\'config_theme\') . \'_image_related_height\'),\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:44'),
(181, 'TemplateMonster Theme Path', 'TemplateMonster_theme_path', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Theme Path</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_theme_path</code>\n	<file path="catalog/controller/common/{header,footer}.php">\n		<operation>\n			<search><![CDATA[$this->load->language(\'common/]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'theme_path\'] = $this->config->get($this->config->get(\'config_theme\') . \'_directory\');\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:46'),
(182, 'TemplateMonster Product', 'TemplateMonster_product', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Product</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_product</code>\n	<file path="system/library/document.php">\n		<operation>\n			<search><![CDATA[private $scripts = array();]]></search>\n			<add position="after">\n				<![CDATA[\n				private $addThisMeta = array();\n\n				public function add_AddThisMeta($property, $content) {\n				$this->addThisMeta[$property] = array(\n				\'property\' => $property,\n				\'content\'  => $content\n				);\n				}\n\n				public function get_AddThisMeta() {\n				return $this->addThisMeta;\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/common/header.php">\n		<operation>\n			<search><![CDATA[$data[\'scripts\'] = $this->document->getScripts();]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'add_this_meta\'] = $this->document->get_AddThisMeta();\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/product.php">\n		<operation>\n			<search><![CDATA[$data[\'description\'] = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');]]></search>\n			<add position="replace">\n				<![CDATA[\n				$desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$pos = strpos($desc,\'<iframe\');\n				if (is_int($pos)) {\n				$pos2 = strpos($desc, \'</iframe>\') + 9;\n				$video = substr($desc, $pos, $pos2);\n				$data[\'video\'] = $video;\n				$data[\'description\'] = str_replace($video, \'\', $desc);\n				if (method_exists($this->document, \'add_AddThisMeta\')) {\n				$this->document->add_AddThisMeta(\'description\', str_replace(\'"\', \'\\\'\', strip_tags($data[\'description\'])));\n				}\n				} else{\n				$data[\'video\'] = \'\';\n				$data[\'description\'] = $desc;\n				if (method_exists($this->document, \'add_AddThisMeta\')) {\n				$this->document->add_AddThisMeta(\'description\', str_replace(\'"\', \'\\\'\', strip_tags($data[\'description\'])));\n				}\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'popup\'] = $this->model_tool_image->resize]]></search>\n			<add position="after">\n				<![CDATA[\n				if (method_exists($this->document, \'add_AddThisMeta\')) {\n				$this->document->add_AddThisMeta(\'image\', $data[\'popup\']);\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'tab_attribute\'] = $this->language->get(\'tab_attribute\');]]></search>\n			<add position="before">\n				<![CDATA[ \n				$data[\'tab_video\'] = $this->language->get(\'tab_video\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'points\'] = $product_info[\'points\'];]]></search>\n			<add position="after">\n				<![CDATA[ \n				$data[\'stock_status\'] = $product_info[\'quantity\'];\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'images\'] = array();]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'image_additional_width\']  = $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_width\');\n				$data[\'image_additional_height\'] = $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_height\');\n				$data[\'popup_width\']             = $this->config->get($this->config->get(\'config_theme\') . \'_image_popup_width\');\n				$data[\'popup_height\']            = $this->config->get($this->config->get(\'config_theme\') . \'_image_popup_height\');\n				$data[\'thumb_width\']             = $this->config->get($this->config->get(\'config_theme\') . \'_image_thumb_width\');\n				$data[\'thumb_height\']            = $this->config->get($this->config->get(\'config_theme\') . \'_image_thumb_height\');\n\n				if ($product_info[\'image\']) {\n				$data[\'images\'][] = array(\n				\'popup\' => $this->model_tool_image->resize($product_info[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_popup_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_popup_height\')),\n				\'thumb\' => $this->model_tool_image->resize($product_info[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_thumb_height\')),\n				\'additional\' => $this->model_tool_image->resize($product_info[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_height\'))\n				);\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'thumb\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_height\'))]]></search>\n			<add position="replace">\n				<![CDATA[\n				\'thumb\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_thumb_height\')),\n				\'additional\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_additional_height\'))\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\n			<add position="before">\n				<![CDATA[\n				$this->document->addScript(\'catalog/view/theme/\' . $this->config->get($this->config->get(\'config_theme\') . \'_directory\') . \'/js/jquery.elevatezoom.js\', \'footer\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js\');]]>\n			</search>\n			<add position="replace">\n				<![CDATA[]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/magnific/magnific-popup.css\');]]>\n			</search>\n			<add position="replace">\n				<![CDATA[]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/datetimepicker/moment.js\');]]>\n			</search>\n			<add position="replace">\n				<![CDATA[]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js\');]]>\n			</search>\n			<add position="replace">\n				<![CDATA[]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css\');]]>\n			</search>\n			<add position="replace">\n				<![CDATA[]]>\n			</add>\n		</operation>\n	</file>\n	<!-- catalog language -->\n	<file path="catalog/language/{en-gb,de-DE}/product/product.php">\n		<operation>\n			<search><![CDATA[$_[\'tab_review\']]]></search>\n			<add position="before">\n				<![CDATA[ \n				$_[\'tab_video\'] = \'Video\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/product/product.php">\n		<operation>\n			<search><![CDATA[$_[\'tab_review\']]]></search>\n			<add position="before">\n				<![CDATA[ \n				$_[\'tab_video\'] = \'Видео\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:49');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(183, 'TemplateMonster QuickView', 'TemplateMonster_quickview', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster QuickView</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_quickview</code>\n	<file path="catalog/controller/module/{special,bestseller,latest,featured}.php">\n		<operation>\n			<search><![CDATA[public function index($setting) {]]></search>\n			<add position="after">\n				<![CDATA[\n				static $module = 0;\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[return $this->load->view(\'module/]]></search>\n			<add position="before">\n				<![CDATA[\n				$data[\'module\'] = $module++;\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'button_cart\'] = $this->language->get(\'button_cart\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_quick\']        = $this->language->get(\'text_quick\');\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n				$data[\'text_model\']        = $this->language->get(\'text_model\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/module/{special,bestseller,latest}.php">\n		<operation>\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position="before">\n				<![CDATA[\n				$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$pos = strpos($desc,\'<iframe\');\n				if (is_int($pos)) {\n				$pos2 = strpos($desc, \'</iframe>\') + 9;\n				$video = substr($desc, $pos, $pos2);\n				$quick_descr = str_replace($video, \'\', $desc);\n				} else{\n				$quick_descr = $desc;\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'rating\'      => $rating,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'author\'        => $result[\'manufacturer\'],\n				\'description1\'  => $quick_descr,\n				\'manufacturers\' => $data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\n				\'model\'         => $result[\'model\'],\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/module/featured.php">\n		<operation>\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position="before">\n				<![CDATA[\n				$desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$pos = strpos($desc,\'<iframe\');\n				if (is_int($pos)) {\n				$pos2 = strpos($desc, \'</iframe>\') + 9;\n				$video = substr($desc, $pos, $pos2);\n				$quick_descr = str_replace($video, \'\', $desc);\n				} else{\n				$quick_descr = $desc;\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'rating\'      => $rating,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'author\'        => $product_info[\'manufacturer\'],\n				\'description1\'  => $quick_descr,\n				\'manufacturers\' => $data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $product_info[\'manufacturer_id\']),\n				\'model\'         => $product_info[\'model\'],\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/{category,manufacturer,search,special,product}.php">\n		<operation>\n			<search><![CDATA[$data[\'button_cart\'] = $this->language->get(\'button_cart\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/{category,manufacturer,search,special}.php">\n		<operation>\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position="before">\n				<![CDATA[\n				$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$pos = strpos($desc,\'<iframe\');\n				if (is_int($pos)) {\n				$pos2 = strpos($desc, \'</iframe>\') + 9;\n				$video = substr($desc, $pos, $pos2);\n				$quick_descr = str_replace($video, \'\', $desc);\n				} else{\n				$quick_descr = $desc;\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\n			<add position="after">\n				<![CDATA[\n				\'author\'        => $result[\'manufacturer\'],\n				\'description1\'  => $quick_descr,\n				\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\n				\'model\'         => $result[\'model\'],\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/product/product.php">\n		<operation>\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\n			<add position="before">\n				<![CDATA[\n				$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$pos = strpos($desc,\'<iframe\');\n				if (is_int($pos)) {\n				$pos2 = strpos($desc, \'</iframe>\') + 9;\n				$video = substr($desc, $pos, $pos2);\n				$quick_descr = str_replace($video, \'\', $desc);\n				} else{\n				$quick_descr = $desc;\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[\'rating\'      => $rating,]]></search>\n			<add position="after">\n				<![CDATA[\n				\'author\'        => $result[\'manufacturer\'],\n				\'description1\'  => $quick_descr,\n				\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\n				\'model\'         => $result[\'model\'],\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/module/{special,bestseller,latest,featured}.php">\n		<operation>\n			<search><![CDATA[ $_[\'heading_title\']]]></search>\n			<add position="before"><![CDATA[\n				$_[\'text_manufacturer\'] = \'Brand:\';\n				$_[\'text_model\']        = \'Model:\';\n				$_[\'text_quick\']        = \'Quick View\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/product/{category,manufacturer,search,special,product}.php">\n		<operation>\n			<search index="0"><![CDATA[$_[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_quick\'] = \'Quick View\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/module/{special,bestseller,latest,featured}.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\n			<add position="before">\n				<![CDATA[\n				$_[\'text_manufacturer\'] = \'Брєнд\';\n				$_[\'text_model\']        = \'Модель:\';\n				$_[\'text_quick\']        = \'Быстрый просмотр\'; \n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/product/{category,manufacturer,search,special,product}.php">\n		<operation>\n			<search index="0"><![CDATA[$_[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_quick\'] = \'Быстрый просмотр\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/module/{special,bestseller,latest,featured}.php">\n		<operation>\n			<search><![CDATA[$_[\'text_tax\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_manufacturer\'] = \'Marke:\';\n				$_[\'text_model\']        = \'Model:\';\n				$_[\'text_quick\']        = \'Vorschau\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/product/{category,manufacturer,search,special,product}.php">\n		<operation>\n			<search index="0"><![CDATA[$_[\'text_]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_quick\'] = \'Vorschau\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:44:51'),
(184, 'TemplateMonster Simple Blog Admin', 'TemplateMonster_blog_admin', 'http://www.templatemonster.com', '2.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="UTF-8" ?>\n<!-- Based on Simple Blog Module -->\n<modification>\n	<name>TemplateMonster Simple Blog Admin</name>\n	<version>2.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_blog_admin</code>\n	<!-- controller -->\n	<file path="admin/controller/common/menu.php">\n		<operation>\n			<search><![CDATA[$data[\'text_openbay_order_import\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_simple_blogs\'] = $this->language->get(\'text_simple_blogs\');\n				$data[\'text_simple_blog_author\'] = $this->language->get(\'text_simple_blog_author\');\n				$data[\'text_simple_blog_category\'] = $this->language->get(\'text_simple_blog_category\');\n				$data[\'text_simple_blog_article\'] = $this->language->get(\'text_simple_blog_article\');\n				$data[\'text_simple_blog_article_comment\'] = $this->language->get(\'text_simple_blog_article_comment\');\n				$data[\'text_simple_blog_view_report\'] = $this->language->get(\'text_simple_blog_view_report\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'openbay_link_amazonus_links\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'simple_blog_author\'] = $this->url->link(\'simple_blog/author\', \'token=\' . $this->session->data[\'token\'], true);\n				$data[\'simple_blog_category\'] = $this->url->link(\'simple_blog/category\', \'token=\' . $this->session->data[\'token\'], true);\n				$data[\'simple_blog_article\'] = $this->url->link(\'simple_blog/article\', \'token=\' . $this->session->data[\'token\'], true);\n				$data[\'simple_blog_comment\'] = $this->url->link(\'simple_blog/comment\', \'token=\' . $this->session->data[\'token\'], true);\n				$data[\'simple_blog_view_report\'] = $this->url->link(\'simple_blog/report\', \'token=\' . $this->session->data[\'token\'], true);\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/controller/setting/setting.php">\n		<operation>\n			<search><![CDATA[$data[\'entry_status\'] = $this->language->get(\'entry_status\');]]></search>\n			<add position="after"><![CDATA[\n				$data[\'entry_comment_approval\'] = $this->language->get(\'entry_comment_approval\');\n				$data[\'entry_author_information\'] = $this->language->get(\'entry_author_information\');\n				$data[\'entry_show_social_site_option\'] = $this->language->get(\'entry_show_social_site_option\');\n				$data[\'entry_related_article\'] = $this->language->get(\'entry_related_article\');\n				$data[\'entry_limit\'] = $this->language->get(\'entry_limit\');\n				$data[\'entry_description_limit\'] = $this->language->get(\'entry_description_limit\');\n\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'text_error\'] = $this->language->get(\'text_error\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_simple_blog\'] = $this->language->get(\'text_simple_blog\');\n				$data[\'text_blog_category\'] = $this->language->get(\'text_blog_category\');\n				$data[\'tab_blog\'] = $this->language->get(\'tab_blog\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'help_compression\'] = $this->language->get(\'help_compression\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'help_comment_approval\'] = $this->language->get(\'help_comment_approval\');\n				$data[\'help_author_information\'] = $this->language->get(\'help_author_information\');\n				$data[\'help_related_article\'] = $this->language->get(\'help_related_article\');\n				$data[\'help_show_social_site_option\'] = $this->language->get(\'help_show_social_site_option\');\n				$data[\'help_show_author\'] = $this->language->get(\'help_show_author\');\n				$data[\'help_limit\'] = $this->language->get(\'help_limit\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search>\n			<add position="before">\n				<![CDATA[\n				if (isset($this->request->post[\'config_simple_blog_status\'])) {\n				$data[\'config_simple_blog_status\'] = $this->request->post[\'config_simple_blog_status\'];\n				} else if ($this->config->get(\'config_simple_blog_status\')) {\n				$data[\'config_simple_blog_status\'] = $this->config->get(\'config_simple_blog_status\');\n				}\n\n				if (isset($this->request->post[\'config_simple_blog_comment_auto_approval\'])) {\n				$data[\'config_simple_blog_comment_auto_approval\'] = $this->request->post[\'config_simple_blog_comment_auto_approval\'];\n				} else if ($this->config->get(\'config_simple_blog_comment_auto_approval\')) {\n				$data[\'config_simple_blog_comment_auto_approval\'] = $this->config->get(\'config_simple_blog_comment_auto_approval\');\n				}\n\n				if (isset($this->request->post[\'config_simple_blog_author_information\'])) {\n				$data[\'config_simple_blog_author_information\'] = $this->request->post[\'config_simple_blog_author_information\'];\n				} else if ($this->config->get(\'config_simple_blog_author_information\')) {\n				$data[\'config_simple_blog_author_information\'] = $this->config->get(\'config_simple_blog_author_information\');\n				}\n\n				if (isset($this->request->post[\'config_simple_blog_share_social_site\'])) {\n				$data[\'config_simple_blog_share_social_site\'] = $this->request->post[\'config_simple_blog_share_social_site\'];\n				} else if ($this->config->get(\'config_simple_blog_share_social_site\')) {\n				$data[\'config_simple_blog_share_social_site\'] = $this->config->get(\'config_simple_blog_share_social_site\');\n				}\n\n				if (isset($this->request->post[\'config_simple_blog_related_articles\'])) {\n				$data[\'config_simple_blog_related_articles\'] = $this->request->post[\'config_simple_blog_related_articles\'];\n				} else if ($this->config->get(\'config_simple_blog_related_articles\')) {\n				$data[\'config_simple_blog_related_articles\'] = $this->config->get(\'config_simple_blog_related_articles\');\n				}\n\n				if (isset($this->request->post[\'config_simple_blog_limit\'])) {\n				$data[\'config_simple_blog_limit\'] = $this->request->post[\'config_simple_blog_limit\'];\n				} elseif ($this->config->get(\'config_simple_blog_limit\')) {\n				$data[\'config_simple_blog_limit\'] = $this->config->get(\'config_simple_blog_limit\');\n				}\n				if (isset($this->request->post[\'config_simple_blog_description_limit\'])) {\n				$data[\'config_simple_blog_description_limit\'] = $this->request->post[\'config_simple_blog_description_limit\'];\n				} elseif ($this->config->get(\'config_simple_blog_description_limit\')) {\n				$data[\'config_simple_blog_description_limit\'] = $this->config->get(\'config_simple_blog_description_limit\');\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- view -->\n	<file path="admin/view/template/common/menu.tpl">\n		<operation>\n			<search><![CDATA[<li id="reports">]]></search>\n			<add position="before">\n				<![CDATA[\n				<li id="simple-blog">\n					<a class="parent"><i class="fa fa-file-text-o fa-fw"></i><span><?php echo $text_simple_blogs; ?></span></a>\n					<ul>\n						<li><a href="<?php echo $simple_blog_article; ?>"><?php echo $text_simple_blog_article; ?></a></li>\n						<li><a href="<?php echo $simple_blog_category; ?>"><?php echo $text_simple_blog_category; ?></a></li>\n						<li><a href="<?php echo $simple_blog_author; ?>"><?php echo $text_simple_blog_author; ?></a></li>\n						<li><a href="<?php echo $simple_blog_comment; ?>"><?php echo $text_simple_blog_article_comment; ?></a></li>\n						<li><a href="<?php echo $simple_blog_view_report; ?>"><?php echo $text_simple_blog_view_report; ?></a></li>\n					</ul>\n				</li>\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/view/template/setting/setting.tpl">\n		<operation>\n			<search><![CDATA[<li><a href="#tab-server" data-toggle="tab"><?php echo $tab_server; ?></a></li>]]></search>\n			<add position="after">\n				<![CDATA[\n				<li><a href="#tab-blog" data-toggle="tab"><?php echo $tab_blog; ?></a></li>\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[</form>]]></search>\n			<add position="before" offset="1">\n				<![CDATA[\n				<div class="tab-pane" id="tab-blog">\n					<fieldset>\n						<div class="form-group">\n							<label class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"><?php echo $entry_status; ?></label>\n							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">\n								<select name="config_simple_blog_status" class="form-control">\n									<?php if ($config_simple_blog_status == 1) { ?>\n									<option value="1" selected=\'selected\'><?php echo $text_enabled; ?></option>\n									<option value="0"><?php echo $text_disabled; ?></option>\n									<?php } else { ?>\n									<option value="1"><?php echo $text_enabled; ?></option>\n									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>\n									<?php } ?>\n								</select>\n							</div>\n						</div>\n						<div class="form-group">\n							<label class="col-sm-2 control-label">\n								<span data-toggle="tooltip" title="<?php echo $help_limit; ?>"><?php echo $entry_limit; ?></span>\n							</label>\n							<div class="col-sm-10">\n								<input type="text" name="config_simple_blog_limit" value="<?php echo (isset($config_simple_blog_limit) ? $config_simple_blog_limit : \'5\')  ; ?>" placeholder="<?php echo $entry_limit; ?>" class="form-control" />\n							</div>\n						</div>\n						<div class="form-group">\n							<label class="col-sm-2 control-label">\n								<?php echo $entry_description_limit; ?>\n							</label>\n							<div class="col-sm-10">\n								<input type="text" name="config_simple_blog_description_limit" value="<?php echo (isset($config_simple_blog_description_limit) ? $config_simple_blog_description_limit : \'5\')  ; ?>" placeholder="<?php echo $entry_description_limit; ?>" class="form-control" />\n							</div>\n						</div>\n						<div class="form-group">\n							<label class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">\n								<span data-toggle="tooltip" title="<?php echo $help_comment_approval; ?>"><?php echo $entry_comment_approval; ?></span>\n							</label>\n							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">\n								<div class="checkbox-inline">\n									<?php if (isset($config_simple_blog_comment_auto_approval)) { ?>\n									<input type="radio" name="config_simple_blog_comment_auto_approval" value="1" checked="checked"/> <?php echo $text_yes; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_comment_auto_approval" value="0"/> <?php echo $text_no; ?>\n									<?php } else { ?>\n									<input type="radio" name="config_simple_blog_comment_auto_approval" value="1"/> <?php echo $text_yes; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_comment_auto_approval" value="0" checked="checked"/> <?php echo $text_no; ?>\n									<?php } ?>\n								</div>\n							</div>\n						</div>\n						<div class="form-group">\n							<label class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label"><span\n								data-toggle="tooltip"\n								title="<?php echo $help_author_information; ?>"><?php echo $entry_author_information; ?></span>\n							</label>\n							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">\n								<div class="checkbox-inline">\n									<?php if (isset($config_simple_blog_author_information)) { ?>\n									<input type="radio" name="config_simple_blog_author_information" value="1" checked="checked"/> <?php echo $text_enabled; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_author_information" value="0"/> <?php echo $text_disabled; ?>\n									<?php } else { ?>\n									<input type="radio" name="config_simple_blog_author_information" value="1"/> <?php echo $text_enabled; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_author_information" value="0" checked="checked"/> <?php echo $text_disabled; ?>\n									<?php } ?>\n								</div>\n							</div>\n						</div>\n						<div class="form-group">\n							<label class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">\n								<span data-toggle="tooltip" title="<?php echo $help_related_article; ?>"><?php echo $entry_related_article; ?></span>\n							</label>\n							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">\n								<div class="checkbox-inline">\n									<?php if (isset($config_simple_blog_related_articles)) { ?>\n									<input type="radio" name="config_simple_blog_related_articles" value="1" checked="checked"/> <?php echo $text_enabled; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_related_articles" value="0"/> <?php echo $text_disabled; ?>\n									<?php } else { ?>\n									<input type="radio" name="config_simple_blog_related_articles" value="1"/> <?php echo $text_enabled; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_related_articles" value="0" checked="checked"/> <?php echo $text_disabled; ?>\n									<?php } ?>\n								</div>\n							</div>\n						</div>\n						<div class="form-group">\n							<label class="col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label">\n								<span data-toggle="tooltip" title="<?php echo $help_show_social_site_option; ?>">\n									<?php echo $entry_show_social_site_option; ?>\n								</span>\n							</label>\n							<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">\n								<div class="checkbox-inline">\n									<?php if (isset($config_simple_blog_share_social_site)) { ?>\n									<input type="radio" name="config_simple_blog_share_social_site" value="1" checked="checked"/> <?php echo $text_enabled; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_share_social_site" value="0"/> <?php echo $text_disabled; ?>\n									<?php } else { ?>\n									<input type="radio" name="config_simple_blog_share_social_site" value="1"/> <?php echo $text_enabled; ?>&nbsp;\n									<input type="radio" name="config_simple_blog_share_social_site" value="0" checked="checked"/> <?php echo $text_disabled; ?>\n									<?php } ?>\n								</div>\n							</div>\n						</div>\n					</fieldset>\n				</div>\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- language -->\n	<file path="admin/language/{en-gb,de-DE,ru-ru}/common/menu.php">\n		<operation>\n			<search><![CDATA[$_[\'text_paypal_search\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_simple_blogs\']	= \'Blog\';\n				$_[\'text_simple_blog_author\']	= \'Author\';\n				$_[\'text_simple_blog_category\']	= \'Category\';\n				$_[\'text_simple_blog_article\']	= \'Article\';\n				$_[\'text_simple_blog_article_comment\']	= \'Article Comment\';\n				$_[\'text_simple_blog_view_report\'] = \'Report\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/language/en-gb/setting/setting.php">\n		<operation>\n			<search><![CDATA[$_[\'text_error\']                      = \'Error Handling\';]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_simple_blog\'] = \'Blog\';\n				$_[\'tab_blog\']         = \'Blog\';\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$_[\'entry_status\']                    = \'Status\';]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'entry_related_article\']         = \'Related Article:\';\n				$_[\'entry_comment_approval\']        = \'Comment Auto approval:\';\n				$_[\'entry_author_information\']      = \'Author Information:\';\n				$_[\'entry_show_social_site_option\'] = \'Share with social site:\';\n				$_[\'entry_show_author\']             = \'Show Authors:\';\n				$_[\'entry_limit\']                   = \'Limit\';\n				$_[\'entry_description_limit\']       = \'Description Symbol Limit\';\n				$_[\'help_comment_approval\']         = \'On Yes, Comment on the blog is auto approval.\';\n				$_[\'help_author_information\']       = \'On Enabled, information related to author will display.\';\n				$_[\'help_related_article\']          = \'On Enabled, Related article will display.\';\n				$_[\'help_show_social_site_option\']  = \'On Enabled, Article share with social networking site.\';\n				$_[\'help_limit\']                    = \'How many posts display per page (number)\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:45:01'),
(185, 'TemplateMonster Blog Catalog', 'TemplateMonster_blog_catalog', 'http://www.templatemonster.com', '2.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="UTF-8" ?>\n<!-- Based on Simple Blog Module -->\n<modification>\n	<name>TemplateMonster Blog Catalog</name>\n	<version>2.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_blog_catalog</code>\n	<!-- controller -->\n	<file path="catalog/controller/common/footer.php">\n		<operation>\n			<search><![CDATA[$data[\'powered\']]]></search>\n			<add position="after"><![CDATA[\n				if(($this->config->has(\'config_simple_blog_status\')) && ($this->config->get(\'config_simple_blog_status\'))) {\n				$data[\'simple_blog_found\'] = 1;\n				$tmp = $this->config->get(\'config_simple_blog_footer_heading\');\n				if (!empty($tmp)) {\n				$data[\'simple_blog_footer_heading\'] = $this->config->get(\'config_simple_blog_footer_heading\');\n				} else {\n				$data[\'simple_blog_footer_heading\'] = $this->language->get(\'text_simple_blog\');\n				}\n				$data[\'simple_blog\']	= $this->url->link(\'simple_blog/article\');\n				}\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/common/seo_url.php">\n		<operation>\n			<search><![CDATA[$query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\']]></search>\n			<add position="replace"><![CDATA[$query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\' && $url[0] != \'simple_blog_article_id\' && $url[0] != \'simple_blog_author_id\' && $url[0] != \'simple_blog_category_id\']]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->request->get[\'route\'] = \'error/not_found\';]]></search>\n			<add position="replace" offset="2"><![CDATA[\n				if(($this->config->has(\'simple_blog_seo_keyword\')) && ($this->db->escape($part) == $this->config->get(\'simple_blog_seo_keyword\'))) {\n				} else if($this->db->escape($part) == \'simple-blog\') {\n				} else {\n				$this->request->get[\'route\'] = \'error/not_found\';\n				break;\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[if ($url[0] == \'category_id\') {]]></search>\n			<add position="before">\n				<![CDATA[\n				if($url[0] == \'simple_blog_article_id\') {\n				$this->request->get[\'simple_blog_article_id\'] = $url[1];\n				}\n				if($url[0] == \'simple_blog_author_id\') {\n				$this->request->get[\'simple_blog_author_id\'] = $url[1];\n				}\n				if ($url[0] == \'simple_blog_category_id\') {\n				if (!isset($this->request->get[\'simple_blog_category_id\'])) {\n				$this->request->get[\'simple_blog_category_id\'] = $url[1];\n				} else {\n				$this->request->get[\'simple_blog_category_id\'] .= \'_\' . $url[1];\n				}\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\n			<add position="replace">\n				<![CDATA[\n				$this->request->get[\'route\'] = \'information/information\';\n				} else if (isset($this->request->get[\'simple_blog_article_id\'])) {\n				$this->request->get[\'route\'] = \'simple_blog/article/view\';\n				} else if (isset($this->request->get[\'simple_blog_author_id\'])) {\n				$this->request->get[\'route\'] = \'simple_blog/author\';\n				} else if (isset($this->request->get[\'simple_blog_category_id\'])) {\n				$this->request->get[\'route\'] = \'simple_blog/category\';\n				}\n				else {\n				if(($this->config->has(\'simple_blog_seo_keyword\'))) {\n				if($this->request->get[\'_route_\'] == $this->config->get(\'simple_blog_seo_keyword\')) {\n				$this->request->get[\'route\'] = \'simple_blog/article\';\n				}\n				} if($this->request->get[\'_route_\'] == \'simple-blog\') {\n				$this->request->get[\'route\'] = \'simple_blog/article\';\n				}\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[} elseif ($key == \'path\') {]]></search>\n			<add position="replace">\n				<![CDATA[\n				} else if($data[\'route\'] == \'simple_blog/article/view\' && $key == \'simple_blog_article_id\') {\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = \'" . $this->db->escape($key . \'=\' . (int)$value) . "\'");\n				if ($query->num_rows) {\n				$url .= \'/\' . $query->row[\'keyword\'];\n				unset($data[$key]);\n				} else {\n				$url .= \'/simple-blog/\' . (int)$value;\n				unset($data[$key]);\n				}\n				} else if($data[\'route\'] == \'simple_blog/author\' && $key == \'simple_blog_author_id\') {\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = \'" . $this->db->escape($key . \'=\' . (int)$value) . "\'");\n				if ($query->num_rows) {\n				$url .= \'/\' . $query->row[\'keyword\'];\n				unset($data[$key]);\n				} else {\n				$url .= \'/simple-blog/\' . (int)$value;\n				unset($data[$key]);\n				}\n				} else if($data[\'route\'] == \'simple_blog/category\' && $key == \'simple_blog_category_id\') {\n				$blog_categories = explode("_", $value);\n				foreach ($blog_categories as $blog_category) {\n				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = \'simple_blog_category_id=" . (int)$blog_category . "\'");\n				if ($query->num_rows) {\n				$url .= \'/\' . $query->row[\'keyword\'];\n				} else {\n				$url .= \'/simple-category\' . $blog_category;\n				}\n				}\n				unset($data[$key]);\n				} else if($data[\'route\'] == \'simple_blog/search\') {\n				//echo $data[\'route\'];\n				if(isset($key) && ($key == \'blog_search\')) {\n				$url .= \'/search&blog_search=\' . $value;\n				} else {\n				$url .= \'/search\';\n				}\n				//echo $url; \n				} else if(isset($data[\'route\']) && $data[\'route\'] == \'simple_blog/article\' && $key != \'simple_blog_article_id\' && $key != \'simple_blog_author_id\' && $key != \'simple_blog_category_id\' && $key != \'page\') {\n				if($this->config->has(\'simple_blog_seo_keyword\')) {\n				$url .=  \'/\' . $this->config->get(\'simple_blog_seo_keyword\');\n				} else {\n				$url .=  \'/simple-blog\';\n				}\n				} elseif ($key == \'path\') {\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- language -->\n	<file path="catalog/language/en-gb/common/footer.php">\n		<operation>\n			<search><![CDATA[$_[\'text_powered\']]]></search>\n			<add position="after"><![CDATA[\n				$_[\'text_simple_blog\']   = \'Blog\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/de-DE/common/footer.php">\n		<operation>\n			<search><![CDATA[$_[\'text_powered\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_simple_blog\']   = \'Blog\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/language/ru-ru/common/footer.php">\n		<operation>\n			<search><![CDATA[$_[\'text_powered\']]]></search>\n			<add position="after"><![CDATA[\n				$_[\'text_simple_blog\']   = \'Блог\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	\n</modification>', 1, '2016-07-11 17:45:04'),
(186, 'TM BestSellers ', 'bestsellers', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM BestSellers </name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>bestsellers</code>\n	<file path="catalog/controller/module/bestseller.php">\n        <operation>\n            <search><![CDATA[\n				$data[\'products\'][] = array(\n				]]></search>\n            <add position="before"><![CDATA[\n				 $desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\n                $quick_descr_start = strpos($desc,\'</iframe>\')+9;\n                $quick_descr = substr($desc, $quick_descr_start);\n				]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\n				foreach ($results as $result) {\n				]]></search>\n            <add position="after"><![CDATA[\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\n				]]></add>\n        </operation>\n		<operation>\n			<search><![CDATA[ \n				\'rating\'      => $rating,\n				]]></search>\n			<add position="after"><![CDATA[ \n					\'reviews\'    => $review_total,\n					 \'author\'     => $result[\'manufacturer\'],\n                    \'description1\' => $quick_descr,\n                    \'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\n                    \'model\' => $result[\'model\'],\n                    \'text_availability\' => $result[\'quantity\'],\n                    \'allow\' => $result[\'minimum\'],\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$this->load->model(\'tool/image\');\n				]]></search>\n			<add position="after"><![CDATA[ \n						$this->load->model(\'catalog/manufacturer\');\n						$this->language->load(\'product/product\');\n						$this->language->load(\'product/category\');\n						$this->load->model(\'catalog/review\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\n				]]></search>\n			<add position="after"><![CDATA[ \n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/module/bestseller.php">\n		<operation>\n			<search><![CDATA[ $_[\'heading_title\'] = \'Bestsellers\'; ]]></search>\n			<add position="after"><![CDATA[		\n				$_[\'text_category\'] = \'Categories\';\n				$_[\'text_manufacturer\'] = \'Brand:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Availability:\';\n				$_[\'text_instock\'] = \'In Stock\';\n				$_[\'text_outstock\'] = \'Out Stock\';\n				$_[\'text_price\']        = \'Price: \';\n				$_[\'text_tax\']          = \'Ex Tax:\';\n				$_[\'text_quick\']          = \'Quick View\'; \n				$_[\'button_details\']          = \'Details\';\n				$_[\'reviews\']          = \'reviews \';\n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/de-DE/module/bestseller.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\n			<add position="after"><![CDATA[		\n				$_[\'button_details\']          = \'Details\';\n				$_[\'text_category\'] = \'Kategorie:\';\n				$_[\'text_manufacturer\'] = \'Marke:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\n				$_[\'text_instock\'] = \'Vorratig\';\n				$_[\'text_outstock\'] = \'Heraus \';\n				$_[\'text_price\']        = \'Preis: \';\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\n				$_[\'text_quick\']          = \'Vorschau\'; \n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\n				$_[\'text_sale\']      = \'Verkauf\';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/ru-ru/module/bestseller.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']      = \'Без НДС:\';]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'button_details\']          = \'Подробнее\';\n				$_[\'text_category\'] = \'Категория\';\n				$_[\'text_manufacturer\'] = \'Брєнд\';\n				$_[\'text_model\'] = \'Модель:\';\n				$_[\'text_availability\'] = \'Наличие:\';\n				$_[\'text_instock\'] = \'Доступно\';\n				$_[\'text_outstock\'] = \'нет в наличии \';\n				$_[\'text_price\']        = \'Цена: \';\n				$_[\'text_tax\']          = \'налог:\';\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				$_[\'text_sale\']      = \'Скидка\';\n				]]></add>\n		</operation>\n		\n	</file>\n</modification>', 1, '2016-07-11 17:45:07'),
(187, 'TM Featured ', '3', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Featured </name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>3</code>\n	<file path="catalog/controller/module/featured.php">\n        <operation>\n            <search><![CDATA[\n				$data[\'products\'][] = array(\n				]]></search>\n            <add position="before"><![CDATA[\n					$desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$quick_descr_start = strpos($desc,\'</iframe>\')+9;\n					if ($quick_descr_start > 9){\n					$quick_descr = substr($desc, $quick_descr_start);\n				}else{\n					$quick_descr = $desc;\n				}\n				]]></add>\n        </operation>\n		<operation>\n			<search><![CDATA[ \n				\'rating\'      => $rating,\n				]]></search>\n			<add position="after"><![CDATA[ \n					\'reviews\'    => $review_total,\n					\'author\'     => $product_info[\'manufacturer\'],\n					\'description1\' => $quick_descr,\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $product_info[\'manufacturer_id\']),\n					\'model\' => $product_info[\'model\'],\n					\'text_availability\' => $product_info[\'quantity\'],\n					\'allow\' => $product_info[\'minimum\'],\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$this->load->model(\'tool/image\');\n				]]></search>\n			<add position="after"><![CDATA[ \n						$this->load->model(\'catalog/manufacturer\');\n						$this->language->load(\'product/product\');\n						$this->language->load(\'product/category\');\n						$this->load->model(\'catalog/review\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\n				]]></search>\n			<add position="after"><![CDATA[ \n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $product_info = $this->model_catalog_product->getProduct($product_id); ]]></search>\n			<add position="after"><![CDATA[ \n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($product_info[\'product_id\']);\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/module/featured.php">\n		<operation>\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'text_category\'] = \'Categories\';\n				$_[\'text_manufacturer\'] = \'Brand:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Availability:\';\n				$_[\'text_instock\'] = \'In Stock\';\n				$_[\'text_outstock\'] = \'Out Stock\';\n				$_[\'text_price\']        = \'Price: \';\n				$_[\'text_tax\']          = \'Ex Tax:\';\n				$_[\'text_quick\']          = \'Quick View\'; \n				$_[\'button_details\']          = \'Details\';\n				$_[\'reviews\']          = \'reviews \';\n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/de-DE/module/featured.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\n			<add position="after"><![CDATA[		\n				$_[\'button_details\']          = \'Details\';\n				$_[\'text_category\'] = \'Kategorie:\';\n				$_[\'text_manufacturer\'] = \'Marke:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\n				$_[\'text_instock\'] = \'Vorratig\';\n				$_[\'text_outstock\'] = \'Heraus \';\n				$_[\'text_price\']        = \'Preis: \';\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\n				$_[\'text_quick\']          = \'Vorschau\'; \n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\n				$_[\'text_sale\']      = \'Verkauf\';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/ru-ru/module/featured.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'button_details\']          = \'Подробнее\';\n				$_[\'text_category\'] = \'Категория\';\n				$_[\'text_manufacturer\'] = \'Брєнд\';\n				$_[\'text_model\'] = \'Модель:\';\n				$_[\'text_availability\'] = \'Наличие:\';\n				$_[\'text_instock\'] = \'Доступно\';\n				$_[\'text_outstock\'] = \'нет в наличии \';\n				$_[\'text_price\']        = \'Цена: \';\n				$_[\'text_tax\']          = \'налог:\';\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				$_[\'text_sale\']      = \'Скидка\';\n				]]></add>\n		</operation>\n		\n	</file>\n</modification>', 1, '2016-07-11 17:45:10'),
(197, 'TemplateMonster Positions', 'TemplateMonster_positions', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Positions</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_positions</code>\n	<!-- catalog -->\n	<file path="catalog/controller/common/home.php">\n		<operation>\n			<search><![CDATA[$data[\'content_top\'] = $this->load->controller(\'common/content_top\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'top\'] = $this->load->controller(\'common/top\');\n				$data[\'bottom\'] = $this->load->controller(\'common/bottom\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/common/footer.php">\n		<operation>\n			<search><![CDATA[$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', true);]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="catalog/controller/common/header.php">\n		<operation>\n			<search><![CDATA[$data[\'base\'] = $server;]]></search>\n			<add position="before">\n				<![CDATA[\n				$data[\'header_top\'] = $this->load->controller(\'common/header_top\');\n				$data[\'navigation\'] = $this->load->controller(\'common/navigation\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- admin -->\n	<file path="admin/view/template/design/layout_form.tpl">\n		<operation>\n			<search><![CDATA[<?php if ($layout_module[\'position\'] == \'content_top\') { ?>]]></search>\n			<add position="before">\n				<![CDATA[\n				<?php if ($layout_module[\'position\'] == \'top\') { ?>\n				<option value="top" selected="selected"><?php echo $text_top; ?></option>\n				<?php } else { ?>\n				<option value="top"><?php echo $text_top; ?></option>\n				<?php } ?>\n				<?php if ($layout_module[\'position\'] == \'footer_top\') { ?>\n				<option value="footer_top" selected="selected"><?php echo $text_footer_top; ?></option>\n				<?php } else { ?>\n				<option value="footer_top"><?php echo $text_footer_top; ?></option>\n				<?php } ?>\n				<?php if ($layout_module[\'position\'] == \'header_top\') { ?>\n				<option value="header_top" selected="selected"><?php echo $text_header_top; ?></option>\n				<?php } else { ?>\n				<option value="header_top"><?php echo $text_header_top; ?></option>\n				<?php } ?>\n				<?php if ($layout_module[\'position\'] == \'bottom\') { ?>\n				<option value="bottom" selected="selected"><?php echo $text_bottom; ?></option>\n				<?php } else { ?>\n				<option value="bottom"><?php echo $text_bottom; ?></option>\n				<?php } ?>\n				<?php if ($layout_module[\'position\'] == \'navigation\') { ?>\n				<option value="navigation" selected="selected"><?php echo $text_navigation; ?></option>\n				<?php } else { ?>\n				<option value="navigation"><?php echo $text_navigation; ?></option>\n				<?php } ?>\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[html += \'    <option value="content_top"><?php echo $text_content_top; ?></option>\';]]></search>\n			<add position="after">\n				<![CDATA[\n				html += \'    <option value="top"><?php echo $text_top; ?></option>\';\n				html += \'    <option value="footer_top"><?php echo $text_footer_top; ?></option>\';\n				html += \'    <option value="header_top"><?php echo $text_header_top; ?></option>\';\n				html += \'    <option value="bottom"><?php echo $text_bottom; ?></option>\';\n				html += \'    <option value="navigation"><?php echo $text_navigation; ?></option>\';\n				]]>\n			</add>\n		</operation>\n	</file>\n	<file path="admin/controller/design/layout.php">\n		<operation>\n			<search><![CDATA[$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_top\'] = $this->language->get(\'text_top\');\n				$data[\'text_footer_top\'] = $this->language->get(\'text_footer_top\');\n				$data[\'text_header_top\'] = $this->language->get(\'text_header_top\');\n				$data[\'text_bottom\'] = $this->language->get(\'text_bottom\');\n				$data[\'text_navigation\'] = $this->language->get(\'text_navigation\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- admin language -->\n	<file path="admin/language/en-gb/design/layout.php">\n		<operation>\n			<search><![CDATA[$_[\'text_content_top\']    = \'Content Top\';]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_top\']    = \'Top\';\n				$_[\'text_footer_top\']    = \'Footer\';\n				$_[\'text_header_top\']    = \'Header\';\n				$_[\'text_bottom\']    = \'Bottom\';\n				$_[\'text_navigation\']    = \'Navigation\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 18:44:06');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(190, 'TM Header', '6', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Header</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<author>Tm</author>\n	<code>6</code>\n	<file path="catalog/controller/common/header.php">\n		<operation>\n			<search><![CDATA[ $data[\'name\'] = $this->config->get(\'config_name\'); ]]></search>\n			<add position="after"><![CDATA[ \n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[\'text_all\'] = $this->language->get(\'text_all\'); ]]></search>\n			<add position="before"><![CDATA[ \n			\n			$data[\'text_shopcart\'] = $this->language->get(\'text_shopcart\');\n			$data[\'text_information\'] = $this->language->get(\'text_information\');\n			$data[\'text_service\'] = $this->language->get(\'text_service\');\n			$data[\'text_extra\'] = $this->language->get(\'text_extra\');\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\n			$data[\'text_contact\'] = $this->language->get(\'text_contact\');\n			$data[\'text_return\'] = $this->language->get(\'text_return\');\n			$data[\'text_sitemap\'] = $this->language->get(\'text_sitemap\');\n			$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n			$data[\'text_voucher\'] = $this->language->get(\'text_voucher\');\n			$data[\'text_affiliate\'] = $this->language->get(\'text_affiliate\');\n			$data[\'text_special\'] = $this->language->get(\'text_special\');\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\n			$data[\'text_order\'] = $this->language->get(\'text_order\');\n			$data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\');\n			$data[\'text_category\'] = $this->language->get(\'text_category\');\n			\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $data[\'telephone\'] = $this->config->get(\'config_telephone\'); ]]></search>\n			<add position="after"><![CDATA[ \n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\n			$data[\'special\'] = $this->url->link(\'product/special\');\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\n			$data[\'return\'] = $this->url->link(\'account/return/insert\', \'\', true);\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\n			$data[\'manufacturer\'] = $this->url->link(\'product/manufacturer\', \'\', true);\n			$data[\'voucher\'] = $this->url->link(\'account/voucher\', \'\', true);\n			$data[\'affiliate\'] = $this->url->link(\'affiliate/account\', \'\', true);\n			$data[\'account\'] = $this->url->link(\'account/account\', \'\', true);\n			$data[\'order\'] = $this->url->link(\'account/order\', \'\', true);\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', true);		\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ $this->load->language(\'common/header\'); ]]></search>\n			<add position="before"><![CDATA[ \n			if (($data[\'maintenance\']==0)) {\n			$data[\'informations\'] = array();\n			foreach ($this->model_catalog_information->getInformations() as $result) {\n				if ($result[\'bottom\']) {\n					$data[\'informations\'][] = array(\n						\'title\' => $result[\'title\'],\n						\'href\'  => $this->url->link(\'information/information\', \'information_id=\' . $result[\'information_id\'])\n					);\n				}\n			}	\n		}\n			]]></add>\n		</operation>\n\n		<operation>\n			<search><![CDATA[ $data[\'cart\'] = $this->load->controller(\'common/cart\'); ]]></search>\n			<add position="after"><![CDATA[ \n					$data[\'tm_login\'] = $this->load->controller(\'module/tm_header_login\');\n					$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\n			]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/common/header.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_checkout\']       = \'Checkout\'; ]]></search>\n			<add position="after"><![CDATA[ \n					$_[\'text_information\']  = \'Information\';\n					$_[\'text_service\']      = \'Customer Service\';\n					$_[\'text_extra\']        = \'Extras\';\n					$_[\'text_contact\']      = \'Contact Us\';\n					$_[\'text_return\']       = \'Returns\';\n					$_[\'text_sitemap\']      = \'Site Map\';\n					$_[\'text_manufacturer\'] = \'Brands\';\n					$_[\'text_voucher\']      = \'Gift Vouchers\';\n					$_[\'text_affiliate\']    = \'Affiliates\';\n					$_[\'text_special\']      = \'Specials\';\n					$_[\'text_account\']      = \'My Account\';\n					$_[\'text_order\']        = \'Order History\';\n					$_[\'text_newsletter\']   = \'Newsletter\';\n					$_[\'text_category\']   = \'Categories\';\n					$_[\'text_latest_added\']   = \'Latest added product(s):\';\n				]]></add>\n		</operation>\n	</file>\n\n</modification>', 1, '2016-07-11 17:45:16'),
(191, 'TM latest ', '8', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM latest </name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>8</code>\n	<file path="catalog/controller/module/latest.php">\n        <operation>\n            <search><![CDATA[\n				$data[\'products\'][] = array(\n				]]></search>\n            <add position="before"><![CDATA[$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$quick_descr_start = strpos($desc,\'</iframe>\')+9;\n				if ($quick_descr_start > 9){\n					$quick_descr = substr($desc, $quick_descr_start);\n				}else{\n					$quick_descr = $desc;\n				}\n				]]></add>\n        </operation>\n		<operation>\n			<search><![CDATA[ \n				\'rating\'      => $rating,\n				]]></search>\n			<add position="after"><![CDATA[ \n					\'reviews\'    => $review_total,\n					\'author\'     => $result[\'manufacturer\'],\n					\'description1\' => $quick_descr,\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\n					\'model\' => $result[\'model\'],\n					\'text_availability\' => $result[\'quantity\'],\n					\'allow\' => $result[\'minimum\'],\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$this->load->model(\'tool/image\');\n				]]></search>\n			<add position="after"><![CDATA[ \n						$this->load->model(\'catalog/manufacturer\');\n						$this->language->load(\'product/product\');\n						$this->language->load(\'product/category\');\n						$this->load->model(\'catalog/review\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\n				]]></search>\n			<add position="after"><![CDATA[ \n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\n			<add position="after"><![CDATA[ \n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/module/latest.php">\n		<operation>\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'text_category\'] = \'Categories\';\n				$_[\'text_manufacturer\'] = \'Brand:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Availability:\';\n				$_[\'text_instock\'] = \'In Stock\';\n				$_[\'text_outstock\'] = \'Out Stock\';\n				$_[\'text_price\']        = \'Price: \';\n				$_[\'text_tax\']          = \'Ex Tax:\';\n				$_[\'text_quick\']          = \'Quick View\'; \n				$_[\'button_details\']          = \'Details\';\n				$_[\'reviews\']          = \'reviews \';\n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/de-DE/module/latest.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\n			<add position="after"><![CDATA[		\n				$_[\'button_details\']          = \'Details\';\n				$_[\'text_category\'] = \'Kategorie:\';\n				$_[\'text_manufacturer\'] = \'Marke:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\n				$_[\'text_instock\'] = \'Vorratig\';\n				$_[\'text_outstock\'] = \'Heraus \';\n				$_[\'text_price\']        = \'Preis: \';\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\n				$_[\'text_quick\']          = \'Vorschau\'; \n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\n				$_[\'text_sale\']      = \'Verkauf\';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/ru-ru/module/latest.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'button_details\']          = \'Подробнее\';\n				$_[\'text_category\'] = \'Категория\';\n				$_[\'text_manufacturer\'] = \'Брєнд\';\n				$_[\'text_model\'] = \'Модель:\';\n				$_[\'text_availability\'] = \'Наличие:\';\n				$_[\'text_instock\'] = \'Доступно\';\n				$_[\'text_outstock\'] = \'нет в наличии \';\n				$_[\'text_price\']        = \'Цена: \';\n				$_[\'text_tax\']          = \'налог:\';\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				$_[\'text_sale\']      = \'Скидка\';\n				]]></add>\n		</operation>\n		\n	</file>\n</modification>', 1, '2016-07-11 17:45:18'),
(192, 'TM Top Menu All Levels', '9', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Top Menu All Levels</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>9</code>\n	<file path="catalog/controller/common/header.php">\n		<operation>\n			<search><![CDATA[\n			$data[\'language\'] = $this->load->controller(\'common/language\');\n			]]></search>\n			<add position="before"><![CDATA[\n			$this->load->model(\'design/topmenu\');\n			$data[\'categories_tm\'] = $this->model_design_topmenu->getMenu();\n			]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:45:27'),
(194, 'TM Live search', '11', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Live search</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>11</code>\n	<file path="catalog/controller/product/search.php">\n		<operation error="skip">\n			<search><![CDATA[ class ControllerProductSearch extends Controller { ]]></search>\n			<add  position="after"><![CDATA[\n				public function ajax()\n	{\n		// Contains results\n		$data = array();\n		if( isset($this->request->get[\'keyword\']) ) {\n			// Parse all keywords to lowercase\n			$keywords = strtolower( $this->request->get[\'keyword\'] );\n			// Perform search only if we have some keywords\n			if( strlen($keywords) >= 3 ) {\n				$parts = explode( \' \', $keywords );\n				$add = \'\';\n				// Generating search\n				foreach( $parts as $part ) {\n					$add .= \' AND (LOWER(pd.name) LIKE "%\' . $this->db->escape($part) . \'%"\';\n					$add .= \' OR LOWER(p.model) LIKE "%\' . $this->db->escape($part) . \'%")\';\n				}\n				$add = substr( $add, 4 );\n				$sql  = \'SELECT pd.product_id, pd.name, p.model, p.image FROM \' . DB_PREFIX . \'product_description AS pd \';\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product AS p ON p.product_id = pd.product_id \';\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product_to_store AS p2s ON p2s.product_id = pd.product_id \';\n				$sql .= \'WHERE \' . $add . \' AND p.status = 1 \';\n				$sql .= \'AND pd.language_id = \' . (int)$this->config->get(\'config_language_id\');\n				$sql .= \' AND p2s.store_id =  \' . (int)$this->config->get(\'config_store_id\'); \n				$sql .= \' ORDER BY p.sort_order ASC, LOWER(pd.name) ASC, LOWER(p.model) ASC\';\n				$sql .= \' LIMIT 15\';\n				$res = $this->db->query( $sql );\n				if( $res ) {\n					$data = ( isset($res->rows) ) ? $res->rows : $res->row;\n					$this->load->model(\'tool/image\'); \n					// For the seo url stuff\n					$basehref = \'product/product&keyword=\' . $this->request->get[\'keyword\'] . \'&product_id=\';\n					foreach( $data as $key => $values ) {\n						if ( $values[\'image\'] ) {\n							$image = $this->model_tool_image->resize($values[\'image\'], $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\n						}\n						else {\n							$image = $this->model_tool_image->resize(\'no_image.jpg\', $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\n						}\n						$data[$key] = array(\n							\'name\' => htmlspecialchars_decode($values[\'name\'] . \' (\' . $values[\'model\'] . \')\', ENT_QUOTES),\n							\'href\' => $this->url->link($basehref . $values[\'product_id\']),\n							\'image\' =>$image\n						);\n					}\n				}\n			}\n		}\n		echo json_encode( $data );\n	}\n				]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-11 17:45:31'),
(195, 'TM Special ', '12', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TM Special </name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>12</code>\n	<file path="catalog/controller/module/special.php">\n        <operation>\n            <search><![CDATA[\n				$data[\'products\'][] = array(\n				]]></search>\n            <add position="before"><![CDATA[\n					$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\n				$quick_descr_start = strpos($desc,\'</iframe>\')+9;\n					if ($quick_descr_start > 9){\n					$quick_descr = substr($desc, $quick_descr_start);\n				}else{\n					$quick_descr = $desc;\n				}\n				]]></add>\n        </operation>\n		<operation>\n			<search><![CDATA[\n				\'rating\'      => $rating,\n				]]></search>\n			<add position="after"><![CDATA[\n					\'reviews\'    => $review_total,\n					\'author\'     => $result[\'manufacturer\'],\n					\'description1\' => $quick_descr,\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\n					\'model\' => $result[\'model\'],\n					\'text_availability\' => $result[\'quantity\'],\n					\'allow\' => $result[\'minimum\'],\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$this->load->model(\'tool/image\');\n				]]></search>\n			<add position="after"><![CDATA[ \n						$this->load->model(\'catalog/manufacturer\');\n						$this->language->load(\'product/product\');\n						$this->language->load(\'product/category\');\n						$this->load->model(\'catalog/review\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ \n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\n				]]></search>\n			<add position="after"><![CDATA[ \n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\n				]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\n			<add position="after"><![CDATA[ \n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\n				]]></add>\n		</operation>\n	</file>\n	<file path="catalog/language/en-gb/module/special.php">\n		<operation>\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'text_category\'] = \'Categories\';\n				$_[\'text_manufacturer\'] = \'Brand:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Availability:\';\n				$_[\'text_instock\'] = \'In Stock\';\n				$_[\'text_outstock\'] = \'Out Stock\';\n				$_[\'text_price\']        = \'Price: \';\n				$_[\'text_tax\']          = \'Ex Tax:\';\n				$_[\'text_quick\']          = \'Quick View\'; \n				$_[\'button_details\']          = \'Details\';\n				$_[\'reviews\']          = \'reviews \';\n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/de-DE/module/special.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\n			<add position="after"><![CDATA[		\n				$_[\'button_details\']          = \'Details\';\n				$_[\'text_category\'] = \'Kategorie:\';\n				$_[\'text_manufacturer\'] = \'Marke:\';\n				$_[\'text_model\'] = \'Model:\';\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\n				$_[\'text_instock\'] = \'Vorratig\';\n				$_[\'text_outstock\'] = \'Heraus \';\n				$_[\'text_price\']        = \'Preis: \';\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\n				$_[\'text_quick\']          = \'Vorschau\'; \n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\n				$_[\'text_sale\']      = \'Verkauf\';\n				]]></add>\n		</operation>\n		\n	</file>\n	<file path="catalog/language/ru-ru/module/special.php">\n		<operation>\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\n			<add position="before"><![CDATA[		\n				$_[\'button_details\']          = \'Подробнее\';\n				$_[\'text_category\'] = \'Категория\';\n				$_[\'text_manufacturer\'] = \'Брєнд\';\n				$_[\'text_model\'] = \'Модель:\';\n				$_[\'text_availability\'] = \'Наличие:\';\n				$_[\'text_instock\'] = \'Доступно\';\n				$_[\'text_outstock\'] = \'нет в наличии \';\n				$_[\'text_price\']        = \'Цена: \';\n				$_[\'text_tax\']          = \'налог:\';\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \n				$_[\'text_product\']          = \'Product {current} of {total} \';\n				$_[\'text_sale\']      = \'Скидка\';\n				]]></add>\n		</operation>\n		\n	</file>\n</modification>', 1, '2016-07-11 17:45:33'),
(204, 'TemplateMonster Footer', 'TemplateMonster_footer', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>TemplateMonster Footer</name>\n	<version>1.0</version>\n	<author>http://www.templatemonster.com</author>\n	<link>http://www.templatemonster.com</link>\n	<code>TemplateMonster_footer</code>\n	<!-- catalog -->\n	<file path="catalog/controller/common/footer.php">\n		<operation>\n			<search><![CDATA[$data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\');]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'text_telephone\'] = $this->language->get(\'text_telephone\');\n				$data[\'text_fax\'] = $this->language->get(\'text_fax\');\n				$data[\'text_email\'] = $this->language->get(\'text_email\');\n				]]>\n			</add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', true);]]></search>\n			<add position="after">\n				<![CDATA[\n				$data[\'address\'] = nl2br($this->config->get(\'config_address\'));\n				$data[\'telephone\'] = $this->config->get(\'config_telephone\');\n				$data[\'fax\'] = $this->config->get(\'config_fax\');\n				$data[\'email\'] = $this->config->get(\'config_email\');\n				$data[\'geocode\'] = $this->config->get(\'config_geocode\');\n				$data[\'open\'] = $this->config->get(\'config_open\');\n				]]>\n			</add>\n		</operation>\n	</file>\n	<!-- languages -->\n	<file path="catalog/language/en-gb/common/footer.php">\n		<operation error="skip">\n			<search><![CDATA[$_[\'text_powered\']]]></search>\n			<add position="after">\n				<![CDATA[\n				$_[\'text_telephone\'] = \'telephone:\';\n				$_[\'text_fax\'] = \'fax:\';\n				$_[\'text_email\'] = \'e-mail:\';\n				]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2016-07-12 11:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(65, 'banners', 'banner', '{"name":"banners","banner_id":"14","width":"270","height":"270","status":"1"}'),
(69, 'Bestsellers Aside', 'bestseller', '{"name":"Bestsellers Aside","limit":"1","width":"270","height":"270","status":"1"}'),
(67, 'BestSellers Home', 'bestseller', '{"name":"BestSellers Home","limit":"4","width":"270","height":"270","status":"1"}'),
(68, 'Featured  Aside', 'featured', '{"name":"Featured  Aside","product_name":"","product":["43","40","30","42","33","46","32","28"],"limit":"1","width":"270","height":"270","status":"1"}'),
(70, 'Featured Home', 'featured', '{"name":"Featured Home","product_name":"","product":["35","28","47","30"],"limit":"4","width":"270","height":"270","status":"1"}'),
(71, 'contacts', 'html', '{"name":"contacts","module_description":{"1":{"title":"contacts","description":"&lt;h5&gt;Contacts&lt;\\/h5&gt;\\r\\n\\r\\n&lt;address class=&quot;fa-map-marker&quot;&gt;\\r\\n8901 Marmora Road, \\r\\nGlasgow, D04 89GR\\r\\n&lt;\\/address&gt;\\r\\n&lt;address class=&quot;fa-phone&quot;&gt;\\r\\n&lt;a href=&quot;callto:#&quot;&gt;+1(800)2345-6789&lt;\\/a&gt;\\r\\n&lt;\\/address&gt;"},"2":{"title":"contacts","description":"&lt;h5&gt;Contacts&lt;\\/h5&gt;\\r\\n\\r\\n&lt;address class=&quot;fa-map-marker&quot;&gt;\\r\\n8901 Marmora Road, \\r\\nGlasgow, D04 89GR\\r\\n&lt;\\/address&gt;\\r\\n&lt;address class=&quot;fa-phone&quot;&gt;\\r\\n&lt;a href=&quot;callto:#&quot;&gt;+1(800)2345-6789&lt;\\/a&gt;\\r\\n&lt;\\/address&gt;"},"3":{"title":"contacts","description":"&lt;h5&gt;Contacts&lt;\\/h5&gt;\\r\\n\\r\\n&lt;address class=&quot;fa-map-marker&quot;&gt;\\r\\n8901 Marmora Road, \\r\\nGlasgow, D04 89GR\\r\\n&lt;\\/address&gt;\\r\\n&lt;address class=&quot;fa-phone&quot;&gt;\\r\\n&lt;a href=&quot;callto:#&quot;&gt;+1(800)2345-6789&lt;\\/a&gt;\\r\\n&lt;\\/address&gt;"}},"status":"1"}'),
(72, 'Latest Aside', 'latest', '{"name":"Latest Aside","limit":"1","width":"270","height":"270","status":"1"}'),
(73, 'Latest Home', 'latest', '{"name":"Latest Home","limit":"4","width":"270","height":"270","status":"1"}'),
(74, 'Olark Chat', 'olark', '{"name":"Olark Chat","olark_version":"2.0.0","olark_site_id":"7830-582-10-3714","status":"1"}'),
(75, 'Parallax-1', 'parallax', '{"name":"Parallax-1","banner_id":"10","width":"2050","height":"1200","status":"1"}'),
(76, 'Specials Aside', 'special', '{"name":"Specials Aside","limit":"1","width":"270","height":"270","status":"1"}'),
(77, 'Specials Home', 'special', '{"name":"Specials Home","limit":"5","width":"270","height":"270","status":"1"}'),
(78, 'Tm Slideshow', 'tm_slideshow', '{"name":"Tm Slideshow","banner_id":"15","width":"2050","height":"724","status":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11),
(13, 'radio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(1, 3, 'Radio'),
(2, 3, 'Checkbox'),
(4, 3, 'Text'),
(6, 3, 'Textarea'),
(8, 3, 'Date'),
(7, 3, 'File'),
(5, 3, 'Select'),
(9, 3, 'Time'),
(10, 3, 'Date &amp; Time'),
(12, 3, 'Delivery Date'),
(11, 3, 'Size'),
(13, 1, 'Color'),
(13, 2, 'Color'),
(13, 3, 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 13, 'catalog/product-06.png', 1),
(50, 13, 'catalog/product-02.png', 2),
(51, 13, 'catalog/product-42.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small'),
(49, 1, 13, 'black'),
(49, 2, 13, 'black'),
(49, 3, 13, 'black'),
(50, 1, 13, 'white'),
(50, 2, 13, 'white'),
(50, 3, 13, 'white'),
(51, 1, 13, 'red'),
(51, 2, 13, 'red'),
(51, 3, 13, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Your Store', 'http://192.168.9.13/Dev/opencart-2-2/', 0, 1, 'asdasdasd', 'asdasdasd', 'admin@admin.com', '1234567890', '', '[]', 'asdasdasd', 'asdasdasd', '', 'asdasdasdasd', '', 'asdasdasd', '12345', 'Albania', 2, 'Berat', 33, '', '[]', 'Cash On Delivery', 'cod', 'asdasdasd', 'asdasdasd', '', 'asdasdasdasd', '', 'asdasdasd', '12345', 'Albania', 2, 'Berat', 33, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '705.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.9.13', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0', 'en-US,en;q=0.5', '2016-03-24 18:15:46', '2016-03-24 18:15:48'),
(2, 0, 'INV-2013-00', 0, 'Your Store', 'http://192.168.9.13/Dev/opencart-2-2/', 1, 1, 'admin', 'admin', 'admin@admin.com', '1234567890', '', '', 'admin', 'admin', '', 'address', '', 'city', '12345', 'Albania', 2, 'Berat', 33, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', '', 'address', '', 'city', '12345', 'Albania', 2, 'Berat', 33, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1785.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.9.13', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0', 'en-US,en;q=0.5', '2016-03-24 18:19:33', '2016-03-24 18:19:35'),
(3, 0, 'INV-2013-00', 0, 'Your Store', 'http://192.168.9.13/Dev/opencart-2-2/', 1, 1, 'admin', 'admin', 'admin@admin.com', '1234567890', '', '', 'admin', 'admin', '', 'address', '', 'city', '12345', 'Albania', 2, 'Berat', 33, '', '[]', 'Cash On Delivery', 'cod', 'admin', 'admin', '', 'address', '', 'city', '12345', 'Albania', 2, 'Berat', 33, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '620.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.9.13', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0', 'en-US,en;q=0.5', '2016-03-28 10:44:51', '2016-03-28 10:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2016-03-24 18:15:48'),
(2, 2, 1, 0, '', '2016-03-24 18:19:35'),
(3, 3, 1, 0, '', '2016-03-28 10:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 1, 17, 40, 'Size', 'Small', 'select'),
(2, 1, 2, 1, 1, 'Size', 'Small', 'select'),
(3, 1, 3, 11, 25, 'Checkbox', 'Checkbox 1', 'checkbox'),
(4, 2, 4, 1, 1, 'Size', 'Small', 'select'),
(5, 2, 5, 11, 25, 'Checkbox', 'Checkbox 1', 'checkbox'),
(6, 2, 6, 3, 8, 'Size', 'Medium', 'select'),
(7, 2, 7, 11, 26, 'Checkbox', 'Checkbox 2', 'checkbox'),
(8, 3, 8, 11, 26, 'Checkbox', 'Checkbox 2', 'checkbox'),
(9, 3, 8, 227, 0, 'File', 'f9013aef0ea3ee827ee143d8a3ac53e61785be81', 'file'),
(10, 3, 9, 228, 0, 'File', '7e2138ca46eee9575a87ff9f526768735dd9377d', 'file'),
(11, 3, 9, 17, 40, 'Size', 'Small', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 36, 'Anne Klein Women\'s ', 'Product 9', 1, '120.0000', '120.0000', '0.0000', 0),
(2, 1, 28, 'Bestdon Watch', 'Product 1', 1, '100.0000', '100.0000', '0.0000', 400),
(3, 1, 33, 'Bestdon Swiss Men\'s', 'Product 6', 3, '160.0000', '480.0000', '0.0000', 0),
(4, 2, 28, 'Bestdon Watch', 'Product 1', 1, '100.0000', '100.0000', '0.0000', 400),
(5, 2, 33, 'Bestdon Swiss Men\'s', 'Product 6', 3, '160.0000', '480.0000', '0.0000', 0),
(6, 2, 29, 'Rotary Watch', 'Product 2', 1, '210.0000', '210.0000', '0.0000', 0),
(7, 2, 33, 'Bestdon Swiss Men\'s', 'Product 6', 6, '165.0000', '990.0000', '0.0000', 0),
(8, 3, 33, 'Bestdon Swiss Men\'s', 'Product 6', 3, '165.0000', '495.0000', '0.0000', 0),
(9, 3, 36, 'Anne Klein Women\'s ', 'Product 9', 1, '120.0000', '120.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(2, 3, 'Processing'),
(3, 3, 'Shipped'),
(7, 3, 'Canceled'),
(5, 3, 'Complete'),
(8, 3, 'Denied'),
(9, 3, 'Canceled Reversal'),
(10, 3, 'Failed'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 3, 'Chargeback'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '700.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '705.0000', 9),
(4, 2, 'sub_total', 'Sub-Total', '1780.0000', 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(6, 2, 'total', 'Total', '1785.0000', 9),
(7, 3, 'sub_total', 'Sub-Total', '615.0000', 1),
(8, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(9, 3, 'total', 'Total', '620.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/product-10.png', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2015-09-29 14:34:28'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/product-43.png', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2015-09-29 14:35:37'),
(30, 'Product 3', '', '', '', '', '', '', '', 60000, 6, 'catalog/product-13.png', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2015-09-29 14:36:40'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/product-40.png', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2015-09-28 11:58:22'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/product-28.png', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2015-09-28 11:59:42'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/product-52.png', 10, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2015-09-29 14:34:20'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/product-25.png', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2015-09-29 14:35:12'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/product-46.png', 5, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2015-09-29 14:37:42'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/product-22.png', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2015-09-28 12:08:41'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/product-16.png', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2015-09-28 11:59:03'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/product-13.png', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2015-09-28 12:10:32'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/product-22.png', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 0, '2009-02-03 21:07:37', '2015-09-28 12:08:08'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/product-31.png', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2015-09-29 14:36:13'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/product-34.png', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2015-09-29 14:34:59'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/product-37.png', 8, 1, '200.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2015-09-29 14:35:26'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/product-55.png', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2015-09-28 12:09:49'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/product-10.png', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2015-09-29 14:34:05'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/product-19.png', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2015-09-29 14:34:48'),
(49, 'SAM1', '', '', '', '', '', '', '', 80000, 8, 'catalog/product-49.png', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2015-09-29 14:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 2, '1'),
(42, 7, 3, '64'),
(43, 2, 3, '1'),
(42, 8, 1, '128'),
(47, 7, 2, '32'),
(43, 4, 1, '8'),
(47, 7, 3, '32'),
(43, 2, 1, '1'),
(47, 8, 1, '64'),
(43, 4, 2, '8'),
(47, 7, 1, '32'),
(33, 5, 2, '500'),
(35, 7, 2, '25'),
(33, 5, 3, '500'),
(28, 5, 2, '600'),
(47, 8, 2, '64'),
(41, 8, 1, '128'),
(49, 7, 3, '64'),
(32, 7, 3, '64'),
(45, 8, 1, '128'),
(48, 7, 3, '64'),
(34, 7, 3, '64'),
(43, 4, 3, '8'),
(31, 8, 1, '128'),
(46, 8, 1, '128'),
(40, 8, 1, '128'),
(36, 7, 3, '64'),
(33, 5, 1, '500'),
(28, 5, 1, '500'),
(47, 5, 3, '4'),
(32, 8, 1, '128'),
(33, 7, 1, '700'),
(28, 5, 3, '600'),
(47, 8, 3, '64'),
(30, 8, 1, '128'),
(44, 8, 2, '128'),
(41, 7, 3, '64'),
(29, 8, 2, '128'),
(45, 7, 3, '64'),
(48, 8, 1, '128'),
(34, 8, 1, '128'),
(31, 7, 3, '64'),
(46, 7, 3, '64'),
(40, 7, 3, '64'),
(36, 8, 1, '128'),
(47, 5, 2, '4'),
(49, 8, 1, '128'),
(35, 7, 3, '28'),
(33, 7, 2, '700'),
(28, 7, 1, '800'),
(47, 5, 1, '4'),
(44, 8, 1, '128'),
(42, 7, 2, '64'),
(29, 8, 1, '128'),
(35, 7, 1, '23'),
(47, 9, 1, '16'),
(42, 8, 2, '128'),
(35, 9, 1, '32'),
(33, 7, 3, '700'),
(28, 7, 2, '800'),
(28, 7, 3, '800'),
(30, 7, 3, '64'),
(41, 7, 2, '64'),
(41, 7, 1, '64'),
(42, 7, 1, '64'),
(32, 7, 2, '64'),
(32, 7, 1, '64'),
(31, 7, 2, '64'),
(31, 7, 1, '64'),
(46, 7, 2, '64'),
(46, 7, 1, '64'),
(40, 7, 2, '64'),
(40, 7, 1, '64'),
(36, 7, 2, '64'),
(36, 7, 1, '64'),
(33, 8, 1, '800'),
(35, 9, 2, '35'),
(33, 8, 2, '800'),
(47, 9, 2, '16'),
(30, 8, 2, '128'),
(44, 8, 3, '128'),
(41, 8, 2, '128'),
(42, 8, 3, '128'),
(49, 7, 2, '64'),
(32, 8, 2, '128'),
(29, 8, 3, '128'),
(45, 7, 2, '64'),
(45, 7, 1, '64'),
(48, 7, 2, '64'),
(34, 7, 2, '64'),
(31, 8, 2, '128'),
(46, 8, 2, '128'),
(40, 8, 2, '128'),
(36, 8, 2, '128'),
(35, 5, 2, '18'),
(35, 5, 3, '22'),
(33, 8, 3, '800'),
(33, 9, 1, '600'),
(28, 8, 1, '900'),
(28, 8, 2, '900'),
(30, 7, 2, '64'),
(44, 7, 2, '32'),
(44, 7, 3, '32'),
(41, 5, 3, '16'),
(41, 5, 2, '16'),
(41, 5, 1, '16'),
(42, 5, 3, '16'),
(42, 5, 2, '16'),
(42, 5, 1, '16'),
(49, 8, 2, '128'),
(49, 8, 3, '128'),
(32, 5, 3, '16'),
(32, 5, 2, '16'),
(32, 5, 1, '16'),
(29, 7, 2, '64'),
(29, 7, 3, '64'),
(45, 8, 2, '128'),
(45, 8, 3, '128'),
(48, 8, 2, '128'),
(34, 8, 2, '128'),
(31, 5, 3, '16'),
(31, 5, 2, '16'),
(31, 5, 1, '16'),
(46, 5, 3, '16'),
(46, 5, 2, '16'),
(46, 5, 1, '16'),
(40, 5, 3, '16'),
(40, 5, 2, '16'),
(40, 5, 1, '16'),
(36, 5, 3, '16'),
(36, 5, 2, '16'),
(36, 5, 1, '16'),
(44, 7, 1, '32'),
(44, 5, 3, '64'),
(44, 5, 2, '64'),
(44, 5, 1, '64'),
(31, 8, 3, '128'),
(31, 9, 1, '32'),
(31, 9, 2, '32'),
(31, 9, 3, '32'),
(40, 8, 3, '128'),
(40, 9, 1, '32'),
(40, 9, 2, '32'),
(40, 9, 3, '32'),
(32, 8, 3, '128'),
(32, 9, 1, '32'),
(32, 9, 2, '32'),
(32, 9, 3, '32'),
(34, 7, 1, '64'),
(34, 5, 3, '16'),
(34, 5, 2, '16'),
(34, 5, 1, '16'),
(29, 7, 1, '64'),
(29, 5, 3, '16'),
(29, 5, 2, '16'),
(29, 5, 1, '16'),
(30, 8, 3, '128'),
(30, 11, 1, '32'),
(48, 7, 1, '64'),
(48, 5, 3, '16'),
(48, 5, 2, '16'),
(48, 5, 1, '16'),
(35, 5, 1, '13'),
(45, 5, 3, '16'),
(45, 5, 2, '16'),
(45, 5, 1, '16'),
(42, 9, 1, '32'),
(42, 9, 2, '32'),
(42, 9, 3, '32'),
(36, 8, 3, '128'),
(36, 11, 1, '32'),
(36, 11, 2, '32'),
(36, 11, 3, '32'),
(46, 8, 3, '128'),
(46, 9, 1, '32'),
(46, 9, 2, '32'),
(46, 9, 3, '32'),
(41, 8, 3, '128'),
(41, 9, 1, '32'),
(41, 9, 2, '32'),
(41, 9, 3, '32'),
(49, 7, 1, '64'),
(49, 5, 3, '16'),
(49, 5, 2, '16'),
(49, 5, 1, '16'),
(47, 9, 3, '16'),
(33, 9, 2, '600'),
(33, 9, 3, '600'),
(28, 8, 3, '900'),
(28, 9, 1, '700'),
(28, 9, 2, '700'),
(28, 9, 3, '700'),
(30, 7, 1, '64'),
(30, 5, 3, '16'),
(30, 5, 2, '16'),
(30, 5, 1, '16'),
(48, 8, 3, '128'),
(48, 9, 1, '32'),
(48, 9, 2, '32'),
(48, 9, 3, '32'),
(44, 9, 1, '16'),
(44, 9, 2, '16'),
(44, 9, 3, '16'),
(34, 8, 3, '128'),
(34, 9, 1, '32'),
(34, 9, 2, '32'),
(34, 9, 3, '32'),
(45, 9, 1, '32'),
(45, 9, 2, '32'),
(45, 9, 3, '32'),
(29, 9, 1, '32'),
(29, 9, 2, '32'),
(29, 9, 3, '32'),
(35, 9, 3, '39'),
(49, 9, 1, '32'),
(49, 9, 2, '32'),
(49, 9, 3, '32'),
(30, 11, 2, '32'),
(30, 11, 3, '32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(48, 3, 'Floral Bird Chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Floral Bird Chair', '', ''),
(40, 2, 'Schoolhouse Stairway', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Schoolhouse Stairway', '', ''),
(35, 3, 'Kipling Grey', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Kipling Grey', '', ''),
(46, 2, 'Winsome Fairlee', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Winsome Fairlee', '', ''),
(32, 1, 'Torbay bed', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Torbay bed', '', ''),
(32, 2, 'Torbay bed', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Torbay bed', '', ''),
(34, 3, 'Ikea, LEIRVIK', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, LEIRVIK', '', ''),
(33, 3, 'Accent Bardot Chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Accent Bardot Chair', '', ''),
(46, 1, 'Winsome Fairlee', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Winsome Fairlee', '', ''),
(48, 2, 'Floral Bird Chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Floral Bird Chair', '', ''),
(41, 2, 'Stanley Furniture', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Stanley Furniture', '', ''),
(41, 1, 'Stanley Furniture', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Stanley Furniture', '', ''),
(45, 1, 'Ikea, NORRNAS', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, NORRNAS', '', ''),
(29, 1, 'Kavari Bench', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Kavari Bench', '', ''),
(36, 2, 'Vestibulum chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Vestibulum chair', '', ''),
(34, 2, 'Ikea, LEIRVIK', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, LEIRVIK', '', ''),
(43, 2, 'Riga Single Bed', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Riga Single Bed', '', ''),
(35, 2, 'Kipling Grey', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Kipling Grey', '', ''),
(49, 2, 'Large Wood', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Large Wood', '', ''),
(44, 1, 'Ikea, High bed frame', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, High bed frame', '', ''),
(40, 1, 'Schoolhouse Stairway', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Schoolhouse Stairway', '', ''),
(28, 3, 'Americana Ebony', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Americana Ebony', '', ''),
(28, 2, 'Americana Ebony', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Americana Ebony', '', ''),
(29, 2, 'Kavari Bench', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Kavari Bench', '', ''),
(36, 1, 'Vestibulum chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Vestibulum chair', '', ''),
(47, 3, 'Storage Bench', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Storage Bench', '', ''),
(43, 3, 'Riga Single Bed', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Riga Single Bed', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(31, 2, 'Zentique Antionette', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Zentique Antionette', '', ''),
(31, 1, 'Zentique Antionette', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Zentique Antionette', '', ''),
(49, 1, 'Large Wood', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Large Wood', '', ''),
(42, 3, 'Uttermost Swaun', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Uttermost Swaun', '', ''),
(42, 2, 'Uttermost Swaun', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Uttermost Swaun', '', ''),
(42, 1, 'Uttermost Swaun', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Uttermost Swaun', '', ''),
(47, 2, 'Storage Bench', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Storage Bench', '', ''),
(44, 2, 'Ikea, High bed frame', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, High bed frame', '', ''),
(30, 2, 'Cayman 60 Round', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Cayman 60 Round', '', ''),
(33, 2, 'Accent Bardot Chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Accent Bardot Chair', '', ''),
(28, 1, 'Americana Ebony', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Americana Ebony', '', ''),
(47, 1, 'Storage Bench', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Storage Bench', '', ''),
(30, 3, 'Cayman 60 Round', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Cayman 60 Round', '', ''),
(44, 3, 'Ikea, High bed frame', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, High bed frame', '', ''),
(41, 3, 'Stanley Furniture', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Stanley Furniture', '', ''),
(32, 3, 'Torbay bed', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Torbay bed', '', ''),
(29, 3, 'Kavari Bench', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Kavari Bench', '', ''),
(45, 2, 'Ikea, NORRNAS', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, NORRNAS', '', ''),
(48, 1, 'Floral Bird Chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Floral Bird Chair', '', ''),
(34, 1, 'Ikea, LEIRVIK', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, LEIRVIK', '', ''),
(43, 1, 'Riga Single Bed', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Riga Single Bed', '', ''),
(31, 3, 'Zentique Antionette', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Zentique Antionette', '', ''),
(46, 3, 'Winsome Fairlee', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Winsome Fairlee', '', ''),
(40, 3, 'Schoolhouse Stairway', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Schoolhouse Stairway', '', ''),
(30, 1, 'Cayman 60 Round', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Cayman 60 Round', '', ''),
(49, 3, 'Large Wood', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Large Wood', '', ''),
(45, 3, 'Ikea, NORRNAS', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Ikea, NORRNAS', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(36, 3, 'Vestibulum chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Vestibulum chair', '', ''),
(35, 1, 'Kipling Grey', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Kipling Grey', '', ''),
(33, 1, 'Accent Bardot Chair', '&lt;iframe src=&quot;//www.youtube.com/embed/YFobCNUUR7M&quot; allowfullscreen=&quot;&quot; frameborder=&quot;0&quot; height=&quot;315&quot; width=&quot;560&quot;&gt;&lt;/iframe&gt;\r\n\r\n&lt;p&gt;\r\n&lt;b&gt;From ancient times people always wanted to find a harmony.&lt;/b&gt; Greek philosophers stated that harmony is the basic element of a nature, \r\nand everything that surrounds us is in harmony, however mankind still can’t find a way to reach this condition. So, obviously we must start making \r\nour lives more harmonious. We spend a great amount of time of our life at our home (house or apartment). It is very important to feel the comfort in the dwelling.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;We are offering you our tremendous choice of different kinds of furniture.&lt;/b&gt; It is totally safe for your health. It has passed many various tests without a single failure. \r\nThis product has unique design and many special options which could indeed help you. You know, nowadays good design is a really important thing. Fashion in this case \r\nis really interesting phenomenon - we often like things that are good-looking. And it is normal - after all we get maximum information through the eyes. And our product \r\nis a perfect combination of cute shapes and real good content. It is really a product of a new generation. We promise that with our good you will always be in fashion \r\nand stylish. For those people who don’t care about fashion we offer some interesting design versions which have simple design and functional options.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n&lt;b&gt;\r\nDon’t forget about our 24/7 support system will help you solve your problems anytime.&lt;/b&gt; We care about our clients and never let them down.\r\n&lt;/p&gt;', '', 'Accent Bardot Chair', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(494, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(493, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(492, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3489 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3485, 30, 'catalog/product-15.png', 0),
(3441, 47, 'catalog/product-11.png', 0),
(3449, 28, 'catalog/product-11.png', 0),
(3431, 41, 'catalog/product-14.png', 0),
(3381, 40, 'catalog/product-18.png', 0),
(3423, 36, 'catalog/product-23.png', 0),
(3422, 36, 'catalog/product-24.png', 0),
(3461, 34, 'catalog/product-26.png', 0),
(3460, 34, 'catalog/product-25.png', 0),
(3385, 32, 'catalog/product-29.png', 4),
(3480, 43, 'catalog/product-32.png', 0),
(3479, 43, 'catalog/product-33.png', 0),
(3457, 44, 'catalog/product-35.png', 0),
(3456, 44, 'catalog/product-36.png', 0),
(3464, 45, 'catalog/product-38.png', 0),
(3463, 45, 'catalog/product-39.png', 0),
(3376, 31, 'catalog/product-41.png', 0),
(3375, 31, 'catalog/product-42.png', 0),
(3467, 29, 'catalog/product-43.png', 0),
(3427, 46, 'catalog/product-56.png', 0),
(3426, 46, 'catalog/product-57.png', 0),
(3454, 48, 'catalog/product-19.png', 0),
(3453, 48, 'catalog/product-21.png', 0),
(3380, 40, 'catalog/product-17.png', 0),
(3379, 40, 'catalog/product-16.png', 0),
(3484, 30, 'catalog/product-14.png', 0),
(3440, 47, 'catalog/product-12.png', 0),
(3448, 28, 'catalog/product-10.png', 0),
(3430, 41, 'catalog/product-13.png', 0),
(3378, 40, 'catalog/product-18.png', 0),
(3377, 40, 'catalog/product-17.png', 0),
(3452, 48, 'catalog/product-20.png', 0),
(3421, 36, 'catalog/product-23.png', 0),
(3420, 36, 'catalog/product-22.png', 0),
(3459, 34, 'catalog/product-27.png', 0),
(3458, 34, 'catalog/product-26.png', 0),
(3384, 32, 'catalog/product-30.png', 3),
(3383, 32, 'catalog/product-29.png', 2),
(3478, 43, 'catalog/product-31.png', 0),
(3477, 43, 'catalog/product-32.png', 0),
(3455, 44, 'catalog/product-34.png', 0),
(3462, 45, 'catalog/product-37.png', 0),
(3374, 31, 'catalog/product-40.png', 0),
(3373, 31, 'catalog/product-41.png', 0),
(3466, 29, 'catalog/product-44.png', 0),
(3425, 46, 'catalog/product-55.png', 0),
(3424, 46, 'catalog/product-56.png', 0),
(3476, 49, 'catalog/product-50.png', 0),
(3475, 49, 'catalog/product-51.png', 0),
(3474, 49, 'catalog/product-49.png', 0),
(3473, 49, 'catalog/product-50.png', 0),
(3472, 49, 'catalog/product-51.png', 0),
(3471, 49, 'catalog/product-49.png', 0),
(3419, 42, 'catalog/product-23.png', 0),
(3418, 42, 'catalog/product-24.png', 0),
(3417, 42, 'catalog/product-22.png', 0),
(3416, 42, 'catalog/product-23.png', 0),
(3415, 42, 'catalog/product-24.png', 0),
(3439, 47, 'catalog/product-10.png', 0),
(3438, 47, 'catalog/product-11.png', 0),
(3447, 28, 'catalog/product-11.png', 0),
(3446, 28, 'catalog/product-12.png', 0),
(3429, 41, 'catalog/product-14.png', 0),
(3428, 41, 'catalog/product-15.png', 0),
(3465, 29, 'catalog/product-45.png', 0),
(3488, 35, 'catalog/product-47.png', 0),
(3487, 35, 'catalog/product-48.png', 0),
(3486, 35, 'catalog/product-46.png', 0),
(3445, 33, 'catalog/product-53.png', 0),
(3444, 33, 'catalog/product-54.png', 0),
(3443, 33, 'catalog/product-52.png', 0),
(3442, 33, 'catalog/product-53.png', 0),
(3414, 42, 'catalog/product-22.png', 0),
(3413, 42, 'catalog/product-23.png', 0),
(3412, 42, 'catalog/product-24.png', 0),
(3382, 32, 'catalog/product-30.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(233, 28, 11, '', 1),
(235, 47, 11, '', 1),
(264, 42, 10, '2014-12-18 12:25', 1),
(238, 30, 11, '', 1),
(266, 42, 9, '', 1),
(267, 33, 13, '', 1),
(224, 35, 11, '', 1),
(227, 35, 2, '', 1),
(230, 35, 13, '', 1),
(234, 28, 13, '', 0),
(236, 47, 13, '', 1),
(237, 30, 13, '', 1),
(239, 44, 11, '', 1),
(240, 41, 11, '', 1),
(242, 49, 13, '', 1),
(241, 49, 11, '', 1),
(243, 32, 11, '', 1),
(244, 32, 13, '', 1),
(246, 29, 13, '', 1),
(245, 29, 11, '', 1),
(248, 45, 13, '', 1),
(247, 45, 11, '', 0),
(249, 48, 11, '', 1),
(250, 48, 13, '', 1),
(251, 34, 11, '', 1),
(252, 34, 13, '', 1),
(253, 43, 11, '', 1),
(254, 43, 13, '', 1),
(256, 31, 13, '', 1),
(255, 31, 11, '', 1),
(257, 46, 11, '', 1),
(259, 40, 13, '', 1),
(258, 40, 11, '', 1),
(261, 36, 13, '', 1),
(260, 36, 11, '', 1),
(263, 42, 13, '', 1),
(265, 42, 12, '2014-12-18', 1),
(262, 42, 11, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(120, 262, 42, 11, 47, 1500, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(121, 262, 42, 11, 46, 1500, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(12, 224, 35, 11, 46, 12, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(49, 238, 30, 11, 46, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(119, 262, 42, 11, 48, 1500, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(122, 263, 42, 13, 49, 1500, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(127, 267, 33, 13, 51, 122, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(126, 267, 33, 13, 50, 122, 1, '5.0000', '+', 5, '+', '5.00000000', '+'),
(125, 267, 33, 13, 49, 122, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(32, 233, 28, 11, 48, 144, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(33, 233, 28, 11, 47, 144, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(34, 233, 28, 11, 46, 144, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(35, 234, 28, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(36, 234, 28, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(37, 234, 28, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(38, 235, 47, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(39, 235, 47, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(40, 235, 47, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(41, 236, 47, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(42, 236, 47, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(43, 236, 47, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(48, 238, 30, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(47, 238, 30, 11, 48, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(46, 237, 30, 13, 50, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(45, 237, 30, 13, 51, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(44, 237, 30, 13, 49, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(52, 239, 44, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(51, 239, 44, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(50, 239, 44, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(55, 240, 41, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(54, 240, 41, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(53, 240, 41, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(124, 263, 42, 13, 50, 1500, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(123, 263, 42, 13, 51, 1500, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(61, 242, 49, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(60, 242, 49, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(59, 242, 49, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(58, 241, 49, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(57, 241, 49, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(56, 241, 49, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(62, 243, 32, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(63, 243, 32, 11, 48, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(64, 243, 32, 11, 48, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(65, 244, 32, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(66, 244, 32, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(67, 244, 32, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(71, 246, 29, 13, 49, 1000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(79, 248, 45, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(78, 248, 45, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(77, 248, 45, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(76, 247, 45, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(75, 247, 45, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(74, 247, 45, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(80, 249, 48, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(81, 249, 48, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(82, 249, 48, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(83, 250, 48, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(84, 250, 48, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(85, 250, 48, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(86, 251, 34, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(87, 251, 34, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(88, 251, 34, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(89, 252, 34, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(90, 252, 34, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(91, 252, 34, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(92, 253, 43, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(93, 253, 43, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(94, 253, 43, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(95, 254, 43, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(96, 254, 43, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(97, 254, 43, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(103, 256, 31, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(102, 256, 31, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(101, 256, 31, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(100, 255, 31, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(99, 255, 31, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(98, 255, 31, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(106, 257, 46, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(105, 257, 46, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(104, 257, 46, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(112, 259, 40, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(111, 259, 40, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(110, 259, 40, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(109, 258, 40, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(108, 258, 40, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(107, 258, 40, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(118, 261, 36, 13, 50, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(117, 261, 36, 13, 51, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(116, 261, 36, 13, 49, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(115, 260, 36, 11, 46, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(114, 260, 36, 11, 47, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(113, 260, 36, 11, 48, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(70, 245, 29, 11, 48, 1000, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(18, 227, 35, 2, 24, 12, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(23, 230, 35, 13, 49, 122, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(19, 227, 35, 2, 44, 12, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(69, 245, 29, 11, 46, 1000, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(17, 227, 35, 2, 23, 12, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(68, 245, 29, 11, 47, 1000, 1, '10.0000', '+', 10, '+', '10.00000000', '+'),
(24, 230, 35, 13, 51, 122, 1, '15.0000', '+', 15, '+', '15.00000000', '+'),
(73, 246, 29, 13, 50, 1000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(72, 246, 29, 13, 51, 1000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(25, 230, 35, 13, 50, 122, 1, '20.0000', '+', 20, '+', '20.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 29),
(28, 30),
(28, 31),
(28, 32),
(28, 33),
(28, 34),
(28, 35),
(28, 36),
(28, 40),
(28, 41),
(28, 42),
(28, 43),
(28, 44),
(28, 45),
(28, 46),
(28, 47),
(28, 48),
(28, 49),
(29, 28),
(29, 30),
(29, 33),
(29, 35),
(29, 41),
(29, 42),
(29, 47),
(30, 28),
(30, 29),
(30, 30),
(30, 31),
(30, 32),
(30, 33),
(30, 34),
(30, 35),
(30, 36),
(30, 40),
(30, 41),
(30, 43),
(30, 44),
(30, 45),
(30, 46),
(30, 47),
(30, 48),
(30, 49),
(31, 28),
(31, 30),
(31, 33),
(31, 35),
(31, 47),
(32, 28),
(32, 30),
(32, 33),
(32, 35),
(32, 41),
(32, 42),
(32, 47),
(33, 28),
(33, 29),
(33, 30),
(33, 31),
(33, 32),
(33, 33),
(33, 34),
(33, 35),
(33, 36),
(33, 40),
(33, 41),
(33, 42),
(33, 43),
(33, 44),
(33, 45),
(33, 46),
(33, 47),
(33, 48),
(33, 49),
(34, 28),
(34, 30),
(34, 33),
(34, 35),
(34, 41),
(34, 42),
(34, 47),
(35, 28),
(35, 29),
(35, 30),
(35, 31),
(35, 32),
(35, 33),
(35, 34),
(35, 35),
(35, 36),
(35, 40),
(35, 41),
(35, 42),
(35, 43),
(35, 44),
(35, 45),
(35, 46),
(35, 47),
(35, 48),
(35, 49),
(36, 28),
(36, 30),
(36, 33),
(36, 35),
(36, 41),
(36, 42),
(36, 47),
(40, 28),
(40, 30),
(40, 33),
(40, 35),
(40, 41),
(40, 42),
(40, 47),
(41, 28),
(41, 29),
(41, 30),
(41, 32),
(41, 33),
(41, 34),
(41, 35),
(41, 36),
(41, 40),
(41, 41),
(41, 42),
(41, 45),
(41, 46),
(41, 47),
(41, 48),
(41, 49),
(42, 28),
(42, 29),
(42, 32),
(42, 33),
(42, 34),
(42, 35),
(42, 36),
(42, 40),
(42, 41),
(42, 44),
(42, 45),
(42, 46),
(42, 47),
(42, 48),
(42, 49),
(43, 28),
(43, 30),
(43, 33),
(43, 35),
(43, 47),
(44, 28),
(44, 30),
(44, 33),
(44, 35),
(44, 42),
(44, 47),
(45, 28),
(45, 30),
(45, 33),
(45, 35),
(45, 41),
(45, 42),
(45, 47),
(46, 28),
(46, 30),
(46, 33),
(46, 35),
(46, 41),
(46, 42),
(46, 47),
(47, 28),
(47, 29),
(47, 30),
(47, 31),
(47, 32),
(47, 33),
(47, 34),
(47, 35),
(47, 36),
(47, 40),
(47, 41),
(47, 42),
(47, 43),
(47, 44),
(47, 45),
(47, 46),
(47, 47),
(47, 48),
(47, 49),
(48, 28),
(48, 30),
(48, 33),
(48, 35),
(48, 41),
(48, 42),
(48, 47),
(49, 28),
(49, 30),
(49, 33),
(49, 35),
(49, 41),
(49, 42),
(49, 47);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=784 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(774, 42, 1, 100),
(776, 47, 1, 300),
(777, 28, 1, 400),
(782, 43, 1, 600),
(783, 30, 1, 200),
(779, 44, 1, 700),
(780, 45, 1, 800),
(781, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=612 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(597, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(611, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(610, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(601, 33, 1, 0, '150.0000', '0000-00-00', '0000-00-00'),
(602, 28, 1, 0, '80.0000', '0000-00-00', '0000-00-00'),
(600, 47, 1, 0, '60.0000', '0000-00-00', '0000-00-00'),
(605, 44, 1, 0, '90.0000', '0000-00-00', '0000-00-00'),
(598, 41, 1, 0, '90.0000', '0000-00-00', '0000-00-00'),
(608, 49, 1, 0, '150.0000', '0000-00-00', '0000-00-00'),
(590, 32, 1, 0, '90.0000', '0000-00-00', '0000-00-00'),
(607, 29, 1, 0, '200.0000', '0000-00-00', '0000-00-00'),
(606, 45, 1, 0, '150.0000', '0000-00-00', '0000-00-00'),
(609, 43, 1, 0, '400.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 29),
(28, 30),
(28, 32),
(28, 33),
(28, 34),
(29, 20),
(30, 20),
(30, 29),
(30, 30),
(30, 32),
(30, 33),
(30, 34),
(30, 36),
(31, 25),
(31, 31),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 31),
(42, 20),
(42, 28),
(42, 29),
(42, 30),
(42, 32),
(42, 33),
(42, 34),
(43, 18),
(43, 20),
(43, 25),
(44, 18),
(44, 20),
(44, 28),
(44, 29),
(44, 30),
(44, 33),
(44, 34),
(44, 35),
(44, 36),
(45, 18),
(46, 18),
(46, 20),
(46, 25),
(46, 31),
(47, 18),
(47, 20),
(47, 29),
(47, 30),
(47, 32),
(47, 33),
(47, 34),
(47, 36),
(48, 20),
(48, 34);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(41, 0, 0),
(40, 0, 0),
(48, 0, 0),
(36, 0, 0),
(34, 0, 0),
(32, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(31, 0, 0),
(29, 0, 0),
(35, 0, 0),
(49, 0, 0),
(33, 0, 0),
(46, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(3, 47, 0, 'Otto', 'I\'m very happy. Good choice for everyone!', 5, 1, '2014-12-03 12:03:04', '2015-11-20 18:12:41'),
(5, 30, 0, 'Jenifer', 'Wonderful! It\'s what i was looking for long time. ', 5, 1, '2014-12-03 12:03:47', '2015-09-24 10:56:40'),
(9, 29, 0, 'Donald', 'Hi, my order arrived yesterday. I love it! Thank you! What a fast service...you guys are great! I wish every site was like this one ', 5, 1, '2014-12-03 12:05:27', '2015-09-24 10:38:10'),
(12, 45, 0, 'David', 'Thank you again and again! I have experienced the fastest support ever. My order arrived on my door step the following day. Your team is always, friendly and very helpful. You managed to exceed my expectations! ', 5, 1, '2014-12-03 12:06:13', '2015-09-24 10:37:41'),
(13, 45, 0, 'Irene', 'Very good product.', 4, 1, '2014-12-03 12:06:18', '2015-09-24 10:45:46'),
(17, 48, 0, 'Cooper', 'Hi, guys! I want to thank you for my very very quick delivery and I just love my order… Your company efficient services and customer care are second to none! I am very happy! I will surely share my experience with my friends!', 5, 1, '2014-12-03 12:07:18', '2015-09-24 10:37:14'),
(21, 34, 0, 'Cate', 'I love your store! There is the largest selection of products of the exceptional quality and the lowest prices like in no other store. My family appreciated my purchase, I have no words to describe how pleased I am...Thanks a lot to your store, to your team and the delivery in time!!! Go on your great business, stay the best!', 5, 1, '2014-12-03 12:08:39', '2015-09-24 10:36:21'),
(22, 31, 0, 'Elizabeth', 'Great Job, 100 percent satisfaction guarantee!', 4, 1, '2014-12-03 12:10:01', '2015-09-24 10:43:10'),
(25, 40, 0, 'Bob', 'Hi guys! I\'m soo impressed!!! Your service is unbeaten, support staff is so friendly...very knowledgeable and professional team! The product I received is of the highest quality ever! And in addition I\'ve saved my money!', 5, 1, '2014-12-03 12:10:41', '2015-09-24 10:35:49'),
(28, 49, 0, 'Bernard', 'WOW!!! I have no words! It was a unique and very enjoyable experience. You have such a diverse variety of beautiful products of the highest quality plus superb service. I am now a fan of your site! I can\'t wait to buy from you again! ', 5, 1, '2014-12-03 12:11:12', '2015-09-24 10:35:17'),
(33, 35, 0, 'Barry', 'I loved everything about buying from you! My purchase was carefully packaged and quickly shipped. I was also pleased with great service and delivery times. There is no such awesome store on the web that can match you :)', 5, 1, '2014-12-03 12:13:02', '2015-09-24 10:02:21'),
(39, 28, 0, 'Albert', 'I wanted to say thank you for the amazing product and for the fast processing and delivery. It was impressive, you weren\'t kidding. I was surprised with such an excellent quality...My family is very happy. I would definitely use this site again and again and recommend it to others.', 5, 1, '2014-12-03 12:14:08', '2015-09-24 10:01:24'),
(42, 43, 0, 'Tom', 'Thank you again and again! I have experienced the fastest support ever. My order arrived on my door step the following day. Your team is always, friendly and very helpful. You managed to exceed my expectations! ', 5, 1, '2014-12-03 12:33:45', '2016-03-23 11:25:45'),
(43, 42, 0, 'Mark', 'Hi, my order arrived yesterday. I love it! Thank you! What a fast service...you guys are great! I wish every site was like this one ', 5, 1, '2014-12-03 12:34:03', '2016-03-23 11:25:41'),
(47, 46, 0, 'Jessica', 'Hi, guys! I want to thank you for my very very quick delivery and I just love my order…  Your company efficient services and customer care are second to none! I am very happy! I will surely share my experience with my friends!', 5, 1, '2014-12-03 12:35:09', '2016-03-23 11:25:37'),
(48, 28, 0, 'asldaksdkas; ld', ';lk;asd ;aksd;l aksd;lka s;lks ;lkda;s kd;lask d;laskd ;laks;dl kasd asd', 1, 0, '2016-03-28 11:24:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5360 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(5343, 0, 'config', 'config_file_max_size', '300000', 0),
(5344, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(5345, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(5338, 0, 'config', 'config_compression', '0', 0),
(5339, 0, 'config', 'config_secure', '0', 0),
(5340, 0, 'config', 'config_password', '1', 0),
(5341, 0, 'config', 'config_shared', '0', 0),
(5358, 0, 'config', 'config_encryption', '6Mp6FJg95NW8ose6fNqFAbiVWzJdC2Wv3O5AOa9RK1Z50RdRkkGsSDJwjknuLZKXWlHV6ehf1EMNhEJh5tEeZPbilbvOqfBfrjldMziL4invenXgui1YgyDsrCrcvYDJHDdxheIwxkxvrLoc7txMipJEakQldkpVAVI0d8MkPiYrPmpwZJAOKJJ0ZpaGnktPXFkHHbpl6TKxU8DLCyPJqBzqSo1y7aXz2185Ldr14GfClh7K54ARLvzTgTxcMWv24PKcUQqHWUlaljhJ6JjF0UujLDd9qurLfL5l1nybceE7ruKeV1AlGKe6UDuoPZwDF0ZxJtTSBJicpaQk9ywPvQmUktD4u1z4O5f6IjOLbLsvezoG0ZwOebxJ24T79lPbsMqyb08Qvm6kkEtJjjmsobf5CXESsILBEvagcct7cuyFFdnxJcIbdm0avM7jtoYGW3EfXr2ru943K5LZkdIfwvne64cb0v3xTcJAtjUncAlHO3ckpfV93rimVnGP3MbhrVCuEo6inc59BKOovfESZV7NlKRvdfiZdjahk3gdp0kxQqj3zdsnvU1PM3pSowq3d81aw5Xk2YubkyYDy4Bj7lt5QE2g0kviYY2VEKTjTIYjm2De1OUfsDmlP7bQOHw7Pa4pnohHRhh7ovQfuDqQYQomjO17vVlbAqTAIqD7aChlFFfAF89jlxDOvCunIRp0lIZr2LuGUImTCYejernc9zNsYvlLczfXn4BAZs3DxYHpkQ0u4RLILBm9VTKARQaE59PVf9PHyqhOX2mStOVD93WzFiUEIQOtlpPcIHZhHhHtj2djXGg7apQVyVFrCK65mUNgla8MsjWKpR8yUsrqWVYHBwptOVHIm2mKf3nADuKoWER3ZARFCFUur5n9MmPupTyiT7naszLpcMtlCmlRZs8fHuNlprQ9eFGv4q6Y2Ftbp362KTuLBihrMkdRlqilcggo26JhGLQH1W3P3UPmZB6a51GQU7816hm3XDArYGFdQQ1VL9fwCdR1ht4NtwSw', 0),
(5139, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(5138, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(5137, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(5136, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(5135, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(5134, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(5133, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(5132, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(5131, 0, 'theme_default', 'theme_default_image_related_height', '270', 0),
(5130, 0, 'theme_default', 'theme_default_image_related_width', '270', 0),
(5129, 0, 'theme_default', 'theme_default_image_additional_height', '88', 0),
(5128, 0, 'theme_default', 'theme_default_image_additional_width', '88', 0),
(5127, 0, 'theme_default', 'theme_default_image_product_height', '220', 0),
(5126, 0, 'theme_default', 'theme_default_image_product_width', '220', 0),
(5125, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(5337, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(5335, 0, 'config', 'config_maintenance', '0', 0),
(5336, 0, 'config', 'config_seo_url', '0', 0),
(5334, 0, 'config', 'config_mail_alert', '', 0),
(5332, 0, 'config', 'config_mail_smtp_port', '25', 0),
(5333, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(5331, 0, 'config', 'config_mail_smtp_password', '', 0),
(5330, 0, 'config', 'config_mail_smtp_username', '', 0),
(5328, 0, 'config', 'config_mail_parameter', '', 0),
(5329, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(5124, 0, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(5327, 0, 'config', 'config_mail_protocol', 'mail', 0),
(5325, 0, 'config', 'config_ftp_root', '', 0),
(5326, 0, 'config', 'config_ftp_status', '0', 0),
(5324, 0, 'config', 'config_ftp_password', '', 0),
(5323, 0, 'config', 'config_ftp_username', '', 0),
(5322, 0, 'config', 'config_ftp_port', '', 0),
(5123, 0, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(5122, 0, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(5321, 0, 'config', 'config_ftp_hostname', '', 0),
(5320, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(5121, 0, 'theme_default', 'theme_default_image_category_height', '190', 0),
(5120, 0, 'theme_default', 'theme_default_image_category_width', '190', 0),
(5119, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(5319, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(5118, 0, 'theme_default', 'theme_default_product_limit', '6', 0),
(5117, 0, 'theme_default', 'theme_default_status', '1', 0),
(5116, 0, 'theme_default', 'theme_default_directory', 'theme616', 0),
(5318, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(5317, 0, 'config', 'config_captcha', '', 0),
(5316, 0, 'config', 'config_return_status_id', '2', 0),
(5315, 0, 'config', 'config_return_id', '0', 0),
(5314, 0, 'config', 'config_affiliate_mail', '0', 0),
(5313, 0, 'config', 'config_affiliate_id', '4', 0),
(5312, 0, 'config', 'config_affiliate_commission', '5', 0),
(5311, 0, 'config', 'config_affiliate_auto', '1', 0),
(5310, 0, 'config', 'config_affiliate_approval', '0', 0),
(5309, 0, 'config', 'config_stock_checkout', '1', 0),
(5308, 0, 'config', 'config_stock_warning', '1', 0),
(5307, 0, 'config', 'config_stock_display', '1', 0),
(5359, 0, 'config', 'config_api_id', '8', 0),
(5305, 0, 'config', 'config_order_mail', '0', 0),
(5304, 0, 'config', 'config_fraud_status_id', '7', 0),
(5303, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(5302, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(5301, 0, 'config', 'config_order_status_id', '1', 0),
(5300, 0, 'config', 'config_checkout_id', '5', 0),
(5299, 0, 'config', 'config_checkout_guest', '1', 0),
(5298, 0, 'config', 'config_cart_weight', '1', 0),
(5297, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(5295, 0, 'config', 'config_account_id', '3', 0),
(5296, 0, 'config', 'config_account_mail', '0', 0),
(5294, 0, 'config', 'config_login_attempts', '5', 0),
(5293, 0, 'config', 'config_customer_price', '0', 0),
(5292, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(5291, 0, 'config', 'config_customer_group_id', '1', 0),
(5289, 0, 'config', 'config_tax_customer', 'shipping', 0),
(5290, 0, 'config', 'config_customer_online', '0', 0),
(5287, 0, 'config', 'config_tax', '0', 0),
(5288, 0, 'config', 'config_tax_default', 'shipping', 0),
(5286, 0, 'config', 'config_voucher_max', '1000', 0),
(5284, 0, 'config', 'config_review_mail', '0', 0),
(5285, 0, 'config', 'config_voucher_min', '1', 0),
(5283, 0, 'config', 'config_review_guest', '1', 0),
(5282, 0, 'config', 'config_review_status', '1', 0),
(5280, 0, 'config', 'config_product_count', '1', 0),
(5281, 0, 'config', 'config_limit_admin', '20', 0),
(5279, 0, 'config', 'config_label_new_limit', '10', 0),
(5277, 0, 'config', 'config_label_discount', '1', 0),
(5278, 0, 'config', 'config_label_new', '1', 0),
(5276, 0, 'config', 'config_label_sale', '1', 0),
(5275, 0, 'config', 'config_weight_class_id', '1', 0),
(5274, 0, 'config', 'config_length_class_id', '1', 0),
(5272, 0, 'config', 'config_currency', 'USD', 0),
(5273, 0, 'config', 'config_currency_auto', '1', 0),
(5268, 0, 'config', 'config_country_id', '222', 0),
(5269, 0, 'config', 'config_zone_id', '3563', 0),
(5270, 0, 'config', 'config_language', 'en-gb', 0),
(5271, 0, 'config', 'config_admin_language', 'en-gb', 0),
(5260, 0, 'config', 'config_address', '4578 Marmora Road,Glasgow D04 89GR', 0),
(5261, 0, 'config', 'config_geocode', '40.6700, -73.9400', 0),
(5356, 0, 'config', 'config_email', 'admin@admin.com', 0),
(5263, 0, 'config', 'config_telephone', '800-2345-6789', 0),
(5264, 0, 'config', 'config_fax', '800-2345-6790', 0),
(5265, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(5266, 0, 'config', 'config_open', '7 days a week from 8:00 am to 5:00 pm', 0),
(5267, 0, 'config', 'config_comment', 'Welcome in our Interior store !', 0),
(5259, 0, 'config', 'config_owner', 'Interior online store', 0),
(5258, 0, 'config', 'config_name', 'Interior online store', 0),
(5257, 0, 'config', 'config_layout_id', '4', 0),
(5256, 0, 'config', 'config_theme', 'theme_default', 0),
(5255, 0, 'config', 'config_meta_keyword', '', 0),
(5254, 0, 'config', 'config_meta_description', 'Interior online store', 0),
(5253, 0, 'config', 'config_meta_title', 'Interior online store', 0),
(5244, 0, 'tm_social_list', 'tm_social_list_status', '1', 0),
(5245, 0, 'tm_social_list', 'tm_social_list_youtube', '//www.youtube.com', 0),
(5246, 0, 'tm_social_list', 'tm_social_list_facebook', '//www.facebook.com/TemplateMonster/', 0),
(5247, 0, 'tm_social_list', 'tm_social_list_google_plus', '//www.plus.google.com', 0),
(5248, 0, 'tm_social_list', 'tm_social_list_twitter', '//twitter.com/TemplateMonster', 0),
(5249, 0, 'tm_social_list', 'tm_social_list_pinterest', '', 0),
(5250, 0, 'tm_social_list', 'tm_social_list_instagram', '//www.instagram.com/template_monster/', 0),
(5251, 0, 'tm_social_list', 'tm_social_list_vimeo', '', 0),
(5252, 0, 'account', 'account_status', '1', 0),
(5346, 0, 'config', 'config_error_display', '1', 0),
(5347, 0, 'config', 'config_error_log', '1', 0),
(5348, 0, 'config', 'config_error_filename', 'error.log', 0),
(5349, 0, 'config', 'config_simple_blog_status', '1', 0),
(5350, 0, 'config', 'config_simple_blog_limit', '3', 0),
(5351, 0, 'config', 'config_simple_blog_description_limit', '200', 0),
(5352, 0, 'config', 'config_simple_blog_comment_auto_approval', '0', 0),
(5353, 0, 'config', 'config_simple_blog_author_information', '1', 0),
(5354, 0, 'config', 'config_simple_blog_related_articles', '1', 0),
(5355, 0, 'config', 'config_simple_blog_share_social_site', '1', 0),
(5357, 0, 'config', 'config_url', 'http://192.168.9.13/BRB/1076/theme616-full/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` mediumtext NOT NULL,
  `featured_image` mediumtext NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` mediumtext NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article`
--

INSERT INTO `oc_simple_blog_article` (`simple_blog_article_id`, `simple_blog_author_id`, `allow_comment`, `image`, `featured_image`, `article_related_method`, `article_related_option`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 1, '', 'catalog/blog/post-1.jpg', 'product_wise', '', 0, 1, '2015-09-16 17:26:55', '2016-04-15 15:52:32'),
(2, 1, 1, '', 'catalog/blog/post-2.jpg', 'product_wise', '', 1, 1, '2015-09-17 10:25:42', '2016-04-15 15:52:44'),
(3, 2, 1, '', 'catalog/blog/post-3.jpg', 'category_wise', '', 2, 1, '2015-09-17 10:28:08', '2016-04-15 15:53:23'),
(4, 3, 1, '', 'catalog/blog/post-4.jpg', 'manufacturer_wise', '', 3, 1, '2015-09-21 16:51:28', '2016-04-15 15:53:37'),
(5, 3, 1, '', 'catalog/blog/post-5.jpg', 'category_wise', '', 4, 1, '2015-09-21 16:53:36', '2016-04-15 15:53:47'),
(6, 4, 1, '', 'catalog/blog/post-6.jpg', 'product_wise', '', 5, 1, '2015-09-21 16:55:11', '2016-04-15 15:54:03'),
(7, 4, 1, '', 'catalog/blog/post-7.jpg', 'product_wise', '', 6, 1, '2015-09-21 16:57:06', '2016-04-15 15:54:11'),
(8, 2, 1, '', 'catalog/blog/post-8.jpg', 'product_wise', '', 7, 1, '2015-09-21 16:59:22', '2016-04-15 15:54:20'),
(9, 1, 1, '', 'catalog/blog/post-9.jpg', 'product_wise', '', 8, 1, '2015-09-21 17:01:01', '2016-04-15 15:54:28'),
(10, 1, 1, '', 'catalog/blog/post-10.jpg', 'product_wise', '', 9, 1, '2015-10-13 15:07:26', '2016-04-15 15:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_description`
--

INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(216, 2, 3, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(215, 2, 2, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(228, 4, 3, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n', '', ''),
(227, 4, 2, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n', '', ''),
(234, 6, 3, 'Looking into the future', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(233, 6, 2, 'Looking into the future', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(232, 6, 1, 'Four Types of Verbal Communication', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(225, 3, 3, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(224, 3, 2, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(223, 3, 1, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(237, 7, 3, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(236, 7, 2, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(235, 7, 1, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(240, 8, 3, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(239, 8, 2, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(243, 9, 3, 'Feeling Stressed? Try the One Joke per Day Therapy', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;', '', ''),
(242, 9, 2, 'Feeling Stressed? Try the One Joke per Day Therapy', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;', '', ''),
(241, 9, 1, 'Feeling Stressed? Try the One Joke per Day Therapy', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;', '', '');
INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(231, 5, 3, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(230, 5, 2, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(213, 1, 3, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(212, 1, 2, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(211, 1, 1, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(214, 2, 1, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(226, 4, 1, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;', '', ''),
(229, 5, 1, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(238, 8, 1, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(246, 10, 3, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '', ''),
(245, 10, 2, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '', ''),
(244, 10, 1, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description_additional`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description_additional`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_description_additional`
--

INSERT INTO `oc_simple_blog_article_description_additional` (`simple_blog_article_id`, `language_id`, `additional_description`) VALUES
(3, 3, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),
(3, 2, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),
(3, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_product_related`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_product_related`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_to_category`
--

INSERT INTO `oc_simple_blog_article_to_category` (`simple_blog_article_id`, `simple_blog_category_id`) VALUES
(2, 2),
(4, 4),
(4, 2),
(6, 2),
(6, 1),
(3, 2),
(7, 4),
(7, 3),
(8, 4),
(8, 1),
(9, 4),
(9, 2),
(9, 1),
(5, 2),
(5, 3),
(1, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_to_store`
--

INSERT INTO `oc_simple_blog_article_to_store` (`simple_blog_article_id`, `store_id`) VALUES
(2, 0),
(4, 0),
(6, 0),
(3, 0),
(7, 0),
(8, 0),
(9, 0),
(5, 0),
(1, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author`
--

DROP TABLE IF EXISTS `oc_simple_blog_author`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_author`
--

INSERT INTO `oc_simple_blog_author` (`simple_blog_author_id`, `name`, `image`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Jessica Prinston', 'catalog/avatar.jpg', 1, '2015-09-16 17:26:04', '2015-09-29 17:51:00'),
(2, 'Sam Kromstain', 'catalog/avatar.jpg', 1, '2015-09-17 10:26:40', '2015-09-29 17:52:05'),
(3, 'Robert Johnson', 'catalog/avatar.jpg', 1, '2015-09-21 16:32:38', '2015-09-29 17:51:32'),
(4, 'Edna Barton', 'catalog/avatar.jpg', 1, '2015-09-21 16:34:45', '2015-09-29 17:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_author_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_author_description`
--

INSERT INTO `oc_simple_blog_author_description` (`simple_blog_author_description_id`, `simple_blog_author_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `date_added`) VALUES
(36, 1, 3, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(34, 1, 1, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(35, 1, 2, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(42, 2, 3, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(40, 2, 1, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(41, 2, 2, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(39, 3, 3, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(37, 3, 1, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(38, 3, 2, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(45, 4, 3, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(43, 4, 1, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(44, 4, 2, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_category`
--

INSERT INTO `oc_simple_blog_category` (`simple_blog_category_id`, `image`, `parent_id`, `top`, `blog_category_column`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, '', 0, 1, 0, 3, 0, 1, '2015-09-16 17:23:22', '2016-04-15 15:55:44'),
(2, 'catalog/product-1.png', 0, 1, 0, 5, 2, 1, '2015-09-17 10:24:12', '2016-04-15 15:56:04'),
(3, '', 0, 1, 0, 5, 1, 1, '2015-09-21 16:44:25', '2016-04-15 15:55:52'),
(4, '', 0, 1, 0, 5, 3, 1, '2015-09-28 17:06:19', '2016-04-15 15:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_category_description`
--

INSERT INTO `oc_simple_blog_category_description` (`simple_blog_category_description_id`, `simple_blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(69, 2, 3, 'Customer Service', '', '', ''),
(68, 2, 2, 'Customer Service', '', '', ''),
(67, 2, 1, 'Customer Service', '', '', ''),
(72, 4, 3, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(71, 4, 2, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(70, 4, 1, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(66, 3, 3, 'Consulting', '&lt;br&gt;', '', ''),
(65, 3, 2, 'Consulting', '', '', ''),
(64, 3, 1, 'Consulting', '&lt;br&gt;', '', ''),
(63, 1, 3, 'Branding', '', '', ''),
(62, 1, 2, 'Branding', '', '', ''),
(61, 1, 1, 'Branding', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_category_to_store`
--

INSERT INTO `oc_simple_blog_category_to_store` (`simple_blog_category_id`, `store_id`) VALUES
(2, 0),
(3, 0),
(1, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_comment`
--

DROP TABLE IF EXISTS `oc_simple_blog_comment`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_comment`
--

INSERT INTO `oc_simple_blog_comment` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 'Bernard Show', 'That’s awesome! Future belongs to youngsters, so businessmen can’t ignore their needs in any case.', 1, '2015-09-17 10:05:35', '2015-09-28 17:18:32'),
(16, 2, 0, 'Max Harris', 'Will try to repeat your mantras every day. Hopefully they will help in my current project.', 1, '2015-09-28 17:20:59', '2015-09-28 17:20:59'),
(2, 3, 0, 'Zack Hernandez', 'The success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot; – very true to life statement', 1, '2015-09-18 11:39:25', '2015-09-28 17:19:38'),
(3, 3, 0, 'James Anderson', ' I am thinking of starting my own business and will ponder on the author’s notes. Concise and understandable, good job.', 1, '2015-09-18 11:48:36', '2015-09-28 17:20:05'),
(15, 2, 0, 'Taylor Miller', 'Follow your dream and it will turn to reality. A very inspiring article. Thanks for sharing!', 1, '2015-09-28 17:20:34', '2015-09-28 17:20:34'),
(4, 3, 0, 'Greg Wilson', 'Unbelievable… Three simple guidelines to follow that can change your life. Worth trying out, sure they will work as everything genius is simple.', 1, '2015-09-18 12:08:42', '2015-09-28 17:19:53'),
(6, 1, 0, 'Michael Ventura', 'Completely agree with the author. Modern businessmen should involve young people, introduce brands to them, socialize… Looks like a fresh product market!', 1, '2015-09-21 18:18:56', '2015-09-28 17:18:47'),
(14, 1, 1, 'Sarah Cole', 'The author did a great job with all these research work. Really valuable information, thank you!', 1, '2015-09-28 17:18:32', '2015-09-28 17:18:32'),
(17, 2, 0, 'Sidney Garcia', 'I thought I am just a dreamer, but now I know how to become a doer. That’s cool, appreciate it!', 1, '2015-09-28 17:21:18', '2015-09-28 17:21:18'),
(18, 4, 0, 'Joe Lee', 'Very inspiring! So much wisdom in simple words…', 1, '2015-10-13 12:37:35', '2015-10-13 14:27:08'),
(19, 4, 0, 'Kate Taylor', 'Love this poet! Absolutely brilliant quotes!', 1, '2015-10-13 12:37:45', '2015-10-13 14:27:02'),
(20, 4, 0, 'Kim Martin', 'He is phenomenal! Rumi is considered to be the most popular poet in America.', 1, '2015-10-13 12:37:54', '2015-10-13 14:26:57'),
(21, 5, 0, 'Rob Gonzalez', 'Thanks for your pieces of advice. Will try to stick to them.', 1, '2015-10-13 12:56:02', '2015-10-13 14:26:52'),
(22, 5, 0, 'Paul Young', 'Gosh! I have been slowly damaging my heart all these years! It’s time to stop ruining myself.', 1, '2015-10-13 12:56:12', '2015-10-13 14:26:47'),
(23, 5, 0, 'Sandy Hill', 'Human life is the most precious thing in this world. It’s really time to stop committing lazy suicides.', 1, '2015-10-13 12:56:22', '2015-10-13 14:26:41'),
(24, 6, 0, 'Libi Ramirez', 'Communication is the process of exchanging information in the form of messages, symbols, thoughts, signs, and opinions. It’s utterly important for such social beings like people', 1, '2015-10-13 13:01:26', '2015-10-13 14:26:35'),
(25, 6, 0, 'Kirsten Evans', 'Indeed, it would be extremely hard to imagine a world without some form of interpersonal interaction.', 1, '2015-10-13 13:01:32', '2015-10-13 14:26:30'),
(26, 6, 0, 'Brook Murphy', 'Some of the basic ways by which we communicate with one another is through speech, sign language, body language, touch, and eye contact. So, waiting for the sequel of your post.\r\n', 1, '2015-10-13 13:01:40', '2015-10-13 14:26:25'),
(27, 7, 0, 'Ashley Cooper', 'Now I know what colors to choose for me office, thank you!', 1, '2015-10-13 13:05:32', '2015-10-13 14:26:21'),
(28, 7, 0, 'Gomez Bell', 'The repairing does not seem that challenging any more. Great tips!', 1, '2015-10-13 13:05:39', '2015-10-13 14:26:16'),
(29, 7, 0, 'Morgan Cook', 'Colors that stimulate the employees, relax the customers and make them feel welcome… Cool! That’s a dream!', 1, '2015-10-13 13:05:45', '2015-10-13 14:26:10'),
(30, 8, 0, 'Nancy Long', 'Thanks for sharing! Will try to avoid the listed mistakes.', 1, '2015-10-13 14:16:59', '2015-10-13 14:26:06'),
(31, 8, 0, 'Eva Reed', 'I wish I’ve read this article earlier… Useful tips for all young managers.', 1, '2015-10-13 14:17:05', '2015-10-13 14:23:53'),
(32, 8, 0, 'Betty Butler', 'Just got my new position. The discussed matter is really urgent for me.', 1, '2015-10-13 14:17:14', '2015-10-13 14:23:48'),
(33, 9, 0, 'Melany Wood', 'Smile, the depression will think you are an idiot and go away', 1, '2015-10-13 14:22:47', '2015-10-13 14:23:26'),
(34, 9, 0, 'York Cruz', 'BTW, your smiling face looks much more appealing and beautiful too.', 1, '2015-10-13 14:22:56', '2015-10-13 14:23:20'),
(35, 9, 0, 'Vivien Foster', 'I like to spread my laughter around as it\'s contagious', 1, '2015-10-13 14:23:05', '2015-10-13 14:23:16'),
(36, 10, 0, 'Mark Jenkins', 'You’ve raised an important topic. Hopefully many people will at least consider shifting to green life.', 1, '2015-10-13 15:31:41', '2015-10-13 15:32:18'),
(37, 10, 0, 'Dudley Diaz', 'Going green turned out to be really simple. Let’s go green, guys!', 1, '2015-10-13 15:31:51', '2015-10-13 15:32:13'),
(38, 10, 0, 'Meril Ward', 'Preserving our planet for future generation is a necessity. So, go green now while it’s not too late.\r\n', 1, '2015-10-13 15:31:58', '2015-10-13 15:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_related_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_related_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_related_article`
--

INSERT INTO `oc_simple_blog_related_article` (`simple_blog_related_article_id`, `simple_blog_article_id`, `simple_blog_article_related_id`, `sort_order`, `status`, `date_added`) VALUES
(39, 2, 1, 0, 1, '2016-04-15 15:52:44'),
(46, 4, 1, 0, 1, '2016-04-15 15:53:37'),
(45, 3, 2, 1, 1, '2016-04-15 15:53:23'),
(44, 3, 1, 2, 1, '2016-04-15 15:53:23'),
(38, 1, 7, 0, 1, '2016-04-15 15:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_view`
--

DROP TABLE IF EXISTS `oc_simple_blog_view`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_view`
--

INSERT INTO `oc_simple_blog_view` (`simple_blog_view_id`, `simple_blog_article_id`, `view`, `date_added`, `date_modified`) VALUES
(1, 1, 80, '2015-09-16 18:15:21', '2016-05-04 12:28:21'),
(2, 3, 189, '2015-09-17 10:28:27', '2016-04-15 15:57:10'),
(3, 2, 7, '2015-09-21 16:08:28', '2016-03-16 16:47:17'),
(10, 6, 10, '2015-09-29 10:44:23', '2016-03-25 17:25:03'),
(5, 7, 12, '2015-09-21 17:30:47', '2016-03-16 16:28:17'),
(6, 5, 24, '2015-09-21 17:53:05', '2016-03-25 16:19:45'),
(7, 8, 32, '2015-09-22 12:42:49', '2016-07-11 19:03:27'),
(8, 4, 12, '2015-09-23 17:59:14', '2016-03-16 16:42:28'),
(9, 9, 17, '2015-09-25 17:55:16', '2016-03-25 18:06:43'),
(11, 10, 7, '2015-10-13 15:31:30', '2016-03-25 18:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'android-5-0-lollipop-material-6661.jpg', 'android-5-0-lollipop-material-6661.jpg.Ligkx8TSuvunmYUfHWQQwpPMHDXB2KqJ', '1549faa10976e0c41e3e3ea2147902a9d7397e17', '2016-03-28 10:43:51'),
(2, 'mars-atakuet-mars-attacks.jpg', 'mars-atakuet-mars-attacks.jpg.ns0RkTG6OEh9CRDSr5bi1P9T4OCfWTAC', 'f9013aef0ea3ee827ee143d8a3ac53e61785be81', '2016-03-28 10:44:00'),
(3, 'black-grenn-figure.jpg', 'black-grenn-figure.jpg.3pqFKX3UKG62jq7sGlg7vYDg5xX5TC93', '7e2138ca46eee9575a87ff9f526768735dd9377d', '2016-03-28 10:44:25'),
(4, 'mars-atakuet-mars-attacks.jpg', 'mars-atakuet-mars-attacks.jpg.xfn5L7aut4ce4L6BxaJoUd7h09lpWU3z', 'f3b2a142a7f2290371d31034dd7fd59317e72f72', '2016-03-28 10:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=934 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(860, 'product_id=48', 'ipod-classic'),
(933, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(849, 'manufacturer_id=8', 'Citizen'),
(772, 'information_id=4', 'about_us'),
(866, 'product_id=42', 'test'),
(928, 'category_id=34', 'mp3-players'),
(926, 'category_id=36', 'test2'),
(774, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(932, 'category_id=25', 'component'),
(931, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(925, 'category_id=35', 'test1'),
(930, 'category_id=30', 'printer'),
(929, 'category_id=31', 'scanner'),
(924, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(927, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(872, 'product_id=30', 'canon-eos-5d'),
(857, 'product_id=47', 'hp-lp3065'),
(855, 'product_id=28', 'htc-touch-hd'),
(858, 'product_id=43', 'macbook'),
(863, 'product_id=44', 'macbook-air'),
(868, 'product_id=45', 'macbook-pro'),
(870, 'product_id=31', 'nikon-d300'),
(864, 'product_id=29', 'palm-treo-pro'),
(862, 'product_id=35', 'product-8'),
(867, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(904, 'product_id=33', 'samsung-syncmaster-941bw'),
(859, 'product_id=46', 'sony-vaio'),
(861, 'product_id=41', 'imac'),
(869, 'product_id=40', 'iphone'),
(905, 'product_id=36', 'ipod-nano'),
(871, 'product_id=34', 'ipod-shuffle'),
(856, 'product_id=32', 'ipod-touch'),
(848, 'manufacturer_id=9', 'Casio'),
(847, 'manufacturer_id=5', 'Boss'),
(851, 'manufacturer_id=7', 'Fossil'),
(850, 'manufacturer_id=6', 'Diesel'),
(852, 'manufacturer_id=10', 'Rotary'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(906, 'simple_blog_article_id=1', 'article0'),
(907, 'simple_blog_article_id=2', 'article1'),
(910, 'simple_blog_article_id=3', 'article2'),
(911, 'simple_blog_article_id=4', 'article3'),
(912, 'simple_blog_article_id=5', 'article4'),
(913, 'simple_blog_article_id=6', 'article5'),
(914, 'simple_blog_article_id=7', 'article6'),
(915, 'simple_blog_article_id=8', 'article7'),
(916, 'simple_blog_article_id=9', 'article8'),
(917, 'simple_blog_article_id=10', 'article9'),
(921, 'simple_blog_category_id=3', 'articlecategory1'),
(920, 'simple_blog_category_id=1', 'articlecategory0'),
(922, 'simple_blog_category_id=2', 'articlecategory2'),
(923, 'simple_blog_category_id=4', 'articlecategory3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(2, 10, 'demo', 'bd3d321419a7fb5aa65a241af9befac8c47a8e56', '3zW4EYctc', 'Demo', 'Demo', 'demo@demo.com', '', '', '', 1, '2016-07-12 10:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/olark","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/tm_blog_articles","module\\/tm_blog_category","module\\/tm_cookie_policy","module\\/tm_fbbox","module\\/tm_google_map","module\\/tm_megamenu","module\\/tm_pinterest","module\\/tm_twitter","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/export_import","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/tm_parallax","module\\/tm_social_list","module\\/account","module\\/affiliate","module\\/banner","module\\/html","module\\/information","module\\/parallax","module\\/tm_social_list","module\\/tm_slideshow"],"modify":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/olark","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/tm_blog_articles","module\\/tm_blog_category","module\\/tm_cookie_policy","module\\/tm_fbbox","module\\/tm_google_map","module\\/tm_megamenu","module\\/tm_pinterest","module\\/tm_twitter","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/export_import","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/tm_parallax","module\\/tm_social_list","module\\/account","module\\/affiliate","module\\/banner","module\\/html","module\\/information","module\\/parallax","module\\/tm_social_list","module\\/tm_slideshow"]}'),
(10, 'Demonstration', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/olark","module\\/parallax","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/tm_blog_articles","module\\/tm_blog_category","module\\/tm_cookie_policy","module\\/tm_fbbox","module\\/tm_google_map","module\\/tm_pinterest","module\\/tm_slideshow","module\\/tm_social_list","module\\/tm_twitter","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/export_import","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4232 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');