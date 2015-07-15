-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2015 at 05:52 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `usbong`
--

-- --------------------------------------------------------

--
-- Table structure for table `koreandict`
--

CREATE TABLE IF NOT EXISTS `koreandict` (
  `_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `worid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `word` varchar(255) NOT NULL,
  `syn` varchar(255) NOT NULL,
  `def` varchar(255) NOT NULL,
  `posn` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pos` varchar(255) NOT NULL,
  `submitter` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `wordsize` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hanja` varchar(255) NOT NULL,
  `frequency` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `koreandict`
--

INSERT INTO `koreandict` (`_id`, `worid`, `word`, `syn`, `def`, `posn`, `pos`, `submitter`, `doe`, `wordsize`, `hanja`, `frequency`) VALUES
('4e534f1f49dc3b3d27aa9ad5', '229372', '필요악', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90438&forum=17&switch=h&level=5" onMouseover="return overlib(''반드시필 (must, having to, necessity)'')" onMouseOut="nd();">必</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=', '29829'),
('4e534f1f49dc3b3d27aa9ad6', '229373', '필요충분조건', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '18', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90438&forum=17&switch=h&level=5" onMouseover="return overlib(''반드시필 (must, having to, necessity)'')" onMouseOut="nd();">必</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=', '37684'),
('4e534f1f49dc3b3d27aa9ad7', '229374', '필진', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90439&forum=17&switch=h&level=5" onMouseover="return overlib(''붓필 (붓  a  calligraphy brush for writing)'')" onMouseOut="nd();">筆</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread', '25288'),
('4e534f1f49dc3b3d27aa9ad8', '229375', '필체', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90439&forum=17&switch=h&level=5" onMouseover="return overlib(''붓필 (붓  a  calligraphy brush for writing)'')" onMouseOut="nd();">筆</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread', '25289'),
('4e534f1f49dc3b3d27aa9ad9', '229376', '하강기', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90810&forum=17', '57090'),
('4e534f1f49dc3b3d27aa9ada', '229377', '하강세', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90810&forum=17', '37693'),
('4e534f1f49dc3b3d27aa9adb', '229378', '하계절', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90092&forum=17&switch=h&level=7" onMouseover="return overlib(''여름하 .  Summer'')" onMouseOut="nd();">夏</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90828&forum=17&switc', '37696'),
('4e534f1f49dc3b3d27aa9adc', '229379', '하곡', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90092&forum=17&switch=h&level=7" onMouseover="return overlib(''여름하 .  Summer'')" onMouseOut="nd();">夏</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90833&forum=17&switc', '57094'),
('4e534f1f49dc3b3d27aa9add', '229380', '하곡', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90440&forum=17&switch=h&level=4II" onMouseover="return overlib(''강이름하 (name of a river) or 내 하 (stream), 강 하 (river)'')" onMouseOut="nd();">河</a><a href="http://ezcorean.com/bb_index.php?suba', '57093'),
('4e534f1f49dc3b3d27aa9ade', '229381', '하곡지', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90440&forum=17&switch=h&level=4II" onMouseover="return overlib(''강이름하 (name of a river) or 내 하 (stream), 강 하 (river)'')" onMouseOut="nd();">河</a><a href="http://ezcorean.com/bb_index.php?suba', '37697'),
('4e534f1f49dc3b3d27aa9adf', '229382', '하관', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=92488&forum=17', '57095'),
('4e534f1f49dc3b3d27aa9ae0', '229383', '하관', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90277&forum=17', '37698'),
('4e534f1f49dc3b3d27aa9ae1', '229384', '하관시', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=92488&forum=17', '57096'),
('4e534f1f49dc3b3d27aa9ae2', '229385', '하교', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=93590&forum=17', '29841'),
('4e534f1f49dc3b3d27aa9ae3', '229386', '하굣', '', '', '1', '1', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=93590&forum=17', ''),
('4e534f1f49dc3b3d27aa9ae4', '229387', '하권', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '6', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90845&forum=17', '57100'),
('4e534f1f49dc3b3d27aa9ae5', '229388', '하급심', '', '', '1', '?', 'mr.hanja', '2009-01-01 11:23:14', '9', '<a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90091&forum=17&switch=h&level=7" onMouseover="return overlib(''아래하.  Below, under.'')" onMouseOut="nd();">下</a><a href="http://ezcorean.com/bb_index.php?subaction=vthread&topic=90126&forum=17', '57101');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
