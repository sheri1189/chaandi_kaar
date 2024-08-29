-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 08:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chaandi_kaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `added_from` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `added_from`, `created_at`, `updated_at`) VALUES
(1, 'Silver', 'Lorem ipsum Dollar', '1', '2024-08-28 14:18:26', '2024-08-28 14:18:26'),
(2, 'Gold', 'Lorem ipsum Dollar', '1', '2024-08-28 14:18:26', '2024-08-28 14:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `order_note` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_12_163507_create_products_table', 1),
(6, '2024_05_14_060328_create_sales_table', 1),
(7, '2024_05_18_081051_create_stocks_table', 1),
(8, '2024_06_03_134733_create_quantity_units_table', 1),
(9, '2024_08_19_065018_php_artsian_migrate', 1),
(10, '2024_08_19_070154_create_categories_table', 1),
(11, '2024_08_21_123022_create_orders_table', 1),
(12, '2024_08_22_102146_create_customers_table', 1),
(13, '2024_08_23_110020_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_key` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_min_limit` varchar(255) NOT NULL,
  `product_unit` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` longtext NOT NULL,
  `product_description` longtext NOT NULL,
  `added_from` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `product_name`, `product_min_limit`, `product_unit`, `product_price`, `product_image`, `product_description`, `added_from`, `created_at`, `updated_at`) VALUES
(1, '1', '9999 Silver Grain', '91', 'Kg', '1.06', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQV1ljaMD5_JFR4GEoKeF8i4prtapYa4gck_daLq-mGYBLXJpmo7f3EVKfwaeJ9gGH1s88YtgoPAawAhY-wTDbHd0NmFTJzlw&usqp=CAE\"]', 'Made from 99.99% Fine Silver Casting temperature range of 1030-1100°C Ensures a high-quality cast Manufactured using state-of-the-art technology This fine 99.99% Silver casting grain is manufactured using state-of-the-art technology ensuring a high-quality, consistent cast every time. Our fine silver grain has a casting temperature range of 1030-1100°C, 961°C melting range and a density of 10.5g/cm3. This grain is ideal for creating finely detailed patterns. This alloy will not tarnish however it is still important to keep the grain as clean as possible. (price shown per gram)', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(2, '1', '1oz 99.99% Pure Silver Round Bar Silver Nugget Bullion Silver Bar High', '58', 'Kg', '40.05', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTeSK6FPiNtF5CW6c-oW5-u4i3rtUu78YJUJ5CtYojupdDX_z7lSZEp5NUccrYsMBrxT7mcXhNKchqjc9RMcTIwx5PMDYLZdA&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQUOIdCB3TinWJC9BO4OqNROP0xgKGlOHMhGC-Q3lOp09A1BhCT1yrvWpTz9kn0bXlLsRKtXiJbV-2oR5AsZjeR1C21-1kDOw&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRxa0fJ112QmujPzkB0fqu4pC3Tt6QHFeqk6X8gbZ5V8VJbfD6Wd_IWasOUlR9ZcG5UATkVAtv_NIhuRHHpvi8P-vjNkqmi2g&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTK1Kt60l57ZMc2lpajCkJFFHEeZosVdOSJzvqv4HJLMbeRmvSdO6KQiCoXodiqtPl4b8j4NTpDC8lnLKgmgMs5efXmYJ6rMQ&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSlQeJP-Mfjwc08ZRb54bQyK3MrD7zxWaAu-skMcK_XBm2a_e4vmulJ4LlgYwEfF86vxs481Bw8-KLa7B3nXVZZj9XPOq3e&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRcRFvopVDHijXeMTvPmOBg8NVJZ5BJFTtt3eR5ffepqyqVXJs_i3D_ypZOzGvBagKWibiMu_FaX_JUerJRtfrvSv0Ff9Er&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTFs3n83VVvL6RzeUgXTRsg_zm3dbg27VVW5pHxxbfjyI_F2dUMKW19aBo-3u16Mo5_Em7e94MpE1fatmizjUrvkPxPlakO&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSQOwArTJ6D_GJvt5ecz0ZpK3LMeq350N62j56pW2j6PnjgzM0kYaRxrEOiwH5EPAw_tx8_74Fc1eRVwC8xLpuP2qtJaVgM&usqp=CAE\"]', 'Find 1oz 99.99% Pure Silver Round Bar Silver Nugget Bullion Silver Bar High Purity on eBay in the category Coins>Bullion>Silver>Bars.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(3, '1', 'Ag .999 Pure Silver Bars Fine Silver Ingots Raw Material Particles,', '15', 'Kg', '12.73 + tax', '[\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcR80-hX9-xavpzEHX0InJdpcC0tdftoxzjo0nriQmmbAz1jmMbUu0hdoL0FfgkmLyS6B00nnMI8t28OYV2fmOp2WcrxQHQl&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcST5Cq3deohCeakz-RblOA-jNgfTKO6-6HfddNPRfOCTQ6GftWUDvCyW-j93OxBUrfJmInrP1eTI8ouANHVSJrro-YsM7Ay&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQt7r0gYzJOkB7erIXtls4GtxAPQJYuxuGhDlAPiA8ZJr7WOIFJSwDGDh2wcmnYdh9i4fiU9g1QQ_X42xts2qk_eSb9Ivga&usqp=CAE\"]', 'Find Ag .999 Pure Silver Bars Fine Silver Ingots Raw Material Particles, 10g/bag on eBay in the category Crafts>Beads & Jewelry Making>Beads.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(4, '1', '1pcs real pure silver bar10g 20g 30g 50g silver ingot bar with stamp silver bullion', '40', 'Kg', '17.96', '[\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQSC7T1cfz9EMFjVeUq8AZJvLRZ5iRi7azZr8fIEc67VqbzKleyu2RONlrGh1djRbFp56ygQ7VORL48XPu8siUSnMW6bAgclg&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcR3qLNcdNIwILmbUS5W10bo5OFkcDzlyHCr6DVAnuxyDSTHBssCNlolYX8syyNv8tXdLU47XWnZ-I47dl_0iExarCw_vz61MQ&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSGu0uDrmDVC1wON2qwZ1-yCw_oYKvfUNjy41_TBZCFd_scg1Tma5AMP8NLmKaiFUfDCHjaBgziLiRSvjBCRqKB1PUaFmJN&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTIzr3A9O1m3Cg2DW06Q-0OFeP67O6-Zvxkcpx1djNpZ-4JViE667pSWaG8pcCPXkiMGW_XRz2D034DTPZAHVA3b-I2Bm4&usqp=CAE\"]', '1pcs real pure silver bar10g 20g 30g 50g silver ingot bar with stamp silver bullion', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(5, '1', '10 Gram of Super Fine Silver .99995+ HIGHEST QUALITY* Silver BULLION', '64', 'Kg', '30.36', '[\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTonZSSzVntUf0iSyTnOhj9SnTjZbqLu0T0mLep4qyq5C0zRwdfJakfnJpQnyznvuvkyv-g498v-M9BkkFSRw82YBM3p4QIXA&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcT3zk-FKoc-hPPwgFFb37CkHjSNDoogjemBm0LY4uELY0NUWd-8vrmteOSxeWJ0p4iriARYlr3p5RazU9SMzSgYZpM23-kQzA&usqp=CAE\"]', '\"BRAND NEW JUST MANUFACTURED- GUARANTEED TO BE THE HIGHEST PURITY BEYOND ANY COMPARISON- USED TO MAKE BARS, JEWELRY, COINS,\" MEDICAL GRADE SILVER THIS IS .99995 PLUS FINE SILVER \"MINT QUALITY\" THIS IS SOLD BY WEIGHT ONLY Quality: .99995+ Fine Silver Casting / Rolling Grain / Fine Silver / CASTING/ROLLING / Polished Alloys Used: N/A Melting Point: 1761oF,961oC 100% GUARANTEED HIGHEST PURE FINE SILVER ALL OTHERS ARE USUALLY .999 JUST 3 OR 4 DIGITS, MINE IS 5 DIGITS PLUS IF YOU BUY MORE THAN 10 GRAMS, THERE WILL BE NO EXTRA SHIPPING CHARGE, AND WILL BE COMBINED INTO ONE PILE IF YOU WANT THEM TO STAY SEPARATE, JUST EMAIL ME AND i WILL PUT THEM IN DESPERATE ZIP-LOCKS PER GRAM UN-circulated Pure Fine Silver Nugget Rounds 2015 Bullion Shot ALREADY REFINED AND CLEANED NEW Solid Clean .99995+ Pure Silver Is An Investment! SOLD IN 10 GRAM INCREMENTS CAN BE USED FOR CASTING AND CREATING MILL ROLLING JEWELRY BARS COLLECTING AND ALWAYS AN INVESTMENT I\'M A LICENSED JEWELER , FOR OVER 2 DECADES, THE BEST GOLD MANUFACTURED IN THE USA IMPECCABLE, HIGH QUALITY, AND STAND OUT FROM THE REST. THIS IS THE PLACE FOR ALL YOUR PRECIOUS METAL NEEDS FINISHED AND UNFINISHED JEWELRY, DIAMONDS, STONES, FINDINGS, DISPLAYS, TOOLS ETC PLEASE CALL ME FOR ANY OF THESE NEEDS, I HAVE IT 757-685-8605', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(6, '1', 'Metalor 500 Gram Cast Silver Bar', '49', 'Kg', '415.86', '[\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSP35tdwRnZKtObTk6ZQyZSkxzNqdE8lyBimOUfXH9szDUtk1ALTBaqVoXCrbBakF5GaR8Rs6cHYysdtln7JbKaJPq1Cg0R0Q&usqp=CAE\"]', 'The 500g Metalor cast silver bar is a new addition to the Metalor range and is produced from 999.0 fine silver.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(7, '1', 'WLTY Rare 1 Ounce German Silver 999 Liberty Eagle Silver Plated Square Square Commemorative Coin Coin Collection Lucky Coin', '67', 'Kg', '11.56', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRChqNjYOiuNccPgu7rJ_Q4eWldPX5Wl3tw6dnFzTbqvJ56T3Wb-yaKGTcMguhUsPdlfujUmfvqETkmqUpqCNHY8lCiofXEow&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTamxyfo2a5G9pZPffaDxkAtrkpyaaHbtjKp_XCeXcMjNnIEQ4KR2j0zXh16XfHKalH1FXBPCcHGMCiLSOCZ-EoyQIP90Ay&usqp=CAE\"]', 'Perfect gift for any occasion, such as birthday gift, father\'s day gift, mother\'s day gift, thanksgiving gift, anniversary gift, congratulation gift, christmas gift. For Those Who Like To Collect Coins, It Is Commemorative And An Amazing Gift. A great gift choice for friends, children, family, colleagues, etc. It is worthy of your permanent collection. High quality material. Description: The product is made of high-quality materials, durable and can be used for a long time, please store in a dry place. Can be used as tourist souvenirs, collectibles, decorations, or as exquisite gifts to friends. Package Including: 1 x Souvenir Coin', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(8, '1', 'Pure Silver 9999 Silver Bar Silver Scrap Silver Material 10g Each Bar', '94', 'Kg', '20.84 + tax', '[\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSVMC-v1T-LokCCmIPICYBd7TbB_K1OwzcoDP8bJW66NxMLk7YKpAHG1BZbEF_1zy448wi-3BNaiBxkBfPbKP0xaRvGbXnK_g&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSrSlQqNTvP2vujiT84paUklP9QtlT_RyPSfwDOtGAaqcjObgaOG92Xmg9hktXzvAUQSNTpbbDKKYBJwn2OxJLPAKwhcDwYTQ&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQG64UGnobF2q3f9SyrPFWaVfg8KVxf2yjXQb4MA8hu9DQ9HIesRqGTZgow9YbLnxCd3gWf6lvlEm29Gade9Z9l7GUHFaKt&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQG64UGnobF2q3f9SyrPFWaVfg8KVxf2yjXQb4MA8hu9DQ9HIesRqGTZgow9YbLnxCd3gWf6lvlEm29Gade9Z9l7GUHFaKt&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSB2fhThf0Y6VjtkF2JsOkLf_WHmG-6BJfVp0wa-p9dXqIcrlyY7OZqhJfYJ30QZqcrdfrmSqYkgX47N6WwjFiCNVBKCy6Q&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS0o0nYSHGfYuFR2H60m17Zjz8m85Ja_Tupgw_EpMnHu87vF7JwblYN-VMSpq4qyYnzfSIkNTHzMLvKBMJKIoR2c5Nbv-nZ&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSrSlQqNTvP2vujiT84paUklP9QtlT_RyPSfwDOtGAaqcjObgaOG92Xmg9hktXzvAUQSNTpbbDKKYBJwn2OxJLPAKwhcDwYTQ&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS0o0nYSHGfYuFR2H60m17Zjz8m85Ja_Tupgw_EpMnHu87vF7JwblYN-VMSpq4qyYnzfSIkNTHzMLvKBMJKIoR2c5Nbv-nZ&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSB2fhThf0Y6VjtkF2JsOkLf_WHmG-6BJfVp0wa-p9dXqIcrlyY7OZqhJfYJ30QZqcrdfrmSqYkgX47N6WwjFiCNVBKCy6Q&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTACTTp5hMn9gkZ8Zp-uNLgiOr_2JE5UFbZAgD6N6872WLZ5F0w_wc9LQZESTCJOZlTwxnLvE9omaMtwVLrnOT9RxsgBKhw&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTACTTp5hMn9gkZ8Zp-uNLgiOr_2JE5UFbZAgD6N6872WLZ5F0w_wc9LQZESTCJOZlTwxnLvE9omaMtwVLrnOT9RxsgBKhw&usqp=CAE\"]', 'Find Pure Silver 9999 Silver Bar Silver Scrap Silver Material 10g Each Bar With Stamp on eBay in the category Coins & Paper Money>Bullion>Silver>Bars & Rounds.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(9, '1', 'Fine Silver Sheet 0.50mm Half Hard, 100% Recycled Silver', '78', 'Kg', '1.39', '[\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQobmC7SbWUlGgz-TDir-nQukAHQgl1wy8rw09edM4TzCKwMPAuk7XrqJ4nehUb4tpKqTornnPfTJ3CWWR8RcHvGZUCl0LIVQ&usqp=CAE\"]', 'Fine Silver Sheet metal is a popular alloy used by beginner and professional jewellery makers. Ideal for crafting rings, pendants and bracelets, this soft metal is a diverse jewellery making product. Our half hard Fine Silver Sheet is cut to your requirements, helping you to work with the right amount of Sterling Sheet metal and minimising waste in your workshop. This product is made using 100% Recycled Silver. Please note that the maximum Sterling Silver Sheet metal available is 500mm x 500mm. This sheet has a thickness of 0.50mm. Supplied half hard. The sheet is coated with an easily removable protective plastic film, which will keep it safe from tarnish. Fine Silver, 100% Recycled Sheet is supplied half hard Custom cut to your exact specifications Bright white colour - defect free flat surface Coated with a low tack protective film (price shown per gram)', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(10, '1', '10g 20g 30g 50g pure silver bar ingot bar with stamp silver bullion for accessories', '48', 'Kg', '18.89', '[\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQCs3XNKIqqZPi6k2StfNEG027ZZC8tLGfic90ymbIy0yhI65FeaS5F1wLyk-QE_9ysLOKTLhMDywOsxgu7GUN9HVxGEEQ78g&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRt4TMEFp6QKbrgbToDika3DdNWZbS6h1MWbPvL9x5-JXOyPu3qAZzqgtEyFe9wm_R8RFONAGdl-N7JKdXXJMfsNRW-r8winA&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ8i16dgQF6pqzg1Jvt0HiRH2QN4JF_tONzZT--7f6Sbls7KAIHZ4m5tvBWKR6XqE7o2i4nkZjNhaPSAbR2KpT6V4NjCmdp&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT6f8zp8nkVdQfxuRHo1NimeMMjJPPcIFRgbdIvsMpyFLI7j19UY2Ltfd26Ha9UYXArl8gD0RU-BNKGYFmoN9iTgg61Lw-U&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSm0BtQ_PAlh2P_s4VSxMMILgS8bmDDWh2BRq80C_1QAQ5mMZABY9pMSql4Ro7NMBel-5__wh0sgoc9w5rF9RlaYdIH1OX0Uw&usqp=CAE\"]', '10g 20g 30g 50g pure silver bar ingot bar with stamp silver bullion for accessories', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(11, '2', '24k Gold Casting Grain | 99.99% Pure Gold | Clean Fine Gold Shot | Genuine 9999 Raw Solid Gold Granule - Jewellery, Bullion, Coin Making', '57', 'Kg', '55.91', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRG8PherCgTktFTdBCc8_wnmHrNFb58Iueadnrg0m-m1Hcedr90V776oMeUCKYMCuTLyTxXwtDOpU7xjzhP6rT6QuVbHipJ4g&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTAoK86wAL9v4Om61dI_vKBp1sYS09IIZE_iWcvljibDZeZvtO0XkJTzZMTt9Mv8ZbbtQKqOUiMYwUIZ1kWh2oh-dm2tU06&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRnW2oqapttzw3S6kRMV1bWE2SGPxzYYU9YZdI5uz4AJxxgpi6WjNSmQsnS2SypcQ162HePYhqSukHM8YwXE37Egy_P06Gr&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRL9Dlumyvd0vxNocb_1Iqb3Rb26Ks3ovFm7Ze2RX27MdVWkgKR0k0t_5Ig0I70cLWNi4FXPxJk09aijdnb2PsDyRHAI_Vz&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS0fKA3OC4OvSs6jM6JSigcK7-UwrcfHt9sTPujIvzZlJI3gCtKypWi_dIG022kTbPQ4FG6xnmozDLWG42-rjIe0oRiLXm3Hg&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTdWLh72ESdJggj1FBxFRPZN8y9p-r1iKuuVA7CurjXm18zYEKqxdvGgl6yuB9aw8uFGJ94-y8KOyQq_XwNIGk9qna4x8zr&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT77HDBV6YaL3zAmln2FZQ40-5IS_GOjh8qJ43yIX1n5nTIP0uPNnJYpy3oZxXKfGsVPMG33jRluCYqWXcDAC5W78Fuj6ZmUA&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQNSrhkmmBG3vqPQAXxYocqOMkbAW5J7_4qGCOzE4FPJFUC-feYXeM06fx9bVKcSLHFe5Ch1N7ixfsFS2zTFVxnmP2LWwg6&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT_578i79KCPhOAWeGnEL7B6IHQ6NanhRweSmBSDRZ1qMQOhS56_sEDHHgDRj_7QVt6h4Fxvo7LvArrp2_XftbZkQbpGQyl&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQEd3Fm4BEu1pb1F-YNz2mgmXY6vjBwPlLv9vNFBM7GI8zcJR0D1YQKLTOx3zCYjM0niVpLYwHchSpB0P6oCjqC1tCOtrmS&usqp=CAE\"]', 'Wholesale Jewellery making supplies - Designed for professional and beginner jewellers, jewellery repair & restoration. Our 24 karat Gold Casting Grain also known as 9999 Gold is pure gold of the highest purity at 99.99%. These gold casting grains are made from impurity-free gold bullion making them perfect for making gold jewellery and industrial manufacturing products. Great for pouring, casting, and lost wax investment casting. Granules are also great for casting coins or bullion. Just melt them down and pour them into moulds! For bulk orders please visit our website. Ore Metals make sure that each batch of Granules are inspected before it leaves our facility so that we can be sure it meets our stringent quality standards. You\'ll get your goods packaged safe and securely to ensure the highest quality is passed onto your craft. SPECIFICATIONS [Material: 24k Gold] [Density: 19.32g/cc] [Melting Range 1063c] [Hardness HV (Vickers): 25] [Annealing Temp: 450] CASTING GRAIN Casting grain also known as \"casting shot\" and \"granules\", are a purified precious metal that comes in the shape of small granules. You can use it by itself or combine it with other metals to create alloys to whatever purity / colour you desire. Some of the most well known jewellery making alloys include; Yellow Gold, Rose Gold, White Gold, Sterling Silver, 950 Platinum, Argentium, Britannia Silver, Electrum, Shakudo and Shibuichi. OBTAINED FROM AUSTRALIAN MINES We specialize in wholesale jewellery making supplies, based in Sydney, Australia. This product is 100% sourced from Australian mines. This product is solid 24 karat gold. It takes on a bright colour. Its kind is ideal for industrial and jewellery manufacturing use. Your order will be dispatched in 1-3 business days from Australia. GUARANTEED QUALITY This metal has been tested by an internationally accredited laboratory specializing in precious metals to guarantee authenticity and quality. Assay dates are recorded on each individual item dispatched from Ore Metals. HOW DOES IT WORK Select the quantity to Add a listing to the basket, choose the payment method, proceed to checkout, and continue as a guest if you don\'t have an Etsy account. We accept payment through ETSY payments where all major credit or debit cards are accepted. Custom invoices generated can be paid via direct deposit, PayPal, or our Direct invoice portal. SHIPPING TIME Orders are usually ready to dispatch between 1-3 business days. If there is low / no on-shelf stock some will be manufactured which can take between 1 - 5 Business Days. Once your order ships you will be notified with a tracking number. Please note: the \"ship by\" date on your invoice is NOT equivalent to the \"delivery\" date. - SHIP BY DATE: When your package leaves our studio. - DELIVERY DATE: When your package arrives you. REFUND POLICY We gladly accept cancellations. However, we don\'t accept exchanges and returns. Feel free to contact us if you have any questions, and we will reply ASAP. COLOR DISCLAIMER Your screen brightness, contrast, and saturation settings will affect the image viewed on your screen. CHECK OUT OUR RELATED PRODUCTS - 24ct Fine Gold Cloisonne Strip: https://www.etsy.com/au/listing/796237041/ - 24ct Fine Gold Round Wire: https://www.etsy.com/au/listing/676641156/ - 22ct Yellow Gold Solder Sheet: https://www.etsy.com/au/listing/1341902499/ ABOUT US We\'re here to help build your jewellery empire and provide the highest quality in precious metals jewellery making supplies. We cater to every level from DIY enthusiasts to established jewellers and wholesale jewellery manufacturers. For any assistance or guidance with our products or services just send us a message and one of our team members will get back to you shortly. https://www.etsy.com/shop/OreMetals FOLLOW US ON SOCIAL MEDIA FOR EXCLUSIVE DEALS Instagram - @oremetals website - https://www.ore-metals.com/', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(12, '2', 'Gold Chain - Womens Semi Solid Miami Cuban Link Chain 10K/14K Gold', '91', 'Kg', '1,455.00', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTuvbNPlQqQ3QkfEeNqSSjxx0h41LLwC9-GwztvJi1Du670A36ONyQZ4gvL0QFt7XvtVEbOgNbSlFyx6GvtK0TMiODc3IkPyg&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS8xNmKg5SR8Y-F-EN7LsPFEttX_R_s4yTSMsGnbOUrUpU-lVint-w3YicwpysUPRqylf_rsQwLn6CglTMlDiK7QEpFmh_D&usqp=CAE\"]', 'Ladies Yellow Semi Solid Miami Cuban Chain | 10K or 14K Yellow Gold. These chains are fully customizable, so you can pick your gold purity, length and width above.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(13, '2', '24K 999 Pure Solid Gold Grain, Gold Bead, Gift for Mother, The Most Beautiful and Affordable Way to Invest (1g)', '95', 'Kg', '7.18', '[\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSS5xalrHdaTpeaRBxFQ4HafqBcyPSZuRbb3JEufY3s5WrCnp_aa1uU7DUr8kqmhyhqNzqRZ4jBMVRrTqV-sdhp3XwYcAoQ6Q&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSY_Jyq4LP9G2LGqde8zOvB7f_7Ft1p2mbsGUxKT_ebh7P_benHCzdgOJJ9Tu6lyh_irQSQ8ROSH8E44_FNJnLuBFlD-7kF&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRsjkd1FYNvujbZa98nLHtXzSUSy0BV3JHmV7-eBDIZR9kUDCi8EPBqNvVZsFf-Lp4lJHgFJnz7o5IQJZMf7wNY0XkTaQiYXw&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQGZmSvYU-FmdMu5c1dLpLc-3xHBmol0XJaADV4QCPCLGVhNgCGXF3LH4LDuD_cWvLpwtJR0wG96OdRR3PAcuD5u9obwk7Ceg&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSlUeq5lpZiXVEWY0Xxilo63HjOXjplUHGMO1U_aKA7EWOkrIeEKbaOym-8rk6Xj1gv_WDUAdwEqT-Hq2dg9U8wXrYnXseT&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQyUDZRtq2VLoB_K6IkrvapjQXGVgzWzLn6tgxPXP7J7LDG5VM7Bty2tktn2LPXh8C7ub-m91qmTQd47XoZj3SgF6Sk5wjsRg&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ4juelwqoW-MEGMn0V14jfxQvncjWJuunUoDQr_NiC3Om6yR8g-gYfQuUL1lTdt3W4EX-lQ_UagGnOrOY0W951GDwF0xj4&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT_d3GW06MBanzyWHa3MKb_gADwex9FRK8koStrKT9Nr7m8OTkfu5vpZwtDS9chjblgqUi9Lf55vFF7o9PoDD1vpaY8CGu-&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQ6J85_GNwZIzm6Y7OFmSAIDnZ9cGI_zcQEcJ0JyAMVhIVhD_mnrhi7MbqQfJmcE93ksE3zQ-17z6WVfwgtW9MssAZpN20hkg&usqp=CAE\"]', 'LISTED PRICE IS FOR ONE FULL GRAM; .99.99% purity, pure, 24K grains. Two shapes available, both 1gram, Buy a little at a time and build up a stockpile of concentrated wealth! gold investing is normally very expensive, and only those with high incomes can afford to drop a couple thousand dollars at a time on investment-grade gold (like coins, bars, etc.) We wanted to introduce a way that anyone can invest in gold, even if you only happen to have a little spare cash, and we\'re finally bringing this unique product to market. There are many benefits of choosing gold as an investment as it is well known to protect your investment in the long run. People across the world believe in this theory and everyone depends on gold when other assets do not offer stability. For this reason, you can see a steep price hike in gold whenever there is turbulence in the global equity markets or when there are political tensions between powerful countries. You need not to have too much financial knowledge to invest in gold as people have been doing this for centuries. Even though you can buy them now in the electronic format, it is very safe to buy them in the physical form as you will be able to see your investment and store them as you want for future. However, in extreme conditions, electronic contracts of gold can fluctuate a lot in price and you may have problems when markets crash due to global tensions. There is no need to worry about choosing gold as an asset for your future as it has always commanded good value in the market since many centuries and you can rest assured that you will get a good valuation for gold even in future. While other investments like real estate and currency are risky in some situations due to various problems, gold is relatively stable and you will always be able to protect your money in the long run by investing in gold. In this manner, your other investments will be hedged properly and you will be able to diversify the risk in a huge manner. It can Protect Against Inflation Risks When it comes to investment, there is one thing that you need to understand as it can kill your investment in the long run. It is inflation and this is the rate at which money loses its value over the years. You can instead try to invest in gold or other safe assets that will protect you from the risks of inflation. It has been noticed that gold has outperformed the inflation rate over the years and you will be able to reduce your risk by a huge margin by having some savings in gold. A Good Way to Save Money for Future Saving money for your future is essential when you have a regular income. However, you may not get to invest small amounts of money when you choose real estate as your investment. In this regard, the simple thing you can do is to invest in physical gold. This will safeguard your money for the future and you will also be able to get good returns in the long run.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(14, '2', 'Real Gold 18 Kt, 22 Kt Hallmark Real Gold Necklace Curb Luxury Link', '72', 'Kg', '6,699.66', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRafL4yiNQlPcsaCQkV0FqqwzmcNLfmu6x-PC6Ez5q56csA6wDBTAubEhciLUnWT8_zfSDzi9cyeQpJK3VwJIKF25v0LN7d&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT41fBgH4aOEsAQPE5WS60Zc7-mYyeJhjUPvWrMOWjN48jOsu85yY8CAtWlkU2XY-So24oKc38f8NMiTjaGbu24xtz6a0Je&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTBhOojdpBLUfl8dhxnUqESh8NNNNwa2T46TO41Wu2KM4gFwEwqyl7SywTv2tWlZ6pJ1EOXri895_w9cwvsF2VIeT3o_5fbRw&usqp=CAE\"]', 'Find Real Gold 18 Kt, 22 Kt Hallmark Real Gold Necklace Curb Luxury Link Chain on eBay in the category Jewellery & Watches>Fine Jewellery>Necklaces & Pendants.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(15, '2', 'Gold Chain - Semi Solid Diamond Cut Mens Cuban Link Chain 10K/14K Gold', '50', 'Kg', '639.00', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQUHybZ_YEOEJkyvh61B31iLfuFVg0NJJvO9fXkke0p9iJqOzEhdZGp0kPj1U7lGicmSpQHOZzibfVdSWpT5InCrs_3zyAA&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRlEspwHmOrfepANyFVBjSmXO_Twt4N7yHchSXd7KqwS8pbdObUa1Kig9S4CsfCznGi9wTuXnGvWzgOMo08EkO25afVQRAuug&usqp=CAE\"]', 'Semi Solid Yellow Diamond Cut Cuban Link Chain | 10K or 14K Yellow Gold. These chains are fully customizable, so you can pick your gold purity, length and width above.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(16, '2', '9ct Gold Solid 20inch Mens Curb Chain - Warren James', '31', 'Kg', '1,790.00', '[\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQbmPFD08BAafc9Rl6_DF2dpvK9kslxqxhNlu7RZh5Eg5aVJ5XwNlbZPXg7ON6WOBXwPCxjpfuTwXIWtOnXwaNX3Zzcecyd1Q&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSAFQV0U91lLM4KYLTT36Gco6DbbPYBYmrqtjEFh4j1jO4DJJK9SnhfAZIevJDKUe4UZCz_SQaHqaIqrXGoWwUvS7xraAJ6&usqp=CAE\"]', 'Diamond cut and highly polished to create a mirror finish. Outstanding value.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(17, '2', 'CANDEREby Kalyan Jewellers bis Hallmark 18k/22k Gold Chain For Men, Yellow Gold', '87', 'Kg', '604.00', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQzyTTq-O4y5ojp__sPJG1Kv4j1RWLLlbyx_J3S4qK2mS5BOUa-sjhQAPNfS5t1tISr64vgFimQOYiOUMIzHG90rr6dGhyN5w&usqp=CAE\"]', 'Find electronics, fashion, accessories, grocery and more.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(18, '2', 'Tuscany Gold 9ct Gold Curb Chain', '2', 'Kg', '187.00', '[\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTVrg8KjhepME52e3vZEsTcw2RNigOtODLfH0Sy5wgmJYQEFZA7psL1nyYFFAPSPW9pnW6de_WRsiG9hX--V5kEbxhTFbk5jQ&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRbFmossvGRcoEwbb6-oGC2YNt-4GjTszNV88gtZl96ozG2ujFbeeQIXopCRdA4k_CRZlFUnDz0Vv24LJqMKZupOhRcP3a-ng&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS_0QIroeTx2oO8LAiP72xjL0s3OwV83TFbEm8bCSPbkna3A4YYIfOBsl6X_1B6hpMfsMke94i_KwMWNBlOBNtSpAU_o9AdlQ&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSQ8YBSN0h3k8z0WQqMbAvOk9uToNLR2W5ot76zCtOEDuhkr-xtBMKi4896PS6yYqEARpObbxGYWOM-aZ06INsWyq9fUgZZ&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ-6uBntecj5etHQXLFdcW4D2FGcmu46u0yEds8exjuu100X0haET84-GROrdUESW5bCT35GF95vAGHCXWCAey-PsNM_gYs&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRgvP6ZECjOPr1Hdq_gabEFPCruRhulCD95JCYKGbN-fAL91ZldukSBP4yFwrShmLLQr375H69FwgfMLtXMt6lFBqoTEh55vw&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQAv0lUgn0gqCswVP6PcYoRitlimHsJUX3wvOpFFxySn9Ygf7JaWJ89PzGJRIgQcOA-0OCrCfymFZVcwcGw6ZESSdkkHnnz&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTLZF4BbJLuRtrEymmrTDStzxW7NSc9awbHTtus55xvw5NPl0n4emXa9jREQy2UuZ0hEBZ_bwg7GZ0JeHob6AqwtR9hkEQa&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcShyjylJ44vwGiK9cDuqFeAmnls1Yeyx2slvd-HlJpTRRpi-C63LFyAKP3qbtWOY0RlsXLvcv-mKxHqloHXVbX-Du4tsJtm&usqp=CAE\"]', 'Taking its name from the Italian for \'my dearest one\' Carissima is an expression of love and affection. The Carissima Gold Collection of fine gold jewellery embraces over 3000superbly crafted fine jewellery pieces from timeless classics to contemporary designs. A wonderful gift for yourself or that special person in your life, when you give a piece of Carissima Gold jewellery, you can be sure that it will express your feelings towards \'your dearest one\'. With the Italian traditions of classic design and precise craftsmanship at the core of the brand, Carissima Gold is beauty and elegance captured in real gold. Purity is assured by UK hallmarking authorities, a universally accepted standard offering a valuable protection of quality. All Carissima Gold pieces come beautifully packaged in a luxury brown gift box. Carissima Gold jewellery represents superb quality and elegance that will complete your look and be a possession to treasure forever. Simple enough for every day wear and stylish enough for a glamorous night out.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(19, '2', '2lb+/-, Al. Gold,for Casting Or Bullion, For Making Jewelry, Or', '22', 'Kg', '104.70 + tax', '[\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTQ7QqBIzk0Uca5wjSv6rRA7SEMY0eAKfEN7QgG-9bDQv_ioI3NLo8wVr4aOIeSFFm0uo_41JNZAwriPBUFjtEBcHgWH0b5&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSgQXaG78h6gKa0hEt5aPI2uIOFV1tyyKHz7U73uv9AlLKZgf1c3-yxFtpy8abC1np7fAKlFBwQD6_i6iwdEGVyMS67Xf7wmQ&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTSOQp6Z7RiKsCg_enp9HhYbDh0hjFdIhmmNDyqrNDHfAZ_AauRs2LCtjQ57Bl_XBijNXA6ym_62x7-Zoc0be-futVdMRCz&usqp=CAE\",\"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRjDhD2rQI81LdALzptA9w_rftrj4kfxI1tB0J4nhjhINl0127ITdPzGgZpdxjg8b8QmXQDWbyhWs_JFGW8fBc3vQhLEPGq&usqp=CAE\",\"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSeH-tou91xqwlChNi_yMCbHtRXJxzb3cTKAU08oHDtMB9w1NIRw5G7zttNS56ta5BJl0CRRDKepZ8uZJuaj2R7rLAp5LFkvA&usqp=CAE\"]', 'Find 2lb+/-, Al. Gold,for Casting Or Bullion, For Making Jewelry, Or 10k-18k Gold on eBay in the category Business & Industrial>CNC, Metalworking & Manufacturing>Raw Materials>Metals & Alloys>Metal Sheets & Flat Stock.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(20, '2', '9ct Yellow Gold 18 Inch Curb Chain', '58', 'Kg', '219.00', '[\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSVsJrzBE-Dba8453WO4jG8twtDNqlGINo5PopiTmhCXFcYcXpXm5MmwD-gR4v7XhBDJQPEnLiV_U8WRc8-5iWrYidpFwvvfg&usqp=CAE\",\"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQjYrYXOB9ZRU5cTD67ePVohzAhzEIBr8bGmNQH70PXHmPBBuITxqzP_DlLcJqm69jf25htYvxwWJu0fJfEGRBPsaO-1XzD&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTUEcG2hwUmB3IrSEsRuJoEOlnTCcksM58moMy-X1gGqrDrDkS4sPUARjhgi3FFplXJRVNjXYUtzPs5G11yq8Z35JOr2FrzBQ&usqp=CAE\",\"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTBSpOtsWmUgMg6NhEcW1u3UmqAfYIxvdg0Z4EJInTsNpOdEqto9pbDySXso4loVyZwNHTuFkV-rT76Q5Q0Xhz0HJ6ttjok&usqp=CAE\"]', 'Simple for everyday wear. This piece is made in Italy, ensuring quality in its craftsmanship and design.', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `quantity_units`
--

CREATE TABLE `quantity_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity_unit` varchar(255) NOT NULL,
  `added_from` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `order_key` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `order_key`, `product_quantity`, `status`, `date`, `price`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '7', NULL, '1', '0', '2024-08-28', '11.56', '1', '2024-08-28 15:27:17', '2024-08-28 15:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_stock` varchar(255) NOT NULL,
  `added_from` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `product_stock`, `added_from`, `created_at`, `updated_at`) VALUES
(1, '1', '31', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(2, '2', '70', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(3, '3', '5', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(4, '4', '83', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(5, '5', '64', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(6, '6', '11', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(7, '7', '65', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(8, '8', '18', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(9, '9', '76', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(10, '10', '67', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(11, '11', '44', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(12, '12', '61', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(13, '13', '90', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(14, '14', '32', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(15, '15', '38', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(16, '16', '83', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(17, '17', '37', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(18, '18', '33', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(19, '19', '46', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22'),
(20, '20', '16', '1', '2024-08-28 15:03:22', '2024-08-28 15:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `temp_password` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `is_admin` varchar(255) DEFAULT NULL,
  `email_verified_at` varchar(255) DEFAULT NULL,
  `is_email_verified` varchar(255) DEFAULT NULL COMMENT '0= Unverified, 1= Verified',
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `temp_password`, `contact_no`, `address`, `is_active`, `is_admin`, `email_verified_at`, `is_email_verified`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$d3RQOrtEuFEvNs62yuH5kOru5q7j6cghyF2i.02YYvwcU9A3qnSXe', '123123123', '0312-0000000', 'Faisalabad,Pakistan', '1', '1', '2024-08-28 19:18:26', '1', 'Admin', '2024-08-28 14:18:26', '2024-08-28 14:18:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity_units`
--
ALTER TABLE `quantity_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `quantity_units`
--
ALTER TABLE `quantity_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
