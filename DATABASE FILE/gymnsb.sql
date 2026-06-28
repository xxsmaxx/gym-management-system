-- Clean Start (optional but recommended)
DROP DATABASE IF EXISTS gymnsb;
CREATE DATABASE gymnsb;
USE gymnsb;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- ========================
-- ADMIN TABLE
-- ========================
CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` VALUES
(2, 'admin', 'f2d0ff370380124029c2b807a924156c', 'admin');

-- ========================
-- ANNOUNCEMENTS
-- ========================
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(255) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- ATTENDANCE
-- ========================
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(100) NOT NULL,
  `curr_date` DATE NOT NULL,
  `curr_time` TIME NOT NULL,
  `present` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- EQUIPMENT
-- ========================
CREATE TABLE IF NOT EXISTS `equipment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `amount` INT NOT NULL,
  `quantity` INT NOT NULL,
  `vendor` VARCHAR(100) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `contact` VARCHAR(15) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- MEMBERS
-- ========================
CREATE TABLE IF NOT EXISTS `members` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(100) NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `gender` VARCHAR(20) NOT NULL,
  `dor` DATE NOT NULL,
  `services` VARCHAR(100) NOT NULL,
  `amount` INT NOT NULL,
  `paid_date` DATE NOT NULL,
  `p_year` INT NOT NULL,
  `plan` VARCHAR(50) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `contact` VARCHAR(15) NOT NULL,
  `status` VARCHAR(20) DEFAULT 'Active',
  `attendance_count` INT DEFAULT 0,
  `ini_weight` INT DEFAULT 0,
  `curr_weight` INT DEFAULT 0,
  `ini_bodytype` VARCHAR(50),
  `curr_bodytype` VARCHAR(50),
  `progress_date` DATE,
  `reminder` INT DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- RATES
-- ========================
CREATE TABLE IF NOT EXISTS `rates` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `charge` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- REMINDER
-- ========================
CREATE TABLE IF NOT EXISTS `reminder` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `message` TEXT NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  `date` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- STAFFS
-- ========================
CREATE TABLE IF NOT EXISTS `staffs` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `fullname` VARCHAR(100) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `designation` VARCHAR(50) NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `contact` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ========================
-- TODO
-- ========================
CREATE TABLE IF NOT EXISTS `todo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `task_status` VARCHAR(50) NOT NULL,
  `task_desc` VARCHAR(255) NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;