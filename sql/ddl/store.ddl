DROP TABLE IF EXISTS `market`.`store`;
CREATE TABLE  `market`.`store` (
                                    `id` smallint(6) unsigned NOT NULL auto_increment PRIMARY KEY,
                                    `name` varchar(30) NOT NULL,
                                    `address` varchar(50) NOT NULL,
                                    `phone` char(30) NOT NULL,
                                    `start_date` date default NULL,
                                    `manager_id` bigint unsigned default NULL,
                                    FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `market`.`store` AUTO_INCREMENT = 100;


LOCK TABLES `market`.`store` WRITE;
INSERT INTO market.store (name, address, phone, start_date, manager_id) VALUES
    ('Eugene Asian Market', '1234 Oak Street, Eugene, OR 97401', '(541) 555-1234', '2022-01-01', 1013),
    ('Sakura Market', '5678 Main Street, Eugene, OR 97403', '(541) 555-5678', '2021-05-15', 1013),
    ('Panda Market', '9101 River Road, Eugene, OR 97404', '(541) 555-9101', '2020-09-01', 1011);
UNLOCK TABLES;