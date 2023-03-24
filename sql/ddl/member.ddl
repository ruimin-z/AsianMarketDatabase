
DROP TABLE IF EXISTS `market`.`member`;
CREATE TABLE  `market`.`member` (
                                   `id` bigint(20) unsigned NOT NULL auto_increment PRIMARY KEY,
                                   `name` varchar(30) NOT NULL,
                                   `phone` char(30) NOT NULL,
                                   `email` varchar(30) NOT NULL,
                                   `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `market`.`member` WRITE;
INSERT INTO `market`.`member` (name, phone, email, `date`) VALUES
    ('Adam Smith', '(503) 213-2413', 'adamsmith@gmail.com', '2021-01-15'),
    ('Karen Lee', '(206) 654-2466', 'karenlee@yahoo.com', '2020-06-23'),
    ('Miranda Johnson', '(425) 453-6383', 'mirandajohnson@hotmail.com', '2019-11-01'),
    ('David Chen', '(541) 131-3582', 'david.chen@gmail.com', '2022-02-18'),
    ('Sophie Kim', '(206) 463-9285', 'sophie.kim@yahoo.com', '2018-08-10'),
    ('Jackie Wong', '(503) 263-1505', 'jackie.wong@gmail.com', '2021-05-09'),
    ('Brian Nguyen', '(425) 643-6543', 'brian.nguyen@yahoo.com', '2019-02-12'),
    ('Amanda Lee', '(541) 645-7890', 'amanda.lee@gmail.com', '2020-09-27'),
    ('Jonathan Kim', '(206) 876-2442', 'jonathankim@yahoo.com', '2018-12-08'),
    ('Michelle Chen', '(503) 866-2109', 'michellechen@gmail.com', '2021-03-16'),
    ('Emily Park', '(425) 846-7584', 'emilypark@yahoo.com', '2022-01-02'),
    ('Kevin Nguyen', '(541) 777-1438', 'kevinnguyen@gmail.com', '2019-07-18'),
    ('Rachel Chen', '(206) 466-7890', 'rachelchen@yahoo.com', '2020-04-05'),
    ('Brandon Kim', '(503) 065-9087', 'brandonkim@gmail.com', '2021-09-12'),
    ('Melissa Lee', '(425) 436-4563', 'melissalee@gmail.com', '2023-01-01'),
    ('Ethan Brown', '(503) 132-2413', 'ethanb@gmail.com', '2022-04-15'),
    ('Olivia Davis', '(206) 412-2466', 'oliviad@yahoo.com', '2022-06-13'),
    ('Liam Hernandez', '(425) 234-6383', 'liam@hotmail.com', '2023-02-28'),
    ('Emma Thompson', '(541) 221-5438', 'emmath@gmail.com', '2019-02-18'),
    ('Noah Martinez', '(206) 423-9285', 'noahmartinez@yahoo.com', '2018-04-10'),
    ('Ava Rodriguez', '(503) 534-1505', 'avarod@gmail.com', '2020-05-10'),
    ('William Johnson', '(425) 533-1231', 'willjohn@yahoo.com', '2019-02-12'),
    ('James Garcia', '(541) 666-5435', 'james999@gmail.com', '2020-09-27'),
    ('Isabella Taylor', '(206) 646-2434', 'izzytaylor@yahoo.com', '2018-12-08'),
    ('Sophia Hernandez', '(503) 866-5455', 'sophia2002@gmail.com', '2021-03-16'),
    ('Mia Mitchell', '(425) 466-2432', 'miamit@yahoo.com', '2022-01-02'),
    ('Lucas Rodriguez', '(541) 642-5532', 'lucasrod@gmail.com', '2020-06-08'),
    ('Charlotte Nelson', '(206) 132-1322', 'charlotten@yahoo.com', '2021-04-15'),
    ('Alexander Davis', '(503) 534-4536', 'alexdavis@gmail.com', '2021-09-30'),
    ('Michael Jackson', '(425) 555-3443', 'mjackson@gmail.com', '2019-10-01'),
    ('Harper Wilson', '(425) 232-4563', 'harper11@gmail.com', '2021-01-21'),
    ('Amelia Clark', '(206) 300-3529', 'ameliaclark@gmail.com', '2022-06-11'),
    ('Daniel Thomas', '(503) 420-9485', 'danielthomas@yahoo.com', '2021-11-22'),
    ('Emily Lee', '(425) 122-2946', 'emilylee@gmail.com', '2020-09-18'),
    ('Matthew Cooper', '(541) 642-5532', 'matcooper@gmail.com', '2022-11-29'),
    ('Abigail Young', '(206) 132-1322', 'abyoung@yahoo.com', '2021-04-15'),
    ('Samuel Davis', '(503) 534-4536', 'samueldavis@gmail.com', '2021-02-06'),
    ('Victoria Perez', '(425) 555-3443', 'victoria1@gmail.com', '2019-03-10'),
    ('Mackenzie J', '(425) 113-9283', 'mackenziej@gmail.com', '2020-04-04'),
    ('David Gonzalez', '(425) 232-4563', 'dgonzalez@gmail.com', '2022-01-03');

UNLOCK TABLES;
