
DROP TABLE IF EXISTS `market`.`order`;
CREATE TABLE  `market`.`order` (
                                   `order_id` bigint unsigned NOT NULL auto_increment,
                                   `member_id` bigint unsigned NOT NULL,
                                   `store_id` smallint unsigned NOT NULL,
                                   `cashier_id` bigint unsigned NOT NULL,
                                   `payment_method` varchar(30) default NULL,
                                   `transaction_date` date default NULL,
                                   PRIMARY KEY  (`order_id`),
                                   FOREIGN KEY (`store_id`) REFERENCES `store` (`id`),
                                   FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
                                   FOREIGN KEY (`cashier_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `market`.`order` WRITE;
INSERT INTO `market`.`order` (`member_id`, `store_id`, `cashier_id`, `payment_method`, `transaction_date`) VALUES
    (1, 100, 1001, 'Credit Card', '2023-03-01'),
    (1, 100, 1001, 'Credit Card', '2022-01-01'),
    (1, 100, 1002, 'Cash', '2022-01-02'),
    (2, 101, 1002, 'Debit Card', '2023-03-12'),
    (2, 100, 1001, 'Cash', '2022-01-03'),
    (2, 101, 1003, 'Credit Card', '2022-01-04'),
    (3, 102, 1003, 'Cash', '2023-03-03'),
    (3, 101, 1002, 'Cash', '2022-01-06'),
    (4, 100, 1004, 'Credit Card', '2023-03-04'),
    (4, 102, 1001, 'Credit Card', '2022-01-07'),
    (5, 101, 1005, 'Debit Card', '2023-03-05'),
    (6, 102, 1002, 'Cash', '2022-01-09'),
    (6, 100, 1002, 'Credit Card', '2022-02-10'),
    (6, 100, 1003, 'Credit Card', '2023-02-12'),
    (6, 100, 1001, 'Debit Card', '2022-03-11'),
    (6, 100, 1002, 'Debit Card', '2023-03-11'),
    (6, 100, 1001, 'Debit Card', '2023-02-21'),
    (6, 100, 1003, 'Debit Card', '2023-02-11'),
    (6, 100, 1001, 'Debit Card', '2023-01-11'),
    (6, 102, 1002, 'Cash', '2022-04-09'),
    (6, 100, 1002, 'Credit Card', '2022-05-10'),
    (6, 100, 1003, 'Credit Card', '2022-09-11'),
    (6, 102, 1001, 'Cash', '2023-03-06'),
    (7, 100, 1002, 'Credit Card', '2023-03-07'),
    (8, 101, 1003, 'Debit Card', '2023-03-08'),
    (9, 102, 1004, 'Cash', '2023-03-09'),
    (10, 100, 1005, 'Credit Card', '2023-03-10'),
    (11, 101, 1001, 'Debit Card', '2023-03-11'),
    (12, 102, 1002, 'Cash', '2023-03-12'),
    (13, 100, 1003, 'Credit Card', '2023-03-13'),
    (14, 101, 1004, 'Debit Card', '2023-03-14'),
    (15, 102, 1005, 'Cash', '2023-03-15'),
    (16, 101, 1003, 'Cash', '2022-01-02'),
    (27, 101, 1004, 'Credit Card', '2022-01-13'),
    (28, 102, 1003, 'Cash', '2022-01-15'),
    (28, 100, 1002, 'Credit Card', '2022-01-16'),
    (30, 100, 1001, 'Debit Card', '2022-01-17'),
    (31, 101, 1004, 'Cash', '2022-01-18'),
    (37, 102, 1001, 'Debit Card', '2022-01-14'),
    (40, 101, 1003, 'Credit Card', '2022-01-19'),
    (11, 100, 1001, 'Credit Card', '2022-01-01'),
    (23, 100, 1002, 'Debit Card', '2022-01-02'),
    (39, 101, 1003, 'Cash', '2022-01-03'),
    (40, 101, 1004, 'Credit Card', '2022-01-04'),
    (25, 102, 1005, 'Debit Card', '2022-01-05'),
    (26, 102, 1001, 'Cash', '2022-01-06'),
    (37, 100, 1002, 'Credit Card', '2022-01-07'),
    (38, 101, 1003, 'Debit Card', '2022-01-08'),
    (39, 102, 1004, 'Cash', '2022-01-09'),
    (15, 100, 1005, 'Credit Card', '2022-01-10'),
    (19, 101, 1001, 'Debit Card', '2022-01-11'),
    (32, 102, 1002, 'Cash', '2022-01-12'),
    (32, 100, 1003, 'Credit Card', '2022-01-13'),
    (24, 101, 1004, 'Debit Card', '2022-01-14'),
    (15, 102, 1005, 'Cash', '2022-01-15'),
    (11, 101, 1005, 'Debit Card', '2022-01-11');
UNLOCK TABLES;
