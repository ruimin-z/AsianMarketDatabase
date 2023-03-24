
DROP TABLE IF EXISTS `market`.`product`;
CREATE TABLE  `market`.`product` (
                                    `product_id` bigint(20) unsigned NOT NULL auto_increment PRIMARY KEY,
                                    `product` varchar(30) NOT NULL,
                                    `supplier` varchar(30) default NULL,
                                    `price` decimal(13,2) NOT NULL,
                                    UNIQUE (product,supplier)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `market`.`product` WRITE;
INSERT INTO `market`.`product` (`product`, `supplier`, `price`) VALUES
    ('Rice', 'Farmer John', 19.99),
    ('Noodles', 'Asian Foods Inc.', 5.99),
    ('Tofu', 'Soybean Farms', 3.49),
    ('Bok Choy', 'Green Acres', 1.99),
    ('Ginger', 'Fresh Produce Co.', 2.99),
    ('Garlic', 'Fresh Produce Co.', 1.99),
    ('Soy Sauce', 'Kikkoman', 3.99),
    ('Fish Sauce', 'Thai Kitchen', 4.99),
    ('Oyster Sauce', 'Lee Kum Kee', 5.99),
    ('Chili Sauce', 'Huy Fong Foods', 2.99),
    ('Sesame Oil', 'La Tourangelle', 9.99),
    ('Coconut Milk', 'Chaokoh', 1.99),
    ('Curry Paste', 'Maesri', 2.99),
    ('Miso', 'Hikari Miso', 6.99),
    ('Rice Vinegar', 'Marukan', 3.99),
    ('Dried Shrimp', 'Ocean Prince', 7.99),
    ('Kimchi', 'Korean Foods Co.', 5.99),
    ('Sriracha Sauce', 'Asian Foods Co.', 3.99),
    ('Sake', 'Sake Brewery', 9.99),
    ('Panko Bread Crumbs', 'Bread Co.', 2.99),
    ('Dumpling Wrappers', 'Dumpling Master', 3.99),
    ('Hoisin Sauce', 'Asian Foods Co.', 4.99),
    ('Tamarind Paste', 'Thai Imports', 2.99),
    ('Sweet Chili Sauce', 'Asian Foods Co.', 3.99),
    ('Bamboo Shoots', 'Farmer John', 2.99),
    ('Water Chestnuts', 'Farmer John', 1.99),
    ('Coconut Milk', 'Thai Imports', 1.99),
    ('Shiitake Mushrooms', 'Mushroom Farm', 4.99),
    ('Ramen Noodles', 'Noodle Master', 1.99),
    ('Jasmine Rice', 'Thai Farms', 12.99),
    ('Basmati Rice', 'Indian Farms', 14.99),
    ('Soba Noodles', 'Hakubaku', 4.99),
    ('Dried Shiitake Mushrooms', 'Banyan Foods', 9.99),
    ('Dried Udon Noodles', 'Sun Noodle', 3.99),
    ('Green Tea', 'Ito En', 3.49),
    ('Rice Paper Wrappers', 'Three Ladies', 2.49),
    ('Red Bean Paste', 'Wangzhihe', 4.99),
    ('Panko Bread Crumbs', 'Kikkoman', 3.49),
    ('Sake', 'Gekkeikan', 8.99),
    ('Mirin', 'Kikkoman', 3.99),
    ('Rice Crackers', 'Kameda', 1.99),
    ('Black Vinegar', 'Kong Yen', 5.99),
    ('Dashi Stock Powder', 'Ajino Moto', 4.99),
    ('Lemongrass', 'Local Farm', 1.99),
    ('Gochujang', 'Haechandle', 5.99);
UNLOCK TABLES;
