


USE book_db;


--
-- Dumping dummy data for users
--
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES
('1', 'Michael', 'pwd1', '2022-09-28 03:07:23', '2022-10-06 18:30:09'),
('2', 'Destino', 'pwd2', '2022-10-24 16:46:48', '2022-10-28 22:16:28'),
('3', 'Mcfree', 'pwd3', '2022-10-11 04:54:09', '2022-11-03 09:58:41');
UNLOCK TABLES;


--
-- Dumping dummy data for todo_lists
--
LOCK TABLES `todo_lists` WRITE;
INSERT INTO `todo_lists` VALUES
('1', 'Default', '1', '2022-10-07 06:52:05', '2022-10-30 20:33:37'),
('2', 'Default', '2', '2022-10-28 23:06:56', '2022-10-31 01:03:48'),
('3', 'Default', '3', '2022-10-25 20:20:22', '2022-11-05 02:18:21'),
('4', 'lista4', '3', '2022-11-01 09:31:06', '2022-11-02 02:18:37'),
('5', 'lista5', '2', '2022-10-10 20:32:28', '2022-10-31 18:50:40'),
('6', 'lista6', '1', '2022-10-02 07:20:07', '2022-10-13 03:46:12'),
('7', 'lista7', '1', '2022-11-03 02:08:32', '2022-11-03 17:21:29'),
('8', 'lista8', '2', '2022-10-26 08:12:17', '2022-11-04 04:42:17'),
('9', 'lista9', '1', '2022-09-26 20:19:50', '2022-11-03 18:43:28'),
('10', 'lista10', '1', '2022-10-02 06:51:37', '2022-10-08 05:18:05');
UNLOCK TABLES;


--
-- Dumping dummy data for tasks
--
LOCK TABLES `tasks` WRITE;
INSERT INTO `tasks` VALUES
('1', 'Tempora etincidunt etincidunt neque porro.', '2022-10-31 21:10:24', '5', '1', '2022-10-26 10:36:15', '2022-10-31 21:10:24'),
('2', 'Est eius velit est quaerat dolor sed.', '2022-11-03 10:35:56', '5', '0', '2022-10-29 20:20:33', '2022-11-03 10:35:56'),
('3', 'Non dolor tempora amet dolorem labore est.', '2022-10-18 06:50:49', '5', '1', '2022-10-05 15:38:10', '2022-10-18 06:50:49'),
('4', 'Dolore quisquam aliquam quiquia magnam numquam dolore adipisci.', '2022-11-03 08:17:50', '4', '0', '2022-10-30 20:25:26', '2022-11-03 08:17:50'),
('5', 'Neque ut quiquia porro sit dolorem.', '2022-11-04 20:49:02', '2', '1', '2022-11-04 18:37:55', '2022-11-04 20:49:02'),
('6', 'Eius dolore quiquia velit quisquam non non ipsum.', '2022-10-07 12:12:30', '7', '0', '2022-09-29 10:53:16', '2022-10-07 12:12:30'),
('7', 'Adipisci numquam aliquam sed amet quaerat quiquia.', '2022-11-03 21:03:27', '8', '0', '2022-11-03 10:17:18', '2022-11-03 21:03:27'),
('8', 'Porro quiquia adipisci tempora.', '2022-10-26 05:39:41', '9', '0', '2022-10-06 02:15:05', '2022-10-26 05:39:41'),
('9', 'Labore ut quaerat sit etincidunt tempora.', '2022-11-04 05:29:01', '4', '1', '2022-10-29 19:07:41', '2022-11-04 05:29:01'),
('10', 'Eius ipsum consectetur dolorem amet amet quisquam velit.', '2022-10-28 10:34:30', '10', '1', '2022-10-09 01:34:47', '2022-10-28 10:34:30'),
('11', 'Ipsum non est dolorem sed magnam consectetur amet.', '2022-11-02 07:51:07', '6', '0', '2022-10-29 09:40:03', '2022-11-02 07:51:07'),
('12', 'Consectetur etincidunt sed aliquam tempora dolore magnam dolor.', '2022-10-28 06:36:04', '7', '0', '2022-10-13 02:41:12', '2022-10-28 06:36:04'),
('13', 'Voluptatem amet sed non.', '2022-10-27 23:40:41', '7', '1', '2022-10-14 09:20:21', '2022-10-27 23:40:41'),
('14', 'Amet labore consectetur voluptatem.', '2022-10-27 01:17:11', '1', '1', '2022-10-09 09:37:14', '2022-10-27 01:17:11'),
('15', 'Numquam ut voluptatem sit labore ut.', '2022-11-04 03:42:18', '8', '1', '2022-10-31 07:23:29', '2022-11-04 03:42:18'),
('16', 'Labore sed dolore sed.', '2022-10-31 17:42:40', '6', '0', '2022-10-27 08:08:21', '2022-10-31 17:42:40'),
('17', 'Quisquam quiquia aliquam aliquam quisquam.', '2022-10-30 17:12:11', '9', '1', '2022-10-30 12:43:07', '2022-10-30 17:12:11'),
('18', 'Numquam sed adipisci tempora est eius tempora sed.', '2022-10-31 05:45:28', '1', '0', '2022-10-25 21:30:58', '2022-10-31 05:45:28'),
('19', 'Ipsum dolor sit quiquia tempora.', '2022-10-26 15:23:07', '1', '0', '2022-10-22 07:45:06', '2022-10-26 15:23:07'),
('20', 'Voluptatem amet labore sit labore ut eius quaerat.', '2022-11-01 23:38:33', '6', '0', '2022-10-03 07:32:27', '2022-11-01 23:38:33'),
('21', 'Neque non dolor dolor labore voluptatem amet.', '2022-10-24 00:42:38', '6', '0', '2022-10-17 05:22:02', '2022-10-24 00:42:38'),
('22', 'Adipisci adipisci dolorem etincidunt ut sit sit.', '2022-11-01 09:31:18', '7', '1', '2022-09-30 20:38:49', '2022-11-01 09:31:18'),
('23', 'Quiquia magnam non sit dolor consectetur ut velit.', '2022-11-04 16:22:25', '2', '0', '2022-10-31 13:59:35', '2022-11-04 16:22:25'),
('24', 'Porro quaerat dolore quiquia magnam porro.', '2022-10-22 21:06:47', '6', '1', '2022-10-15 00:31:01', '2022-10-22 21:06:47'),
('25', 'Numquam neque velit dolor sed magnam amet labore.', '2022-10-20 05:41:11', '9', '1', '2022-10-17 07:24:26', '2022-10-20 05:41:11'),
('26', 'Porro sed quisquam non neque.', '2022-11-01 11:58:49', '6', '1', '2022-10-28 18:03:52', '2022-11-01 11:58:49'),
('27', 'Adipisci ut est porro aliquam numquam.', '2022-11-02 00:34:57', '8', '1', '2022-10-12 07:47:27', '2022-11-02 00:34:57'),
('28', 'Neque tempora aliquam porro non.', '2022-10-24 16:45:17', '6', '1', '2022-10-20 19:09:48', '2022-10-24 16:45:17'),
('29', 'Sit ipsum quaerat est non voluptatem aliquam eius.', '2022-10-31 08:06:18', '4', '0', '2022-10-05 20:23:53', '2022-10-31 08:06:18'),
('30', 'Dolore adipisci ipsum modi quaerat.', '2022-10-27 07:47:13', '1', '1', '2022-10-17 20:02:47', '2022-10-27 07:47:13'),
('31', 'Non ipsum labore quisquam dolorem etincidunt est.', '2022-10-05 23:58:36', '8', '1', '2022-09-28 05:45:51', '2022-10-05 23:58:36'),
('32', 'Ut porro dolore eius ipsum non quisquam.', '2022-10-18 09:41:37', '4', '0', '2022-10-01 20:40:45', '2022-10-18 09:41:37'),
('33', 'Sed porro etincidunt est porro.', '2022-11-03 23:19:35', '6', '1', '2022-10-25 03:55:58', '2022-11-03 23:19:35'),
('34', 'Sit dolorem numquam voluptatem non ipsum.', '2022-11-03 02:38:55', '5', '0', '2022-10-14 09:06:27', '2022-11-03 02:38:55'),
('35', 'Porro porro etincidunt est.', '2022-11-04 20:01:26', '1', '1', '2022-10-04 20:40:50', '2022-11-04 20:01:26'),
('36', 'Ipsum dolor quiquia sed dolore consectetur.', '2022-11-02 12:07:03', '1', '1', '2022-10-25 10:33:47', '2022-11-02 12:07:03'),
('37', 'Eius magnam etincidunt velit neque.', '2022-11-03 04:26:51', '3', '1', '2022-10-15 03:30:23', '2022-11-03 04:26:51'),
('38', 'Aliquam labore velit eius modi ut.', '2022-10-29 15:42:39', '5', '0', '2022-10-29 01:29:07', '2022-10-29 15:42:39'),
('39', 'Dolorem magnam quaerat eius numquam.', '2022-11-04 07:52:21', '10', '0', '2022-10-26 13:41:05', '2022-11-04 07:52:21'),
('40', 'Consectetur consectetur numquam eius sit.', '2022-10-25 16:13:18', '8', '0', '2022-10-14 00:15:01', '2022-10-25 16:13:18'),
('41', 'Quaerat sed velit dolor voluptatem dolor.', '2022-10-25 08:12:49', '4', '0', '2022-10-19 10:17:10', '2022-10-25 08:12:49'),
('42', 'Sit modi magnam quisquam etincidunt.', '2022-11-03 06:54:03', '1', '0', '2022-10-05 09:40:49', '2022-11-03 06:54:03'),
('43', 'Quaerat porro labore ipsum.', '2022-10-22 14:50:58', '7', '1', '2022-10-13 12:54:19', '2022-10-22 14:50:58'),
('44', 'Numquam quiquia labore ipsum magnam consectetur sed.', '2022-10-30 16:50:44', '5', '0', '2022-10-06 12:14:44', '2022-10-30 16:50:44'),
('45', 'Eius velit aliquam numquam amet quisquam consectetur.', '2022-10-14 13:20:07', '3', '0', '2022-10-05 01:03:24', '2022-10-14 13:20:07'),
('46', 'Porro porro quiquia amet.', '2022-10-31 19:41:46', '8', '0', '2022-10-20 20:06:42', '2022-10-31 19:41:46'),
('47', 'Velit adipisci porro est tempora.', '2022-11-04 15:53:09', '4', '0', '2022-10-28 10:53:04', '2022-11-04 15:53:09'),
('48', 'Ipsum dolore ipsum magnam amet dolore etincidunt quiquia.', '2022-10-07 14:30:14', '1', '0', '2022-09-26 08:54:19', '2022-10-07 14:30:14'),
('49', 'Adipisci labore sit magnam tempora quisquam consectetur modi.', '2022-10-19 03:06:14', '5', '0', '2022-10-13 12:06:28', '2022-10-19 03:06:14'),
('50', 'Dolore adipisci modi dolore sed est eius.', '2022-10-26 20:25:20', '3', '1', '2022-10-04 15:07:36', '2022-10-26 20:25:20');
UNLOCK TABLES;