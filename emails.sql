SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `emails` (
  `emailID` int(11) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `mailbox` varchar(10) NOT NULL,
  PRIMARY KEY (`emailID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `emails` (`emailID`, `sender`, `title`, `date`, `content`, `mailbox`) VALUES
(1, 'Jim@cs.hku.hk', 'Hello from Toronto', 'Sep 25 2017', 'Hi Alice, I am traveling in Toronto now.', 'inbox'),
(2, 'a@cs.hku.hk', 'Hello from a', 'Sep 26 2017', 'Hi', 'inbox'),
(3, 'b@cs.hku.hk', 'Hello from b', 'Sep 28 2017', 'Hi', 'inbox'),
(4, 'c@cs.hku.hk', 'Hello from c', 'Sep 29 2017', 'Hi', 'inbox'),
(5, 'd@cs.hku.hk', 'Hello from d', 'Sep 30 2017', 'Hi', 'trash'),
(6, 'tom@cs.hku.hk', 'Share photo', 'Oct 1 2017', 'My photo', 'inbox'),
(7, 'e@cs.hku.hk', 'Hello from e', 'Oct 1 2017', 'Hi', 'inbox'),
(8, 'bob@cs.hku.hk', 'Come and join us', 'Oct 2 2017', 'Come and join us. BBQ on Oct 15.', 'inbox'),
(9, 'f@cs.hku.hk', 'Hello from f', 'Oct 2 2017', 'Hi', 'inbox'),
(10, 'g@cs.hku.hk', 'Hello from g', 'Oct 3 2017', 'Hi. I am g', 'important'),
(11, 'h@cs.hku.hk', 'Hello from f', 'Oct 4 2017', 'Hi. I am f', 'important'),
(12, 'i@cs.hku.hk', 'Hello from i', 'Oct 7 2017', 'Hi. Do you remember me?', 'important'),
(13, 'lam@cs.hku.hk', 'Nice to meet you', 'Oct 8 2017', 'Hi, I am Lam', 'important'),
(15, 'k@cs.hku.hk', 'Hi --- K', 'Oct 10 2017', 'Hi. I am k', 'inbox'),
(14, 'j@cs.hku.hk', 'Hello from j', 'Oct 9 2017', 'Hi I am j', 'trash'),
(16, 'jason@hku.hk', 'Football !', 'Oct 11 2017', 'Do you have time on 20 Oct 2017?\r\nLet'' play football!', 'inbox'),
(17, 'p@hku.hk', 'HI', 'Oct 11 2017', 'Hello \r\nI am p.\r\nDo you remember me?', 'inbox');

