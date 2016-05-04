-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2016 at 07:28 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cruddemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `telepon` varchar(18) NOT NULL,
  `handphone` varchar(18) NOT NULL,
  `email` varchar(18) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `telepon`, `handphone`, `email`) VALUES
(2, 'Kelly Thomas', '86-(881)637-5268', '86-(407)440-4801', 'kthomas1@umn.edu'),
(3, 'Shawn Bell', '86-(791)234-4560', '62-(622)152-7288', 'sbell2@icq.com'),
(4, 'Philip Nichols', '81-(159)554-6863', '358-(555)117-8814', 'pnichols3@blog.com'),
(5, 'Edward Bell', '62-(516)779-0366', '420-(105)653-3311', 'ebell4@plala.or.jp'),
(6, 'Gloria Simpson', '64-(436)724-4565', '54-(471)664-7085', 'gsimpson5@comcast.'),
(7, 'Ernest Griffin', '1-(330)933-6897', '86-(360)510-7835', 'egriffin6@xrea.com'),
(8, 'Justin Lynch', '7-(743)469-2243', '33-(294)182-9667', 'jlynch7@economist.'),
(9, 'Larry Meyer', '57-(745)441-1933', '62-(665)553-6942', 'lmeyer8@slate.com'),
(10, 'Norma Daniels', '994-(571)331-4593', '46-(577)152-0742', 'ndaniels9@usa.gov'),
(11, 'Gary Riley', '86-(427)677-6086', '850-(714)954-2656', 'grileya@hostgator.'),
(12, 'Juan Little', '47-(365)594-8486', '62-(738)480-3400', 'jlittleb@free.fr'),
(13, 'Ruth Vasquez', '55-(940)339-3719', '505-(289)551-1583', 'rvasquezc@addtoany'),
(14, 'Angela Williams', '27-(809)806-8714', '86-(939)372-2971', 'awilliamsd@cdbaby.'),
(15, 'Anna Ruiz', '7-(439)114-2539', '81-(540)565-7758', 'aruize@google.ru'),
(16, 'Philip Hart', '81-(350)767-4761', '86-(548)518-4028', 'phartf@lycos.com'),
(17, 'Albert Bradley', '51-(756)515-5483', '385-(412)901-4258', 'abradleyg@theglobe'),
(18, 'Margaret Perkins', '86-(374)803-2079', '33-(895)593-4454', 'mperkinsh@eepurl.c'),
(19, 'Jesse Carr', '92-(745)412-0680', '86-(829)105-1122', 'jcarri@archive.org'),
(20, 'Jose Hunter', '63-(624)340-4565', '51-(808)596-3493', 'jhunterj@blinklist'),
(21, 'Martin Gonzalez', '1-(788)422-3228', '502-(362)565-1016', 'mgonzalezk@addtoan'),
(22, 'Larry Riley', '55-(119)231-7853', '62-(970)783-2675', 'lrileyl@gmpg.org'),
(23, 'Gloria Hamilton', '33-(263)453-5219', '380-(154)244-8340', 'ghamiltonm@rambler'),
(24, 'Robin Lawrence', '86-(842)515-2569', '86-(892)231-7671', 'rlawrencen@senate.'),
(25, 'Juan Mitchell', '7-(482)452-7158', '98-(335)735-6773', 'jmitchello@washing'),
(26, 'Karen Franklin', '504-(271)103-9061', '86-(155)121-9239', 'kfranklinp@plala.o'),
(27, 'Johnny Campbell', '81-(709)946-2697', '86-(851)990-4970', 'jcampbellq@yellowb'),
(28, 'Richard Holmes', '48-(603)777-8516', '967-(160)281-7933', 'rholmesr@youtube.c'),
(29, 'Ryan Snyder', '86-(648)145-6644', '55-(530)577-5669', 'rsnyders@ehow.com'),
(30, 'Melissa Payne', '86-(121)436-7809', '86-(489)404-8820', 'mpaynet@google.com'),
(31, 'Kenneth Payne', '62-(692)361-9115', '98-(877)773-8293', 'kpayneu@sogou.com'),
(32, 'Janet Baker', '57-(359)193-6895', '62-(813)645-5370', 'jbakerv@networksol'),
(33, 'Timothy Lee', '420-(712)493-4258', '7-(937)841-1732', 'tleew@icio.us'),
(34, 'Lori Stone', '992-(544)640-9180', '7-(570)882-2785', 'lstonex@addtoany.c'),
(35, 'Samuel Nichols', '33-(443)415-5729', '62-(229)757-4575', 'snicholsy@miitbeia'),
(36, 'Diane Gilbert', '63-(591)702-4638', '389-(532)885-9727', 'dgilbertz@intel.co'),
(37, 'Michael Harris', '351-(465)595-1659', '81-(326)261-7614', 'mharris10@archive.'),
(38, 'Russell Ellis', '63-(704)108-6929', '62-(580)906-1261', 'rellis11@ft.com'),
(39, 'Walter Fields', '57-(410)623-6405', '7-(493)218-2564', 'wfields12@purevolu'),
(40, 'Jack Cruz', '1-(303)951-9780', '81-(541)337-2384', 'jcruz13@usgs.gov'),
(41, 'Justin Berry', '86-(906)983-1716', '63-(497)806-1852', 'jberry14@unicef.or'),
(42, 'Sara Richards', '46-(503)511-7981', '86-(595)338-5131', 'srichards15@blogs.'),
(43, 'Norma Wilson', '62-(925)287-1580', '234-(765)784-8944', 'nwilson16@amazon.c'),
(44, 'Kathleen Mason', '86-(139)114-9938', '1-(245)985-4279', 'kmason17@hugedomai'),
(45, 'Betty West', '86-(176)627-7648', '62-(666)445-1557', 'bwest18@goo.ne.jp'),
(46, 'Amy Stewart', '7-(417)377-3019', '55-(402)671-5872', 'astewart19@intel.c'),
(47, 'Bruce Wilson', '62-(556)376-4922', '62-(387)704-3481', 'bwilson1a@blinklis'),
(48, 'Marie Mills', '93-(480)247-4182', '57-(886)516-2900', 'mmills1b@va.gov'),
(49, 'Harry Dunn', '20-(960)489-8544', '592-(356)542-5808', 'hdunn1c@craigslist'),
(50, 'Jean Martin', '63-(300)476-0107', '380-(851)391-1618', 'jmartin1d@twitter.'),
(51, 'John Tucker', '48-(714)625-2124', '86-(884)344-8328', 'jtucker1e@fema.gov'),
(52, 'Stephanie Fernandez', '354-(901)743-0265', '86-(835)799-1021', 'sfernandez1f@w3.or'),
(53, 'Juan Mitchell', '63-(680)578-6110', '86-(303)748-3595', 'jmitchell1g@lycos.'),
(54, 'Steven Lewis', '33-(585)157-0040', '996-(490)845-2509', 'slewis1h@macromedi'),
(55, 'Lillian Turner', '20-(586)246-9036', '86-(434)193-9233', 'lturner1i@networks'),
(56, 'Peter Butler', '7-(392)497-5581', '63-(984)772-1239', 'pbutler1j@princeto'),
(57, 'Norma Murray', '389-(209)414-5806', '47-(942)826-0093', 'nmurray1k@si.edu'),
(58, 'Kelly Martinez', '1-(272)622-4134', '691-(278)410-7384', 'kmartinez1l@webs.c'),
(59, 'Patricia Ruiz', '62-(831)656-5402', '55-(109)495-4146', 'pruiz1m@discovery.'),
(60, 'Shawn Sanders', '7-(825)466-2901', '86-(470)293-1493', 'ssanders1n@nifty.c'),
(61, 'Maria Scott', '86-(299)260-2209', '63-(734)133-8606', 'mscott1o@indiatime'),
(62, 'Philip Moore', '33-(563)945-7057', '689-(484)228-6795', 'pmoore1p@hc360.com'),
(63, 'Martin Dunn', '351-(328)572-5915', '63-(274)862-9539', 'mdunn1q@huffington'),
(64, 'Chris Lane', '375-(176)583-7722', '86-(845)266-4431', 'clane1r@globo.com'),
(65, 'Margaret Simpson', '57-(927)772-7220', '86-(356)732-2012', 'msimpson1s@nps.gov'),
(66, 'Daniel Nguyen', '86-(245)387-4227', '86-(668)823-2909', 'dnguyen1t@free.fr'),
(67, 'Harold Jackson', '51-(534)866-4002', '212-(372)256-1767', 'hjackson1u@weibo.c'),
(68, 'Victor Alvarez', '86-(408)542-9897', '86-(152)864-5841', 'valvarez1v@seattle'),
(69, 'Carlos Chapman', '598-(424)563-1501', '30-(878)818-7902', 'cchapman1w@reuters'),
(70, 'James Robinson', '351-(462)980-0791', '62-(872)324-2522', 'jrobinson1x@cnet.c'),
(71, 'Antonio Hall', '86-(117)243-1788', '86-(541)977-6502', 'ahall1y@cnet.com'),
(72, 'Jesse Willis', '7-(568)180-3705', '86-(153)416-3928', 'jwillis1z@nbcnews.'),
(73, 'Nicholas Robertson', '63-(530)514-0595', '1-(513)788-1818', 'nrobertson20@sakur'),
(74, 'Louis Reynolds', '86-(997)906-2828', '57-(901)466-0820', 'lreynolds21@seesaa'),
(75, 'Rachel Chavez', '62-(216)413-5773', '234-(302)701-0504', 'rchavez22@ca.gov'),
(76, 'Robin Simpson', '56-(693)166-5718', '86-(737)494-2952', 'rsimpson23@behance'),
(77, 'Anna Spencer', '244-(105)396-5193', '48-(937)186-7791', 'aspencer24@dagonde'),
(78, 'Christine Wright', '420-(715)155-0254', '86-(839)211-5174', 'cwright25@newyorke'),
(79, 'Katherine Edwards', '86-(548)272-9923', '62-(654)870-5978', 'kedwards26@cnet.co'),
(80, 'Bobby Elliott', '57-(659)473-8836', '963-(269)802-7369', 'belliott27@nydaily'),
(81, 'Catherine Mitchell', '63-(708)882-1750', '33-(719)931-3643', 'cmitchell28@merria'),
(82, 'Ashley Brown', '30-(545)477-8173', '82-(117)706-3636', 'abrown29@studiopre'),
(83, 'Sharon Mccoy', '58-(664)917-0990', '86-(360)967-4175', 'smccoy2a@auda.org.'),
(84, 'Theresa Owens', '84-(569)199-7173', '264-(252)154-6252', 'towens2b@macromedi'),
(85, 'Judith Chapman', '55-(485)687-5112', '387-(449)119-6274', 'jchapman2c@psu.edu'),
(86, 'Paula Reed', '7-(867)691-9156', '7-(985)548-8186', 'preed2d@jugem.jp'),
(87, 'Lillian Williamson', '52-(222)715-0146', '86-(858)505-5479', 'lwilliamson2e@euro'),
(88, 'Richard Hart', '218-(788)419-2549', '33-(294)627-4280', 'rhart2f@xrea.com'),
(89, 'Eugene Wheeler', '55-(605)533-5854', '30-(935)702-7908', 'ewheeler2g@patch.c'),
(90, 'Jason Sanchez', '86-(660)466-2544', '62-(766)987-8328', 'jsanchez2h@mapy.cz'),
(91, 'Shawn Nelson', '48-(931)689-7848', '48-(519)396-2049', 'snelson2i@scribd.c'),
(92, 'Annie Ricex', '86-(754)492-2068', '1-(291)472-6435', 'arice2j@senate.gov'),
(93, 'Christine Johnston', '48-(784)641-1755', '420-(707)601-4594', 'cjohnston2k@tripod'),
(94, 'Evelyn Bell', '30-(559)224-1758', '86-(724)891-7235', 'ebell2l@sun.com'),
(95, 'Paul Green', '62-(276)508-7068', '66-(587)569-3060', 'pgreen2m@amazon.de'),
(96, 'Henry Moreno', '351-(699)858-0633', '55-(935)174-5114', 'hmoreno2n@people.c'),
(98, 'Amanda Kennedy', '7-(431)167-1575', '48-(226)920-7651', 'akennedy2p@chronoe'),
(99, 'Ryan Hayes', '7-(422)297-0452', '225-(910)579-1790', 'rhayes2q@timesonli'),
(100, 'Douglas Jordan', '86-(209)146-1608', '51-(412)680-0866', 'djordan2r@netvibes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
