-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 09:04 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_news`
--

CREATE TABLE `add_news` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `subheading` text NOT NULL,
  `type` text NOT NULL,
  `msg` text NOT NULL,
  `photo` text NOT NULL,
  `location` text NOT NULL,
  `date` date NOT NULL,
  `auther` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_news`
--

INSERT INTO `add_news` (`id`, `heading`, `subheading`, `type`, `msg`, `photo`, `location`, `date`, `auther`, `created_at`) VALUES
(1, 'Ukraine-Russia war: Latest updates', 'Russia facing strong resistance, says UK defence ministry', 'latest', 'Ukraine has been able to hold on to key cities despite repeated assaults from Russian military forces, says the UK\'s Ministry of Defence (MoD). The statement said Russian forces were making gains from multiple fronts to try to encircle the capital city of Kyiv, but faced \"strong resistance\" from the Ukrainian Armed Forces. Russian forces have also made an amphibious landing in an area between the cities of Mariupol and Melitopol, located in southern Ukraine, says the MoD.', 'n1.jpg', 'ucrane', '2022-03-03', 'Unknown', '2022-02-26 05:17:17'),
(2, 'India Explains Move To Abstain From UN Vote', 'Russia facing strong resistance, says UK defence ministry', 'latest', 'India on Friday abstained on a US-sponsored UN Security Council resolution that deplored in the strongest terms Russia\'s aggression against Ukraine. New Delhi said dialogue is the only answer to settling differences and disputes and voiced \"regret\" that the path of diplomacy was given up.\nThe resolution did not pass as permanent member Russia used its veto. In the 15-member UN Security Council, the resolution received 11 votes in favour and three abstentions, including by India, China and the UAE.\n\nAs India tries to maintain a tough diplomatic balance on the Russia-Ukraine war, it used strong words on Russia\'s actions but stopped short of voting against it', 'n2.jpg', 'Ucrane', '2022-02-26', 'MR. Demo', '2022-02-26 05:25:15'),
(3, 'IPL unveils new format for 2022, with two groups and seedings', 'Group A will be led by five-time champions Mumbai Indians, while four-time winners Chennai Super Kings will be on top in Group B', 'sport', 'The 2022 IPL will give its 10 teams seedings and place them in two \"virtual\" groups during the league phase of the tournament. The seedings are based on the number of times a team has won the IPL or made the finals. Group A will be led by five-time champions Mumbai Indians, who are the top overall seeds, while four-time winners Chennai Super Kings, will lead Group B with the No. 2 seeding.\r\n\r\nThe other teams in Group A, in order, are Kolkata Knight Riders, Rajasthan Royals, Delhi Capitals and Lucknow Super Giants. Group B features Sunrisers Hyderabad, Royal Challengers Bangalore, Punjab Kings and Gujarat Titans, in that order.', 'n3.jpg', 'India', '2022-02-26', 'Mr. Sport', '2022-02-26 05:26:33'),
(4, 'India vs Sri Lanka 1st T20I', 'India vs Sri Lanka (IND vs SL) 1st T20I Highlights: India beat Sri Lanka in Lucknow.', 'sport', 'India vs Sri Lanka 1st T20I Highlights: India comfortably beat Sri Lanka by 62 runs in the first T20 International on Thursday. Batting first, IPL’s costliest buy Ishan Kishan plundered a career-best 56-ball-89 while Shreyas Iyer helped himself to an unbeaten 57 off 28 balls as India scored 199 for two and then restricted Sri Lanka to 137 for six. Skipper Rohit Sharma also got 44 off 32 balls as Sri Lankan bowlers, without world’s premier leg-spinner Wanindu Hasaranga, were taken to cleaners by Indian batters. Kishan had 10 fours and three sixes in his innings while Iyer hit five fours and two sixes.\r\n\r\nIn bowling, Bhuvneshwar Kumar (2/9), Venkatesh Iyer (2/36) got their share of wickets. Yuzvendra Chahal (1/11 in 3 overs) also bowled well.\r\n\r\nIndia: 199/2 in 20 overs (Ishan Kishan 89, Shreyas Iyer 57 not out; Dasun Shanaka 1/19).\r\n\r\nSri Lanka: 137/6 in 20 overs (Charith Asalanka 53 not out, Venkatesh Iyer 2/36, Bhuvneshwar Kumar 2/9).					\r\n				', 'n4.jpg', 'Lucknow.', '2022-02-25', 'Mr. Sport', '2022-02-26 05:29:10'),
(5, 'Vivo X Note specs leak reveals ', 'Vivo X Note specs leak reveals 7-inch OLED display, SD8G1, 50MP quad cameras, and more', 'other', 'An upcoming Vivo phone with V2170A model number has been approved by China’s 3C authority. Tipster WHY LAB from China has claimed that this device will be debuting with Vivo X Note name in the home market. He also shared the key specifications of the device.\r\n\r\nAccording to the tipster, the V2170A was previously expected to launch as the NEX 5, but as mentioned above, it will be launching as the Vivo X Note. Its 3C certification reveals that the device may ship with an 80W charger. The handset has also bagged TENAA certification, but its details haven’t appeared yet.					\r\n				', 'm.jpg', 'India', '2022-02-26', 'Mr.Other', '2022-02-26 05:38:55'),
(6, 'India Records 13,166 New COVID-19 Cases', 'The daily COVID-19 cases have remained less than one lakh for 19 consecutive days.', 'india', 'New Delhi: India logged 13,166 new coronavirus infections, taking the total tally of COVID-19 cases to 4,28,94,345, while the active cases declined to 1,34,235, according to the Union Health Ministry data updated on Friday.\r\nThe death toll climbed to 5,13,226 with 302 fresh fatalities, the data updated at 8 am stated.\r\n\r\nThe daily COVID-19 cases have remained less than one lakh for 19 consecutive days.   \r\n\r\nThe active cases comprise 0.31 per cent of the total infections, while the national COVID-19 recovery rate has further improved to 98.49 per cent, the ministry said.					\r\n				', 'Rachenabstrich.jpg', 'New Delhi', '2022-02-26', 'Mr.India', '2022-02-26 05:42:38'),
(7, 'No Religious Attire Allowed in Schools', 'The BJP councillor who issued these instructions said that it was done in light of the recent incident in Mustafabad where a sixth-grade student was told to remove her hijab in the classroom.', 'india', 'Sharma, the BJP councillor from Dwarka, instructed officials in the letter to ensure that no child comes to school wearing anything but their uniform. \r\n\r\nIn the letter, Sharma also notes that students look “very beautiful” in their uniforms and that the uniforms make sure that there is “no inferiority complex between rich and poor children studying in school”.\r\n\r\nSharma told the newspaper that she wrote the letter after learning about an incident at a Delhi government school in Mustafabad’s Tukhmirpur region where a sixth-grade student was told to remove her hijab in order to enter class.					\r\n				', 'Screenshot-2022-02-16-at-4.12.06-PM.png', 'New Delhi', '2022-02-26', 'Mr.India', '2022-02-26 05:47:59'),
(8, 'Bitcoin Donations Pour in to Help Ukrainian Military Fight', 'Cryptocurrency donations have poured into a nonprofit organization that provides support to Ukrainian soldiers after Russia launched a large-scale attack on Ukraine.', 'world', 'One of the largest non-governmental organizations (NGOs) providing support to Ukraine’s military, Come Back Alive, has received over $5 million in bitcoin donations after Russia launched a large-scale offensive against Ukraine.\r\n\r\nFounded in 2014, the Kyiv-based group provides support to Ukrainian soldiers, including a range of military equipment, training services, and medical supplies.\r\n\r\nDonations to the BTC address listed on the organization’s website soared Thursday after Russia launched a full-scale military attack on Ukraine. At the time of writing, the wallet address has received 131.78144015 BTC.					\r\n				', 'ukraine1.jpg', 'Ucrane', '2022-02-26', 'Mr World', '2022-02-26 05:49:31'),
(9, 'Grand Live Concert In Germany', 'Wafer cake sweet roll cheesecake ice cream gingerbread sweet. ', 'world', 'Candy canes jelly beans ice cream jelly macaroon topping chocolate croissant biscuit. Chupa chups marshmallow oat cake croissant bonbon. Biscuit macaroon halvah soufflé marzipan. Macaroon icing oat cake sesame snaps carrot cake jelly-o.bonbon.Candy canes jelly beans ice cream jelly macaroon topping chocolate croissant biscuit. Chupa chups marshmallow oat cake croissant bonbon. Biscuit macaroon halvah soufflé marzipan. Macaroon icing oat cake sesame snaps carrot cake jelly-o.Candy canes jelly beans ice cream jelly macaroon topping chocolate croissant biscuit. Chupa chups marshmallow oat cake croissant bonbon. Biscuit macaroon halvah soufflé marzipan. Macaroon icing oat cake sesame snaps carrot cake jelly-o.\r\n\r\nSweet roll powder cookie chocolate cake dessert muffin cake lemon drops. Soufflé halvah fruitcake sweet roll muffin. Wafer danish cupcake jelly cookie. Jelly-o marshmallow oat cake brownie.					\r\n				', 'black-promoters-collective.jpg', 'Germany', '2022-02-26', 'Mr World', '2022-02-26 06:03:12'),
(10, 'Motorola Edge 30 Pro', 'After months of speculation, Lenovo has finally launched the Motorola Edge 30 Pro in Indian markets.', 'other', 'The smartphone comes with a top-of-the-line Snapdragon 8 Gen 1 chipset and features a triple-rear camera setup and a 144Hz refresh rate display. Interestingly, the smartphone is priced very aggressively in India. Now, some readers might be planning to invest in an Android flagship but might be confused between the Samsung Galaxy S22 and the Motorola Edge 30 Pro. Keep reading to find a detailed comparison \r\n\r\nIt is pertinent to note here that the Samsung Galaxy S22 series has been launched recently. The series comprises three smartphones - Vanilla Galaxy S22, Galaxy S22 Plus and Galaxy S22 Ultra. Although the size of the Motorola Edge 30 Pro is closer to the Galaxy S22 Plus, it is more comparable to the Galaxy S22 when it comes to price. All the aspects of the smartphone are mentioned below, in comparison with the recent flagship. 					\r\n				', 'featured-post-4.jpg', 'World', '2022-02-26', 'Mr.Other', '2022-02-26 06:07:18'),
(11, 'Indian Elections 2022', 'Uttar Pradesh, Punjab, Goa, Manipur and Uttarakhand will go to polls in 2022. ', 'election', 'Uttar Pradesh, Punjab, Goa, Manipur and Uttarakhand will go to polls in 2022. The terms of all the assemblies end between March 15 2022 and March 27 2022. The Election Commission of India will conduct the polls and announce the results simultaneously. The notification is expected in January and polls in the five states are likely by February.\r\nIn UP all eyes would be on the BJP led by Yogi Adityanath and whether the party which put up a stellar performance in 2017 will be able to return to power or not. The Punjab elections would be an interesting one with the drama that is taking place					\r\n				', 'general_elections_2019_g_660_102219031127.jpg', 'New Delhi', '2022-02-26', 'Mr.India', '2022-02-26 06:09:57'),
(12, 'Uttarakhand Polls', 'On Tuesday, the EC received a written complaint from the Congress party after which it initiated action. ', 'election', 'New Delhi: Two days after Congress general secretary Harish Rawat posted a video on social media of \"ballot tampering\", the Election Commission (EC) ordered the Pithoragarh police to register a case into the incident. \r\n\r\nOn Tuesday, the EC received a written complaint from the state Congress after which it initiated action. \r\n\r\nA case in this regard has also been registered at the Didihat police station in Pithoragarh on behalf of Congress candidate from the Didihat assembly seat Pradeeppal.					\r\n				', 'capture-1635813995.jpg', 'Uttarakhand', '2022-02-26', 'MR. Demo', '2022-02-26 06:20:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_news`
--
ALTER TABLE `add_news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_news`
--
ALTER TABLE `add_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
