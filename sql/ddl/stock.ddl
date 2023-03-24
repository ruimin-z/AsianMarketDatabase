DROP TABLE IF EXISTS `market`.`stock`;
CREATE TABLE  `market`.`stock` (
                                   `store_id` smallint unsigned NOT NULL,
                                   `product_id` bigint unsigned NOT NULL,
                                   `quantity` int default NULL,
                                   PRIMARY KEY (store_id, product_id),
                                   FOREIGN KEY (`store_id`) REFERENCES `store`(`id`),
                                   FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `market`.`store` READ, `market`.`stock` WRITE, `market`.`product` READ;

INSERT INTO `market`.`stock` (store_id, product_id, quantity)
SELECT `store`.`id` as store_id, `product`.product_id, FLOOR(RAND()*20) as quantity
FROM `market`.`store`
         CROSS JOIN `market`.`product`;

UNLOCK TABLES;
