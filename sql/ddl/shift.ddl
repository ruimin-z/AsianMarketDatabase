DROP TABLE IF EXISTS `market`.`shift`;
CREATE TABLE  `market`.`shift` (
                                   `employee_id` bigint unsigned NOT NULL,
                                   `store_id` smallint unsigned NOT NULL,
                                   `date` DATE NOT NULL,
                                   PRIMARY KEY  (`employee_id`,`store_id`, `date`),
                                   FOREIGN KEY (`employee_id`) REFERENCES employee(`id`),
                                   FOREIGN KEY (store_id) REFERENCES store(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- insert data
-- employee 1007, 1008, 1009 show up every day for the past 100 days
INSERT INTO `market`.`shift` (`employee_id`, `store_id`, `date`)
SELECT DISTINCT `employee_id`, `store_id`, `date`
FROM(
        SELECT
            CAST(FLOOR(RAND()*(1013-1001+1))+1001 AS UNSIGNED INT) AS `employee_id`,
            CAST(FLOOR(RAND()*(102-100+1))+100 AS UNSIGNED INT) AS `store_id`,
            DATE_SUB(CURRENT_DATE(), INTERVAL FLOOR(RAND()*(50)) DAY) AS `date`
        FROM
            `market`.`employee`
                JOIN `market`.`store`
        UNION ALL
        SELECT
            1008 AS `employee_id`,
            CAST(FLOOR(RAND()*(102-100+1))+100 AS UNSIGNED INT) AS `store_id`,
            DATE_SUB(CURRENT_DATE(), INTERVAL FLOOR(RAND()*(50)) DAY) AS `date`
        FROM
            `market`.`employee`
                JOIN `market`.`store`
        UNION ALL
        SELECT
            1007 AS `employee_id`,
            CAST(FLOOR(RAND()*(102-100+1))+100 AS UNSIGNED INT) AS `store_id`,
            DATE_SUB(CURRENT_DATE(), INTERVAL FLOOR(RAND()*(50)) DAY) AS `date`
        FROM
            `market`.`employee`
                JOIN `market`.`store`
        UNION ALL
        SELECT
            1009 AS `employee_id`,
            CAST(FLOOR(RAND()*(102-100+1))+100 AS UNSIGNED INT) AS `store_id`,
            DATE_SUB(CURRENT_DATE(), INTERVAL FLOOR(RAND()*(50)) DAY) AS `date`
        FROM
            `market`.`employee`
                JOIN `market`.`store`
    ) t;

