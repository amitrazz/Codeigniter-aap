-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 07:15 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciapanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `body`, `created_at`) VALUES
(4, 7, 'php', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi risus erat, malesuada eu nibh sit amet, tempor efficitur massa. Praesent turpis tortor, tristique ut cursus eu, dictum eget nisi. Mauris metus dui, accumsan in lectus quis, posuere egestas odio. Etiam placerat eleifend magna, nec aliquet erat. Mauris vitae dui eros. Nullam in velit tortor. Donec blandit nisi nec vehicula blandit. Nulla quis pretium lorem, vel dignissim tellus. Integer ut mi tortor.', '2018-01-11 07:41:58'),
(5, 7, 'blog', 'Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.', '2018-01-11 08:06:58'),
(6, 7, 'technology', 'Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.', '2018-01-11 08:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_on`, `categories_id`) VALUES
(4, 7, 'Lorem Ipsum', 'Lorem-Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi risus erat, malesuada eu nibh sit amet, tempor efficitur massa. Praesent turpis tortor, tristique ut cursus eu, dictum eget nisi. Mauris metus dui, accumsan in lectus quis, posuere egestas odio. Etiam placerat eleifend magna, nec aliquet erat. Mauris vitae dui eros. Nullam in velit tortor. Donec blandit nisi nec vehicula blandit. Nulla quis pretium lorem, vel dignissim tellus. Integer ut mi tortor.\r\n\r\nUt ipsum magna, varius vitae lacinia ut, hendrerit at leo. Vestibulum dapibus lobortis accumsan. Vivamus finibus faucibus pretium. Aliquam cursus volutpat nulla ut maximus. In hac habitasse platea dictumst. Ut ut nisi nulla. Suspendisse nec tortor nec felis tristique dapibus. Sed eu ex suscipit, lobortis ipsum euismod, ullamcorper metus. Nulla eu elementum neque. Nunc hendrerit ante vitae tellus porttitor suscipit. Donec condimentum, ipsum ac molestie ullamcorper, est mi efficitur turpis, vitae sagittis massa tellus eget velit. Phasellus maximus varius arcu, vitae imperdiet risus viverra et.\r\n\r\nDonec imperdiet, quam non gravida efficitur, lorem velit imperdiet metus, nec luctus augue augue a tellus. Suspendisse ultrices ligula in mauris eleifend, nec malesuada justo dictum. Quisque commodo tempor egestas. Nunc sagittis lectus imperdiet massa mollis consectetur. Pellentesque nec odio porta, dapibus libero a, auctor velit. Mauris volutpat nisl sit amet nisi auctor aliquam ut egestas sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper pretium leo in mollis. Nulla elementum mattis mi quis efficitur. Praesent sagittis dui et massa ullamcorper blandit. Nulla gravida suscipit augue, sed sollicitudin velit aliquet at. Nunc aliquet congue tortor, id vulputate neque porttitor sit amet. Vivamus eleifend commodo turpis, eu hendrerit nunc aliquam quis. Curabitur eu erat aliquet, consectetur nisi eget, laoreet lectus. Aenean cursus eros eget odio commodo, in venenatis est ornare. Aliquam vel tincidunt sem, ac condimentum ligula.\r\n\r\nPhasellus eu purus eget nisl interdum laoreet quis nec est. Aliquam malesuada eros sit amet augue ultricies, nec egestas nisi convallis. Quisque sollicitudin metus ac arcu placerat luctus. Donec sit amet tristique urna. Sed nec tellus ullamcorper, pellentesque tellus vitae, sagittis dui. Phasellus commodo id tortor sed porttitor. Fusce posuere ipsum ac justo malesuada, eu malesuada lorem egestas. Morbi vestibulum fermentum laoreet. Vivamus iaculis at quam quis viverra. Integer ullamcorper dignissim ipsum vel porttitor. Aliquam ultrices sit amet leo ut sodales. Integer vitae maximus ipsum.\r\n\r\nCurabitur eu justo tellus. Cras ornare nisl dolor, sed aliquam nisl porta ut. Fusce hendrerit pellentesque egestas. Aliquam in arcu quam. Suspendisse ultrices, nunc nec facilisis pharetra, dui diam sollicitudin quam, eu venenatis nibh neque vel sapien. Ut euismod mi vel dolor tincidunt elementum. Suspendisse ac iaculis lacus. Etiam hendrerit sapien diam. Suspendisse potenti. Duis rhoncus augue sit amet felis venenatis pretium.', 'noimage.jpg', '2018-01-11 07:31:29', 1),
(5, 7, 'Importance of bloging', 'Importance-of-bloging', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi risus erat, malesuada eu nibh sit amet, tempor efficitur massa. Praesent turpis tortor, tristique ut cursus eu, dictum eget nisi. Mauris metus dui, accumsan in lectus quis, posuere egestas odio. Etiam placerat eleifend magna, nec aliquet erat. Mauris vitae dui eros. Nullam in velit tortor. Donec blandit nisi nec vehicula blandit. Nulla quis pretium lorem, vel dignissim tellus. Integer ut mi tortor.\r\n\r\nUt ipsum magna, varius vitae lacinia ut, hendrerit at leo. Vestibulum dapibus lobortis accumsan. Vivamus finibus faucibus pretium. Aliquam cursus volutpat nulla ut maximus. In hac habitasse platea dictumst. Ut ut nisi nulla. Suspendisse nec tortor nec felis tristique dapibus. Sed eu ex suscipit, lobortis ipsum euismod, ullamcorper metus. Nulla eu elementum neque. Nunc hendrerit ante vitae tellus porttitor suscipit. Donec condimentum, ipsum ac molestie ullamcorper, est mi efficitur turpis, vitae sagittis massa tellus eget velit. Phasellus maximus varius arcu, vitae imperdiet risus viverra et.\r\n\r\nDonec imperdiet, quam non gravida efficitur, lorem velit imperdiet metus, nec luctus augue augue a tellus. Suspendisse ultrices ligula in mauris eleifend, nec malesuada justo dictum. Quisque commodo tempor egestas. Nunc sagittis lectus imperdiet massa mollis consectetur. Pellentesque nec odio porta, dapibus libero a, auctor velit. Mauris volutpat nisl sit amet nisi auctor aliquam ut egestas sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper pretium leo in mollis. Nulla elementum mattis mi quis efficitur. Praesent sagittis dui et massa ullamcorper blandit. Nulla gravida suscipit augue, sed sollicitudin velit aliquet at. Nunc aliquet congue tortor, id vulputate neque porttitor sit amet. Vivamus eleifend commodo turpis, eu hendrerit nunc aliquam quis. Curabitur eu erat aliquet, consectetur nisi eget, laoreet lectus. Aenean cursus eros eget odio commodo, in venenatis est ornare. Aliquam vel tincidunt sem, ac condimentum ligula.\r\n\r\nPhasellus eu purus eget nisl interdum laoreet quis nec est. Aliquam malesuada eros sit amet augue ultricies, nec egestas nisi convallis. Quisque sollicitudin metus ac arcu placerat luctus. Donec sit amet tristique urna. Sed nec tellus ullamcorper, pellentesque tellus vitae, sagittis dui. Phasellus commodo id tortor sed porttitor. Fusce posuere ipsum ac justo malesuada, eu malesuada lorem egestas. Morbi vestibulum fermentum laoreet. Vivamus iaculis at quam quis viverra. Integer ullamcorper dignissim ipsum vel porttitor. Aliquam ultrices sit amet leo ut sodales. Integer vitae maximus ipsum.\r\n\r\nCurabitur eu justo tellus. Cras ornare nisl dolor, sed aliquam nisl porta ut. Fusce hendrerit pellentesque egestas. Aliquam in arcu quam. Suspendisse ultrices, nunc nec facilisis pharetra, dui diam sollicitudin quam, eu venenatis nibh neque vel sapien. Ut euismod mi vel dolor tincidunt elementum. Suspendisse ac iaculis lacus. Etiam hendrerit sapien diam. Suspendisse potenti. Duis rhoncus augue sit amet felis venenatis pretium.', 'business-blog.jpg', '2018-01-11 07:34:14', 1),
(6, 7, 'Know More about bloging', 'Know-More-about-bloging', '<p>Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.</p>\r\n\r\n<p>Aenean condimentum nulla vitae ex tempor, a tincidunt eros vulputate. Aenean mauris dui, porta et tristique sit amet, ultricies at justo. Phasellus quis nisi elit. Praesent congue consequat varius. Nullam faucibus leo sed nunc scelerisque, porta eleifend quam mattis. Quisque malesuada dui in egestas faucibus. Sed vel blandit diam. Mauris non ante ac leo efficitur molestie. Mauris pellentesque tortor vitae porttitor blandit. Aliquam erat volutpat. Mauris tincidunt molestie sem, id porttitor libero sagittis ut. Praesent purus massa, rutrum auctor porta eget, consectetur vel justo. Fusce dignissim arcu nec nisl facilisis, ut tempor risus tincidunt. Morbi ex urna, lobortis in neque id, ultrices sollicitudin est.</p>\r\n\r\n<p>Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.</p>\r\n\r\n<p>Sed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.</p>', '6a01157041f4e3970b01b7c82eb758970b-320wi.png', '2018-01-11 08:10:26', 5),
(8, 7, 'Digital marketing', 'Digital-marketing', '<p>Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.</p>\r\n\r\n<p>Aenean condimentum nulla vitae ex tempor, a tincidunt eros vulputate. Aenean mauris dui, porta et tristique sit amet, ultricies at justo. Phasellus quis nisi elit. Praesent congue consequat varius. Nullam faucibus leo sed nunc scelerisque, porta eleifend quam mattis. Quisque malesuada dui in egestas faucibus. Sed vel blandit diam. Mauris non ante ac leo efficitur molestie. Mauris pellentesque tortor vitae porttitor blandit. Aliquam erat volutpat. Mauris tincidunt molestie sem, id porttitor libero sagittis ut. Praesent purus massa, rutrum auctor porta eget, consectetur vel justo. Fusce dignissim arcu nec nisl facilisis, ut tempor risus tincidunt. Morbi ex urna, lobortis in neque id, ultrices sollicitudin est.</p>\r\n\r\n<p>Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.</p>\r\n\r\n<p>Sed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.</p>', 'Blog-intro.jpg', '2018-01-11 08:12:08', 6),
(9, 7, 'codeigniter', 'codeigniter', '<p>Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.</p>\r\n\r\n<p>Aenean condimentum nulla vitae ex tempor, a tincidunt eros vulputate. Aenean mauris dui, porta et tristique sit amet, ultricies at justo. Phasellus quis nisi elit. Praesent congue consequat varius. Nullam faucibus leo sed nunc scelerisque, porta eleifend quam mattis. Quisque malesuada dui in egestas faucibus. Sed vel blandit diam. Mauris non ante ac leo efficitur molestie. Mauris pellentesque tortor vitae porttitor blandit. Aliquam erat volutpat. Mauris tincidunt molestie sem, id porttitor libero sagittis ut. Praesent purus massa, rutrum auctor porta eget, consectetur vel justo. Fusce dignissim arcu nec nisl facilisis, ut tempor risus tincidunt. Morbi ex urna, lobortis in neque id, ultrices sollicitudin est.</p>\r\n\r\n<p>Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.</p>\r\n\r\n<p>Sed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.</p>', 'vDoIT_codeigniter.jpg', '2018-01-11 08:13:53', 4),
(11, 8, 'First post test', 'First-post-test', '<p>Praesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.</p>\r\n\r\n<p>Aenean condimentum nulla vitae ex tempor, a tincidunt eros vulputate. Aenean mauris dui, porta et tristique sit amet, ultricies at justo. Phasellus quis nisi elit. Praesent congue consequat varius. Nullam faucibus leo sed nunc scelerisque, porta eleifend quam mattis. Quisque malesuada dui in egestas faucibus. Sed vel blandit diam. Mauris non ante ac leo efficitur molestie. Mauris pellentesque tortor vitae porttitor blandit. Aliquam erat volutpat. Mauris tincidunt molestie sem, id porttitor libero sagittis ut. Praesent purus massa, rutrum auctor porta eget, consectetur vel justo. Fusce dignissim arcu nec nisl facilisis, ut tempor risus tincidunt. Morbi ex urna, lobortis in neque id, ultrices sollicitudin est.</p>\r\n\r\n<p>Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.</p>\r\n\r\n<p>Sed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.</p>', 'images.jpg', '2018-01-11 08:28:21', 5),
(12, 7, 'aaaaaaaaaaa', 'aaaaaaaaaaa', '<p>aaaaaaaaaaaaaaaaaaaaa</p>', 'noimage.jpg', '2018-01-12 05:28:59', 5);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `body`, `user_id`, `created`) VALUES
(2, 'Codeigniter Course ', 'Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.\r\n\r\nSed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.  ', 7, '2018-01-11 09:20:50'),
(3, 'Ads package development', 'Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.\r\n\r\nSed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.', 8, '2018-01-11 09:54:59'),
(5, 'Recipe Module', 'Nulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.\r\n\r\nSed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum. ', 7, '2018-01-11 11:49:53'),
(6, 'Wordpress custom', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce mollis lectus nunc, et molestie ipsum luctus nec. Pellentesque a finibus turpis, et eleifend nunc. Ut augue leo, sagittis eget hendrerit vel, fringilla sed urna. Quisque efficitur ligula eget lectus sagittis, vel sagittis elit tincidunt. Suspendisse pellentesque sit amet arcu ac dapibus. Morbi non mi rhoncus, rhoncus justo sit amet, placerat sem. Praesent dignissim porttitor dolor, at euismod nisi faucibus placerat. Praesent id scelerisque enim, sit amet molestie tellus.\r\n\r\nPraesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.\r\n\r\nAenean condimentum nulla vitae ex tempor, a tincidunt eros vulputate. Aenean mauris dui, porta et tristique sit amet, ultricies at justo. Phasellus quis nisi elit. Praesent congue consequat varius. Nullam faucibus leo sed nunc scelerisque, porta eleifend quam mattis. Quisque malesuada dui in egestas faucibus. Sed vel blandit diam. Mauris non ante ac leo efficitur molestie. Mauris pellentesque tortor vitae porttitor blandit. Aliquam erat volutpat. Mauris tincidunt molestie sem, id porttitor libero sagittis ut. Praesent purus massa, rutrum auctor porta eget, consectetur vel justo. Fusce dignissim arcu nec nisl facilisis, ut tempor risus tincidunt. Morbi ex urna, lobortis in neque id, ultrices sollicitudin est.\r\n\r\nNulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.\r\n\r\nSed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum. ', 8, '2018-01-11 11:51:17'),
(7, 'test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce mollis lectus nunc, et molestie ipsum luctus nec. Pellentesque a finibus turpis, et eleifend nunc. Ut augue leo, sagittis eget hendrerit vel, fringilla sed urna. Quisque efficitur ligula eget lectus sagittis, vel sagittis elit tincidunt. Suspendisse pellentesque sit amet arcu ac dapibus. Morbi non mi rhoncus, rhoncus justo sit amet, placerat sem. Praesent dignissim porttitor dolor, at euismod nisi faucibus placerat. Praesent id scelerisque enim, sit amet molestie tellus.\r\n\r\nPraesent sit amet velit tincidunt, malesuada nulla non, cursus neque. Integer scelerisque vehicula nulla vel interdum. In feugiat lacinia justo, a pulvinar ligula suscipit at. Fusce convallis id est ut cursus. Suspendisse quis urna feugiat ligula iaculis imperdiet. Morbi blandit sit amet leo ac consequat. Ut sodales pulvinar lorem eu facilisis. Praesent scelerisque suscipit dolor vitae consectetur.\r\n\r\nAenean condimentum nulla vitae ex tempor, a tincidunt eros vulputate. Aenean mauris dui, porta et tristique sit amet, ultricies at justo. Phasellus quis nisi elit. Praesent congue consequat varius. Nullam faucibus leo sed nunc scelerisque, porta eleifend quam mattis. Quisque malesuada dui in egestas faucibus. Sed vel blandit diam. Mauris non ante ac leo efficitur molestie. Mauris pellentesque tortor vitae porttitor blandit. Aliquam erat volutpat. Mauris tincidunt molestie sem, id porttitor libero sagittis ut. Praesent purus massa, rutrum auctor porta eget, consectetur vel justo. Fusce dignissim arcu nec nisl facilisis, ut tempor risus tincidunt. Morbi ex urna, lobortis in neque id, ultrices sollicitudin est.\r\n\r\nNulla a lectus ante. Phasellus aliquet est auctor enim cursus facilisis. Vestibulum id felis eget nunc tempus sollicitudin sit amet sit amet sem. Nunc eu sapien est. Quisque porta velit mauris, sed pharetra velit accumsan porttitor. Aliquam ut dui lorem. Nulla aliquet sagittis sodales. Mauris at dapibus dolor, condimentum eleifend ligula. Aenean congue urna nec mi cursus, in rutrum est sagittis. Nam congue porttitor neque. Nunc eu lacus laoreet, faucibus eros sed, pharetra sem. Vestibulum ornare quam id magna congue porttitor.\r\n\r\nSed arcu augue, eleifend euismod tempus et, porttitor sit amet augue. Praesent vel felis quis risus rutrum finibus eu quis neque. Vestibulum pretium dolor feugiat massa suscipit, ac sagittis ante mattis. Nunc dapibus purus lobortis facilisis ullamcorper. Etiam sagittis augue eu tellus sollicitudin, non fermentum dolor euismod. Phasellus maximus nisl a lorem eleifend tincidunt. Nulla vitae ullamcorper justo. Quisque iaculis finibus sapien, eu vestibulum urna dignissim nec. Etiam quis malesuada tortor. Nunc id luctus nibh, id rhoncus justo. Pellentesque sed lacinia sapien. Nulla ac eros accumsan, laoreet dolor tristique, luctus felis. Etiam tempor posuere neque, eget cursus dui dictum sed. Ut euismod ex finibus arcu malesuada fringilla. Quisque tempus rutrum rutrum.', 7, '2018-01-11 12:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `project_name`, `name`, `body`, `created`, `due_date`) VALUES
(1, 7, 'Codeigniter Course', 'php ', 'Curabitur vulputate, elit vitae congue lacinia, lorem felis ullamcorper nisl, non consequat quam nulla at lacus. Maecenas rutrum, enim in mattis varius, dolor odio semper urna, non venenatis quam nisl id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mattis, dui pulvinar cursus blandit, purus neque bibendum nunc, sed vestibulum nibh leo eu tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In in cursus lectus. Fusce id nisl vitae mi cursus fringilla. Praesent fringilla tortor nunc, et tristique quam egestas fermentum. Sed auctor eleifend purus vitae facilisis. Nulla facilisi. Fusce a sem quis aug', '2018-01-12 05:37:22', '2018-01-16'),
(7, 7, 'test', 'test', 'Duis ultricies rutrum semper. Pellentesque a eros urna. Nullam dignissim velit ligula, sed volutpat nunc consequat eget. Duis condimentum nec felis vitae congue. Aliquam aliquam diam congue dictum mollis. Vivamus auctor quam et tellus efficitur tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque vel quam nisi. Duis a ante nec turpis ornare tempus ac ullamcorper magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis tellus id leo sodales maximus. In efficitur tortor eget venenatis elementum. Morbi vitae metus nec quam gravida placerat at ut augue. Nam suscipit ante magna, interdum gravida dolor cursus sed.\r\n\r\nDonec eget viverra libero, eu fringilla eros. Phasellus fermentum metus in odio gravida luctus non a diam. Phasellus et neque mauris. In tortor purus, fringilla vitae congue et, fringilla sit amet arcu. Donec sollicitudin, nisi non accumsan imperdiet, mi ipsum pharetra justo, sit amet tincidunt eros risus sed ipsum. Nam vel neque felis. Integer eu ligula consequat dolor porta egestas in et felis. Pellentesque aliquam, velit at tincidunt hendrerit, urna erat bibendum lacus, a varius massa est eu ipsum. Aliquam sagittis laoreet risus, eleifend suscipit est rutrum vitae. Aliquam sagittis diam at velit lobortis, in congue sapien tincidunt. Integer pellentesque, mi a commodo hendrerit, odio dui pellentesque erat, quis laoreet odio arcu id urna.\r\n\r\nInteger id orci felis. Proin dapibus erat odio. Ut lacus lorem, iaculis id tincidunt in, malesuada et orci. Sed quis lectus magna. Vestibulum ullamcorper massa et magna porta tincidunt. Mauris at dui velit. Aliquam convallis pellentesque porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec fringilla semper mi. Nam id dapibus sapien. Ut ut massa sit amet sem aliquam ornare. Sed sem velit, pellentesque nec cursus nec, tristique et ex.\r\n\r\nSed fringilla lorem eget viverra dictum. Etiam auctor, augue eget rutrum laoreet, tortor elit ullamcorper elit, eu condimentum eros est sed nibh. Mauris congue mi sed sapien consectetur, at vehicula ipsum venenatis. Cras arcu elit, consequat id consequat sed, facilisis nec neque. Integer porta ex metus, non vulputate arcu tempus vitae. Duis id sagittis enim. Praesent a mollis massa, sed facilisis nibh. In tempus nibh at ullamcorper accumsan. Nulla quis orci tincidunt dolor laoreet ornare vel vel quam.', '2018-01-12 08:39:14', '2018-01-11'),
(8, 7, 'Recipe Module', 'Sweet Rasggula', 'Duis ultricies rutrum semper. Pellentesque a eros urna. Nullam dignissim velit ligula, sed volutpat nunc consequat eget. Duis condimentum nec felis vitae congue. Aliquam aliquam diam congue dictum mollis. Vivamus auctor quam et tellus efficitur tempus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque vel quam nisi. Duis a ante nec turpis ornare tempus ac ullamcorper magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sagittis tellus id leo sodales maximus. In efficitur tortor eget venenatis elementum. Morbi vitae metus nec quam gravida placerat at ut augue. Nam suscipit ante magna, interdum gravida dolor cursus sed.\r\n\r\nDonec eget viverra libero, eu fringilla eros. Phasellus fermentum metus in odio gravida luctus non a diam. Phasellus et neque mauris. In tortor purus, fringilla vitae congue et, fringilla sit amet arcu. Donec sollicitudin, nisi non accumsan imperdiet, mi ipsum pharetra justo, sit amet tincidunt eros risus sed ipsum. Nam vel neque felis. Integer eu ligula consequat dolor porta egestas in et felis. Pellentesque aliquam, velit at tincidunt hendrerit, urna erat bibendum lacus, a varius massa est eu ipsum. Aliquam sagittis laoreet risus, eleifend suscipit est rutrum vitae. Aliquam sagittis diam at velit lobortis, in congue sapien tincidunt. Integer pellentesque, mi a commodo hendrerit, odio dui pellentesque erat, quis laoreet odio arcu id urna.\r\n\r\nInteger id orci felis. Proin dapibus erat odio. Ut lacus lorem, iaculis id tincidunt in, malesuada et orci. Sed quis lectus magna. Vestibulum ullamcorper massa et magna porta tincidunt. Mauris at dui velit. Aliquam convallis pellentesque porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec fringilla semper mi. Nam id dapibus sapien. Ut ut massa sit amet sem aliquam ornare. Sed sem velit, pellentesque nec cursus nec, tristique et ex.\r\n\r\nSed fringilla lorem eget viverra dictum. Etiam auctor, augue eget rutrum laoreet, tortor elit ullamcorper elit, eu condimentum eros est sed nibh. Mauris congue mi sed sapien consectetur, at vehicula ipsum venenatis. Cras arcu elit, consequat id consequat sed, facilisis nec neque. Integer porta ex metus, non vulputate arcu tempus vitae. Duis id sagittis enim. Praesent a mollis massa, sed facilisis nibh. In tempus nibh at ullamcorper accumsan. Nulla quis orci tincidunt dolor laoreet ornare vel vel quam.', '2018-01-12 09:07:39', '2018-01-25'),
(9, 8, 'Wordpress custom', 'Theme Development', 'Nulla vulputate volutpat commodo. Vivamus nec tellus volutpat nibh accumsan ullamcorper. Nulla vitae odio aliquam, volutpat orci id, accumsan nulla. Morbi in eros at massa sagittis efficitur. Vivamus vitae cursus metus. Integer sed ligula id elit tincidunt maximus. Ut accumsan mauris sem, non egestas sem ultricies a. Aenean viverra est eu mauris interdum, sit amet pulvinar odio lobortis. Integer pharetra feugiat tincidunt. Quisque sodales vehicula mi eu suscipit. Phasellus id urna aliquam, tempor dolor sed, bibendum orci.\r\n\r\nNunc elementum tristique ante sit amet accumsan. Vestibulum ullamcorper eu est a luctus. Integer scelerisque elementum ipsum, ut imperdiet tellus auctor sit amet. Ut at lacus sed nibh mattis consectetur ut aliquam diam. Donec a nibh eu massa ultricies eleifend ac tempor ipsum. Nulla facilisi. Mauris auctor ex turpis, sit amet molestie ex porta nec. Nam at dui sed arcu rutrum ornare pharetra non eros. Suspendisse sed sollicitudin magna, vitae pulvinar libero. Ut lobortis ut ipsum sed efficitur. Fusce auctor accumsan velit, sed bibendum nulla feugiat id. Quisque gravida pellentesque ipsum, in fermentum nibh tempor sit amet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2018-01-12 09:12:22', '2018-01-17'),
(10, 8, 'Ads package development', 'google ads', '\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed feugiat felis vitae metus elementum consectetur. Morbi id risus eu justo lobortis ullamcorper. Nulla feugiat, magna ornare rutrum aliquam, ligula magna blandit nisl, sed tempus elit tellus sit amet enim. Suspendisse bibendum, lorem ut gravida congue, est felis sagittis nunc, a auctor sem justo nec nulla. Pellentesque eu est a enim viverra ornare. Aliquam non arcu vel elit efficitur tincidunt sed eget tortor. Vivamus vulputate bibendum malesuada. Suspendisse blandit, metus sit amet feugiat porta, ante mi viverra odio, sit amet vehicula libero justo id turpis. Pellentesque a consequat est, sit amet placerat tellus. Sed at sem quis dolor fringilla luctus vitae sed purus. Nam bibendum lacus vitae odio dapibus tempus. Nam interdum rutrum sapien, eu egestas urna lobortis ut. Morbi rutrum, purus id consectetur porttitor, nibh turpis mattis felis, vestibulum sollicitudin tortor magna ac arcu. Vestibulum eu libero mauris.\r\n\r\nSed nec imperdiet velit, nec suscipit lacus. Duis non laoreet nulla, at fringilla lacus. Sed ut finibus odio. Phasellus in mauris in eros vestibulum dictum at in ligula. In hac habitasse platea dictumst. Etiam ullamcorper libero vel elementum malesuada. Cras rhoncus, magna ut maximus iaculis, tellus orci gravida lacus, in blandit leo felis nec odio. Nullam consectetur sapien tellus, eget elementum enim tempus commodo. Vestibulum malesuada lacinia risus commodo facilisis. In accumsan pellentesque ipsum, at ornare enim accumsan id. Aliquam viverra vitae libero in placerat. Aliquam eget risus porttitor, vulputate libero ut, dapibus lectus.\r\n\r\nMaecenas ultricies, mauris iaculis pretium rutrum, massa massa posuere mi, at aliquam est leo eget elit. Etiam neque nisl, convallis in augue id, ultricies consequat risus. Maecenas vitae massa egestas nunc iaculis scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. In blandit turpis ut nulla aliquam, id tempor tellus efficitur. Ut quis ullamcorper mi, vel cursus tortor. Phasellus facilisis pharetra mi, eget porttitor neque suscipit quis. Aenean malesuada sit amet eros id tempus. Ut tempus lorem at finibus sagittis. Sed sed urna sollicitudin metus sodales vulputate at a diam. Morbi varius nisl sit amet lacus viverra, nec elementum magna facilisis. Nulla fermentum, tellus in luctus tristique, ipsum mi vestibulum neque, at blandit turpis ligula vitae mauris. Phasellus velit lorem, rutrum et pretium vitae, consequat a dolor. Mauris velit justo, aliquam sit amet facilisis at, viverra porttitor ex.\r\n\r\nSuspendisse tempus felis sed dui dignissim, ut vestibulum lorem efficitur. Donec aliquam urna sed sapien ultrices scelerisque. Vivamus sed mattis felis, et ornare justo. Nulla nec vehicula nisi, blandit congue nulla. Aliquam rhoncus nibh rutrum hendrerit commodo. Donec ac justo consequat, rutrum sem a, sagittis orci. Integer et urna blandit, venenatis mi et, porta leo. Cras ipsum magna, dapibus eget elit ut, volutpat faucibus libero. Sed mollis diam eu ante volutpat pellentesque id sed massa. Nam auctor tortor ut ante egestas, nec consectetur ligula gravida. Integer nec felis in felis feugiat auctor non eget felis. Duis vel sapien eget odio hendrerit ultrices. Curabitur lobortis, turpis non sodales aliquet, ex enim posuere urna, quis porttitor magna ex a ante. Curabitur sed dignissim leo, sit amet maximus massa.\r\n\r\nPhasellus ullamcorper magna quis ligula auctor gravida. Maecenas a lectus tortor. Curabitur at hendrerit odio. Sed rhoncus mauris in massa lobortis, sit amet volutpat neque faucibus. Aenean at enim gravida, elementum tellus eu, consequat neque. Vivamus eu ex varius, auctor arcu sed, fringilla tortor. Cras venenatis felis sed aliquet auctor. Proin pellentesque libero eget ante suscipit blandit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur pulvinar cursus nunc quis ultrices. Sed finibus, leo nec semper faucibus, eros eros pretium velit, at sodales mauris libero vitae justo. Vivamus cursus, lorem nec elementum sagittis, turpis augue tempor magna, vitae commodo orci arcu quis nisi. Nullam fringilla magna ac quam bibendum elementum. Proin vitae nisi tempus, commodo lectus vitae, volutpat ipsum. Integer sagittis orci sed lacus tincidunt, in mattis elit lacinia.', '2018-01-12 09:12:55', '2018-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `register_date`) VALUES
(7, 'amit', 'ku', 'amit@creatise.in', 'amit', '0cb1eb413b8f7cee17701a37a1d74dc3', '2018-01-11 06:39:24'),
(8, 'Mr', 'test', 'test@gmail.com', 'test', '098f6bcd4621d373cade4e832627b4f6', '2018-01-11 06:55:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
