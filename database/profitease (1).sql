-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 02:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profitease`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` enum('asset','expense','equity','liability','income') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `account_name`, `account_type`) VALUES
(20, 'cash and cash equivalent', 'asset'),
(21, 'Accounts Receivable', 'asset'),
(22, 'Allowance for Doubtful Accounts', 'asset'),
(23, 'Inventory', 'asset'),
(24, 'Prepaid Rent', 'asset'),
(25, 'Office Supplies', 'asset'),
(26, 'Sales Revenue', 'income'),
(27, 'Rent Expense', 'expense'),
(28, 'Utilities Expense', 'expense'),
(29, 'Accounts Payable', 'liability'),
(30, 'Salaries Payable', 'liability'),
(31, 'Interest Payable', 'liability'),
(32, 'Notes Payable', 'liability'),
(33, 'Bonds Payable', 'liability'),
(34, 'Loans Payable', 'liability'),
(35, 'Sales Revenue', ''),
(36, 'Service Revenue', ''),
(37, 'Rent Income', ''),
(38, 'Interest Income', ''),
(39, 'Interest Income', ''),
(40, 'Owner’s Capital', 'equity'),
(41, 'Retained Earnings', 'equity');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `content`, `created_at`) VALUES
(1, '1st table', '<table id=\"excelTable\">\r\n                    <thead>\r\n                        <tr>\r\n                            <th contenteditable=\"true\">Header 1</th>\r\n                            <th contenteditable=\"true\">Header 2</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td contenteditable=\"true\">Row 1, Col 1</td>\r\n                            <td contenteditable=\"true\">Row 1, Col 2</td>\r\n                        </tr>\r\n                    <tr><td contenteditable=\"true\">Row 2, Col 1</td><td contenteditable=\"true\">Row 2, Col 2</td></tr><tr><td contenteditable=\"true\">Row 3, Col 1</td><td contenteditable=\"true\">Row 3, Col 2</td></tr><tr><td contenteditable=\"true\">Row 4, Col 1</td><td contenteditable=\"true\">Row 4, Col 2</td></tr></tbody>\r\n                </table>', '2025-04-11 13:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `journalentries`
--

CREATE TABLE `journalentries` (
  `entry_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `debit_amount` decimal(10,2) DEFAULT NULL,
  `credit_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journalentries`
--

INSERT INTO `journalentries` (`entry_id`, `transaction_id`, `account_id`, `debit_amount`, `credit_amount`) VALUES
(32, 26, 26, 0.00, 5000.00),
(33, 26, 27, 1200.00, 0.00),
(34, 27, 28, 300.00, 0.00),
(35, 27, 21, 0.00, 0.00),
(36, 28, 23, 100.00, 0.00),
(37, 29, 21, 100.00, 0.00),
(38, 30, 25, 150.00, 0.00),
(39, 31, 21, 0.00, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_date`, `description`) VALUES
(26, '2025-04-30', 'Sales'),
(27, '2025-04-30', 'Utilities'),
(28, '2025-04-17', ''),
(29, '2025-04-17', ''),
(30, '2025-04-16', ''),
(31, '2025-04-16', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password_hash`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$O.jgaUxwAxMRniB1zDgDc.tczVqcXqRkX/oEMqAEslrwoMBpHQhZ6', NULL),
(2, 'system', 'system@test.exp', '$2y$10$kdkVh8hfY4cydQTgyqJ1Ye3xemc.Y8Bx949EpMLhPoWMXiZjnzUKi', NULL),
(3, 'jian', 'jian@test.exp', '$2y$10$ka7XmNM9Yz5sJQrcemPpDOE5bxndFVfnzeybvBpkrdqCHap8M4f4q', NULL),
(4, 'admin', 'admin@gmail.com', '$2y$10$dydUvM7rYqXCzzFdDUT1tO5zfXCOY/8./71uNVG8Jy33BDvRA4XVa', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journalentries`
--
ALTER TABLE `journalentries`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `journalentries`
--
ALTER TABLE `journalentries`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
