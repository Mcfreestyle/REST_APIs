-- mysql Ver 14.14 Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost  Database: book_db

DROP DATABASE IF EXISTS book_db;

-- Create DATABASE
CREATE DATABASE book_db;

--
-- Create TABLES structure
--
USE book_db;

-- USERS
CREATE TABLE `users` (
  `id` INT AUTO_INCREMENT,
  `user_name` VARCHAR(80) NOT NULL,
  `password` VARCHAR(80) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE (`user_name`)
);

-- TODO_LISTS
CREATE TABLE `todo_lists` (
  `id` INT AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `user_id` INT NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);

-- TASKS
CREATE TABLE `tasks` (
  `id` INT AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `due_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `todo_list_id` INT NOT NULL,
  `status` BOOLEAN NOT NULL DEFAULT FALSE,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`todo_list_id`) REFERENCES `todo_lists` (`id`)
);
