-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 06 日 21:36
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsf_d12_08`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `kadai07`
--

CREATE TABLE `kadai07` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `question` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `kadai07`
--

INSERT INTO `kadai07` (`id`, `name`, `question`, `deadline`, `created_at`, `updated_at`) VALUES
(1, '范', 'SQL練習の仕方', '2021-12-31', '2023-01-07 04:43:25', '2023-01-07 04:43:25'),
(2, '范', '部屋を暖かくする方法', '2021-12-31', '2023-01-07 05:26:01', '2023-01-07 05:26:01'),
(3, '范', '入力画面から完了！ボタンを押すとParamErrorと出てしまう。。', '2023-01-07', '2023-01-07 05:28:22', '2023-01-07 05:28:22'),
(4, '范', '美味しい蒸し牡蠣の食べ方', '2023-01-07', '2023-01-07 05:29:14', '2023-01-07 05:29:14'),
(5, '范', '乾燥から体を守る方法', '2023-01-07', '2023-01-07 05:30:38', '2023-01-07 05:30:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(11) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'php課題', '2022-12-25', '2022-12-30 22:46:01', '2022-12-30 22:46:01'),
(2, 'spl課題', '2022-12-25', '2022-12-30 22:47:12', '2022-12-30 22:47:12'),
(3, 'SQL練習その２', '2022-12-26', '2022-12-30 23:30:25', '2022-12-30 23:30:25'),
(4, 'SQL練習その３', '2022-12-26', '2022-12-30 23:30:41', '2022-12-30 23:30:41'),
(5, 'SQL練習その４', '2022-12-27', '2022-12-30 23:32:01', '2022-12-30 23:32:01'),
(6, '牡蠣', '2022-12-26', '2022-12-30 23:32:31', '2022-12-30 23:32:31'),
(7, 'トマト', '2022-12-27', '2022-12-30 23:32:50', '2022-12-30 23:32:50'),
(8, 'くしゃみ', '2022-12-26', '2022-12-30 23:33:15', '2022-12-30 23:33:15'),
(9, '歯磨き', '2022-12-26', '2022-12-30 23:33:36', '2022-12-30 23:33:36'),
(10, 'もくもく', '2022-12-26', '2022-12-30 23:33:58', '2022-12-30 23:33:58'),
(11, 'コーヒーを飲む', '2022-12-31', '2022-12-31 00:10:41', '2022-12-31 00:10:41'),
(12, 'にゃーん', '2022-12-31', '2022-12-31 00:37:34', '2022-12-31 00:37:34'),
(14, '課題やばい', '2023-01-05', '2023-01-05 22:43:32', '2023-01-05 22:43:32'),
(15, 'ウェイ', '2023-01-07', '2023-01-07 03:49:51', '2023-01-07 03:49:51'),
(16, 'aaa', '2023-01-07', '2023-01-07 05:10:53', '2023-01-07 05:10:53');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `kadai07`
--
ALTER TABLE `kadai07`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `kadai07`
--
ALTER TABLE `kadai07`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
