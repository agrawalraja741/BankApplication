CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int AUTO_INCREMENT  PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `updated_at` date DEFAULT NULL,
    `updated_by` varchar(20) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `accounts` (
  `customer_id` int NOT NULL,
   `account_number` int AUTO_INCREMENT  PRIMARY KEY,
  `account_type` varchar(100) NOT NULL,
  `branch_address` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
   `created_by` varchar(20) NOT NULL,
   `updated_at` date DEFAULT NULL,
    `updated_by` varchar(20) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `cards` (
    `card_id` int NOT NULL AUTO_INCREMENT,
    `mobile_number` varchar(15) NOT NULL,
    `card_number` varchar(100) NOT NULL,
    `card_type` varchar(100) NOT NULL,
    `total_limit` int NOT NULL,
    `amount_used` int NOT NULL,
    `available_amount` int NOT NULL,
    `created_at` date NOT NULL,
    `created_by` varchar(20) NOT NULL,
    `updated_at` date DEFAULT NULL,
    `updated_by` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`card_id`)
);

CREATE TABLE IF NOT EXISTS `loans` (
     `loan_id` int NOT NULL AUTO_INCREMENT,
     `mobile_number` varchar(15) NOT NULL,
     `loan_number` varchar(100) NOT NULL,
     `loan_type` varchar(100) NOT NULL,
     `total_loan` int NOT NULL,
     `amount_paid` int NOT NULL,
     `outstanding_amount` int NOT NULL,
     `created_at` date NOT NULL,
     `created_by` varchar(20) NOT NULL,
     `updated_at` date DEFAULT NULL,
     `updated_by` varchar(20) DEFAULT NULL,
     PRIMARY KEY (`loan_id`)
);