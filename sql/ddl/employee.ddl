--
-- Definition of table `market`.`employee`
--

DROP TABLE IF EXISTS `market`.`employee`;
CREATE TABLE  `market`.`employee` (
                                       `id` bigint(20) unsigned NOT NULL auto_increment,
                                       `name` varchar(30) NOT NULL default '',
                                       `position` char(30) default NULL,
                                       `email` varchar(30) default NULL,
                                       `phone` char(30) default NULL,
                                       `salary` decimal(13,2) default NULL,
                                       `DOB` date default NULL,
                                       PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `market`.`employee` AUTO_INCREMENT = 1001;


LOCK TABLES `market`.`employee` WRITE;
INSERT INTO `market`.`employee` (`name`, `position`, `email`, `phone`, `salary`, `DOB`) VALUES
    ('John Garcia', 'Cashier', 'john.garcia@gmail.com', '(541) 234-4533', 3000, '1990-01-01'),
    ('Sarah Park', 'Cashier', 'sarah.park@gmail.com', '(503) 654-0987', 2800, '1996-06-14'),
    ('Emily Chen', 'Cashier', 'emily.chen@gmail.com', '(503) 387-3456', 3000, '1992-12-01'),
    ('Amy Nguyen', 'Cashier', 'amy.nguyen@gmail.com', '(541) 555-3745', 3000, '1995-03-22'),
    ('Benjamin Kim', 'Cashier', 'benjamin.kim@gmail.com', '(503) 555-5678', 2800, '1997-11-10'),
    ('Sam Lee', 'Produce Clerk', 'sam.lee@outlook.com', '(503) 374-9012', 2800, '1995-09-15'),
    ('Alex Nguyen', 'Stocking Associate', 'alex.nguyen@gmail.com', '(503) 789-5379', 3000, '1998-12-25'),
    ('Maggie Kim', 'Butcher', 'maggie.kim@gmail.com', '(503) 178-9264', 3500, '1993-03-03'),
    ('David Chang', 'Deli Clerk', 'david.chang@gmail.com', '(541) 901-2345', 2800, '1994-07-20'),
    ('Jane Smith', 'Assistant Manager', 'jane.smith@gmail.com', '(541) 567-8901', 4000, '1985-05-10'),
    ('Ryan Patel', 'Assistant Manager', 'ryan.patel@gmail.com', '(541) 322-6754', 5000, '1988-08-08'),
    ('Karen Wong', 'Produce Manager', 'karen.wong@outlook.com', '(541) 234-1917', 6000, '1980-11-18'),
    ('James Kim', 'General Manager', 'james.kim@outlook.com', '(541) 324-6789', 8000, '1975-01-30');
UNLOCK TABLES;
