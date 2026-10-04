-- TFA2 database export: POS System (CodeIgniter 4)
CREATE DATABASE IF NOT EXISTS pos_database
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE pos_database;

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS users;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  created_at DATETIME NOT NULL
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  full_name VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL
);

INSERT INTO customers (full_name, email, phone, created_at) VALUES
('Lebron James',   'lebron@gmail.com', '09171234567', NOW()),
('Kyrie Irving',   'kyrie@gmail.com',  '09181234567', NOW()),
('Novak Djokovic', 'novak@gmail.com',  '09191234567', NOW()),
('Craig Ongcoy',   'craig@gmail.com',  '09201234567', NOW()),
('Mark Lopez',     'mark@gmail.com',   '09211234567', NOW());

INSERT INTO users (username, full_name, created_at) VALUES
('matt',  'Matt Petras',  NOW()),
('james', 'James Smith',  NOW()),
('sarah', 'Sarah Cruz',   NOW()),
('david', 'David Santos', NOW()),
('anna',  'Anna Garcia',  NOW());
