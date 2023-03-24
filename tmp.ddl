
--
-- Definition of table `stores7`.`catalog`
--

DROP TABLE IF EXISTS `stores7`.`catalog`;
CREATE TABLE  `stores7`.`catalog` (
                                      `catalog_num` bigint(20) unsigned NOT NULL auto_increment,
                                      `stock_num` smallint(6) NOT NULL,
                                      `manu_code` char(3) NOT NULL,
                                      `cat_descr` text,
                                      `cat_picture` tinyint(4) default NULL,
                                      `cat_advert` varchar(255) default NULL,
                                      PRIMARY KEY  (`catalog_num`),
                                      UNIQUE KEY `catalog_num` (`catalog_num`),
                                      KEY `FK_catalog_1` (`stock_num`,`manu_code`),
                                      CONSTRAINT `FK_catalog_1` FOREIGN KEY (`stock_num`, `manu_code`) REFERENCES `stock` (`stock_num`, `manu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`catalog`
--

/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
LOCK TABLES `catalog` WRITE;
INSERT INTO `stores7`.`catalog` VALUES  (10001,1,'HRO','Brown leather. Specify first baseman\'s or infield/outfield style.  Specify right- or left-handed.',NULL,'Your First Season\'s Baseball Glove'),
                                        (10002,1,'HSK','Babe Ruth signature glove. Black leather. Infield/outfield style. Specify right- or left-handed.',NULL,'All Leather, Hand Stitched, Deep Pockets, Sturdy Webbing That Won\'t Let Go'),
 (10003,1,'SMT','Catcher\'s mitt. Brown leather. Specify right- or left-handed.',NULL,'A Sturdy Catcher\'s Mitt With the Perfect Pocket'),
 (10004,2,'HRO','Jackie Robinson signature ball. Highest professional quality, used by National League.',NULL,'Highest Quality Ball Available, from the Hand-Stitching to the Robinson Signature'),
 (10005,3,'HSK','Pro-style wood. Available in sizes: 31, 32, 33, 34, 35.',NULL,'High-Technology Design Expands the Sweet Spot'),
 (10006,3,'SHM','Aluminum. Blue with black tape. 31\", 20 oz or 22 oz; 32\", 21 oz or 23 oz; 33\", 22 oz or 24 oz;',NULL,'Durable Aluminum for High School and Collegiate Athletes'),
 (10007,4,'HSK','Norm Van Brocklin signature style.',NULL,'Quality Pigskin with Norm Van Brocklin Signature'),
                                         (10008,4,'HRO','NFL Style pigskin.',NULL,'Highest Quality Football for High School and Collegiate Competitions'),
                                         (10009,5,'NRG','Graphite frame. Synthetic strings.',NULL,'Wide Body Amplifies Your Natural Abilities by Providing More Power Through Aerodynamic Design'),
                                         (10010,5,'SMT','Aluminum frame. Synthetic strings.',NULL,'Mid-Sized Racquet for the Improving Player'),
                                         (10011,5,'ANZ','Wood frame, cat-gut strings.',NULL,'Antique Replica of Classic Wooden Racquet Built with Cat-Gut Strings'),
                                         (10012,6,'SMT','Soft yellow color for easy visibility in sunlight or artificial light.',NULL,'High-Visibility Tennis, Day or Night'),
                                         (10013,6,'ANZ','Pro-core. Available in neon yellow, green, and pink.',NULL,'Durable Construction Coupled with the Brightest Colors Available'),
                                         (10014,7,'HRO','Indoor. Classic NBA style. Brown leather.',NULL,'Long-Life Basketballs for Indoor Gymnasiums'),
                                         (10015,8,'ANZ','Indoor. Finest leather. Professional quality.',NULL,'Professional Volleyballs for Indoor Competitions'),
                                         (10016,9,'ANZ','Steel eyelets. Nylon cording. Double-stitched. Sanctioned by the National Athletic Congress',NULL,'Sanctioned Volleyball Netting for Indoor Professional and Collegiate Competition'),
                                         (10017,101,'PRC','Reinforced, hand-finished tubular. Polyurethane belted.  Effective against punctures. Mixed tread for super wear and road grip.',NULL,'Ultimate in Puncture Protection, Tires Designed for In-City Riding'),
                                         (10018,101,'SHM','Durable nylon casing with butyl tube for superior air retention.  Center-ribbed tread with herringbone side. Coated sidewalls resist abrasion.',NULL,'The Perfect Tire for Club Rides or Training'),
                                         (10019,102,'SHM','Thrust bearing and coated pivot washer/spring sleeve for smooth action. Slotted levers with soft gum hoods. Two-tone paint treatment. Set includes calipers, levers, and cables.',NULL,'Thrust-Bearing and Spring-Sleeve Brake Set Guarantees Smooth Action'),
                                         (10020,102,'PRC','Computer-aided design with low-profile pads. Cold-forged alloy calipers and beefy caliper bushing. Aero levers. Set includes calipers, levers, and cables.',NULL,'Computer Design Delivers Rigid Yet Vibration-Free Brakes'),
                                         (10021,103,'PRC','Compact leading-action design enhances shifting. Deep cage for super-small granny gears. Extra strong construction to resist off-road abuse.',NULL,'Climb Any Mountain: ProCycle\'s Front Derailleur Adds Finesse to Your ATB'),
 (10022,104,'PRC','Floating trapezoid geometry with extra thick parallelogram arms. 100-tooth capacity. Optimum alignment with any Freewheel.',NULL,'Computer-Aided Design Engineers 100-Tooth Capacity into ProCycle\'s Rear Derailleur'),
                                         (10023,105,'PRC','Front wheels laced with 15 g spokes in a 3 cross pattern. Rear wheels laced with 14 g spikes in a 3-cross pattern.',NULL,'Durable Training Wheels That Hold True Under Toughest Conditions'),
                                         (10024,105,'SHM','Polished alloy. Sealed-bearing, quick-release hubs. Double-butted. Front wheels are laced 15 g/2-cross. Rear wheels are laced 15 g/3-cross.',NULL,'Extra Lightweight Wheels for Training or High-Performance Touring'),
                                         (10025,106,'PRC','Hard anodized alloy with pearl finish. 6 mm hex bolt hardware. Available in lengths of 90-140 mm in 10 mm increments.',NULL,'ProCycle Stem with Pearl Finish'),
                                         (10026,107,'PRC','Available in three styles: Men\'s racing; Men\'s touring; and Women\'s. Anatomical gel construction with lycra cover. Black or black/hot pink.',NULL,'The Ultimate in Riding Comfort, Lightweight with Anatomical Support'),
 (10027,108,'SHM','Double or triple crankset with choice of chainrings. For double crankset, chainrings from 38-54 teeth. For triple crankset, chainrings from 24-48 teeth.',NULL,'Customize Your Mountain Bike With Extra-Durable Crankset'),
 (10028,109,'PRC','Steel toe clips with nylon strap. Extra wide at buckle to reduce pressure.',NULL,'Classic Toeclip Improved to Prevent Soreness at Clip Buckle'),
 (10029,109,'SHM','Ingenious new design combines button on sole of shoe with slot on a pedal plate to give riders new options in riding efficiency. Choose full or partial locking. Four plates mean both top and bottom of pedals are slotted -- no fishing around when you want to engage full power. Fast unlocking ensures safety when maneuverability is paramount.',NULL,'Ingenious Pedal/Clip Design Delivers Maximum Power and Fast Unlocking'),
 (10030,110,'PRC','Super-lightweight. Meets both ANSI and Snell standards for impact protection. 7.5 oz. Quick-release shadow buckle.',NULL,'Feather-Light, Quick-Release, Maximum Protection Helmet'),
 (10031,110,'ANZ','No buckle so no plastic touches your chin. Meets both ANSI and Snell standards for impact protection. 7.5 oz. Lycra cover.',NULL,'Minimum Chin Contact, Feather-Light, Maximum Protection Helmet'),
 (10032,110,'SHM','Dense outer layer combines with softer inner layer to eliminate the mesh cover, no snagging on brush. Meets both ANSI and Snell standards for impact protection. 8.0 oz.',NULL,'Mountain Bike Helmet: Smooth Cover Eliminates the Worry of Brush Snags but Delivers Maximum Protection'),
 (10033,110,'HRO','Newest ultralight helmet uses plastic shell. Largest ventilation channels of any helmet on the market. 8.5 oz.',NULL,'Lightweight Plastic with Vents Assures Cool Comfort Without Sacrificing Protection'),
 (10034,110,'HSK','Aerodynamic (teardrop) helmet covered with anti-drag fabric. Credited with shaving 2 seconds/mile from winner\'s time in Tour de France time trial. 7.5 oz.',NULL,'Teardrop Design Used by Yellow Jerseys; You Can Time the Difference'),
 (10035,111,'SHM','Light-action shifting 10 speed. Designed for the city commuter with shock-absorbing front fork and drilled eyelets for carry-all racks or bicycle trailers. Internal wiring for generator lights. 33 lbs.',NULL,'Fully Equipped Bicycle Designed for the Serious Commuter Who Mixes Business with Pleasure'),
 (10036,112,'SHM','Created for the beginner enthusiast. Ideal for club rides and light touring. Sophisticated triple-butted frame construction. Precise index shifting. 28 lbs.',NULL,'We Selected the Ideal Combination of Touring Bike Equipment, Then Turned It into This Package Deal: High Performance on the Roads, Maximum Pleasure Everywhere'),
 (10037,113,'SHM','Ultra-lightweight. Racing frame geometry built for aerodynamic handlebars. Cantilever brakes. Index shifting. High-performance gearing. Quick-release hubs. Disk wheels. Bladed spokes.',NULL,'Designed for the Serious Competitor, the Complete Racing Machine'),
 (10038,114,'PRC','Padded leather palm and stretch mesh merged with terry back; available in tan, black, and cream. Sizes S, M, L, XL.',NULL,'Riding Gloves for Comfort and Protection'),
 (10039,201,'NKL','Designed for comfort and stability. Available in white & blue or white & brown. Specify size.',NULL,'Full-Comfort, Long-Wearing Golf Shoes for Men and Women'),
 (10040,201,'ANZ','Guaranteed waterproof. Full leather upper. Available in white, bone, brown, green, and blue. Specify size.',NULL,'Waterproof Protection Ensures Maximum Comfort and Durability in All Climates'),
 (10041,201,'KAR','Leather and leather mesh for maximum ventilation. Waterproof lining to keep feet dry. Available in white & gray or white & ivory.  Specify size.',NULL,'Karsten\'s Top Quality Shoe Combines Leather and Leather Mesh'),
 (10042,202,'NKL','Complete starter set utilizes gold shafts. Balanced for power.',NULL,'Starter Set of Woods, Ideal for High School and Collegiate Classes'),
 (10043,202,'KAR','Full set of woods designed for precision control and power performance.',NULL,'High-Quality Woods Appropriate for High School Competitions or Serious Amateurs'),
 (10044,203,'NKL','Set of eight irons includes 3 through 9 irons and pitching wedge. Originally priced at $489.00.',NULL,'Set of Irons Available from Factory at Tremendous Savings: Discontinued Line.'),
 (10045,204,'KAR','Ideally balanced for optimum control. Nylon-covered shaft.',NULL,'High-Quality Beginning Set of Irons Appropriate for High School Competitions'),
 (10046,205,'NKL','Fluorescent yellow.',NULL,'Long Drive Golf Balls: Fluorescent Yellow'),
 (10047,205,'ANZ','White only.',NULL,'Long Drive Golf Balls: White'),
 (10048,205,'HRO','Combination fluorescent yellow and standard white.',NULL,'HiFlier Golf Balls: Case Includes Fluorescent Yellow and Standard White'),
 (10049,301,'NKL','Super shock-absorbing gel pads disperse vertical energy into a horizontal plane for extraordinary cushioned comfort. Great motion control. Mens only. Specify size.',NULL,'Maximum Protection For High-Mileage Runners'),
 (10050,301,'HRO','Engineered for serious training with exceptional stability. Fabulous shock absorption. Great durability. Specify men\'s/women\'s, size.',NULL,'Pronators and Supinators Take Heart: A Serious Training Shoe For Runners Who Need Motion Control'),
 (10051,301,'SHM','For runners who log heavy miles and need a durable, supportive, stable platform. Mesh/synthetic upper gives excellent moisture dissipation. Stability system uses rear antipronation platform and forefoot control plate for extended protection during high-intensity training. Specify mens/womens, size.',NULL,'The Training Shoe Engineered for Marathoners and Ultra-Distance Runners'),
 (10052,301,'PRC','Supportive, stable racing flat. Plenty of forefoot cushioning with added motion control. Women\'s only. D widths available.  Specify size.',NULL,'A Woman\'s Racing Flat That Combines Extra Forefoot Protection with a Slender Heel'),
 (10053,301,'KAR','Anatomical last holds your foot firmly in place. Feather-weight cushioning delivers the responsiveness of a racing flat. Specify men\'s/women\'s, size.',NULL,'Durable Training Flat That Can Carry You Through Marathon Miles'),
 (10054,301,'ANZ','Cantilever sole provides shock absorption and energy rebound. Positive traction shoe with ample toe box. Ideal for runners who need a wide shoe. Available in men\'s and women\'s. Specify size.',NULL,'Motion Control, Protection, and Extra Toebox Room'),
 (10055,302,'KAR','Re-usable ice pack with velcro strap. For general use. Velcro strap allows easy application to arms or legs.',NULL,'Finally, an Ice Pack for Achilles Injuries and Shin Splints That You Can Take to the Office'),
 (10056,303,'PRC','Neon nylon. Perfect for running or aerobics. Indicate color: Fluorescent pink, yellow, green, and orange.',NULL,'Knock Their Socks off with YOUR Socks!'),
 (10057,303,'KAR','100% nylon blend for optimal wicking and comfort. We\'ve taken out the cotton to eliminate the risk of blisters and reduce the opportunity for infection. Specify men\'s or women\'s.',NULL,'100% Nylon Blend Socks - No Cotton!'),
 (10058,304,'ANZ','Provides time, date, dual display of lap/cumulative splits, 4-lap memory, 10 hr count-down timer, event timer, alarm, hour chime, waterproof to 50 m, velcro band.',NULL,'Athletic Watch w/4-Lap Memory'),
 (10059,304,'HRO','Split timer, waterproof to 50 m. Indicate color: hot pink, mint green, space black.',NULL,'Waterproof Triathlete Watch in Competition Colors'),
 (10060,305,'HRO','Contains ace bandage, anti-bacterial cream, alcohol cleansing pads, adhesive bandages of assorted sizes, and instant-cold pack.',NULL,'Comprehensive First-Aid Kit Essential for Team Practices, Team Traveling'),
 (10061,306,'PRC','Converts a standard tandem bike into an adult/child bike. User-tested assembly instructions',NULL,'Enjoy Bicycling with Your Child on a Tandem; Make Your Family Outing Safer'),
 (10062,306,'SHM','Converts a standard tandem bike into an adult/child bike.  Lightweight model.',NULL,'Consider a Touring Vacation For the Entire Family: A Lightweight, Touring Tandem for Parent and Child'),
 (10063,307,'PRC','Allows mom or dad to take the baby out, too. Fits children up to 21 pounds. Navy blue with black trim.',NULL,'Infant Jogger Keeps a Running Family Together'),
 (10064,308,'PRC','Allows mom or dad to take both children! Rated for children up to 18 pounds.',NULL,'As Your Family Grows, Infant Jogger Grows with You'),
 (10065,309,'HRO','Prevents swimmer\'s ear.',NULL,'Swimmers Can Prevent Ear Infection All Season Long'),
 (10066,309,'SHM','Extra-gentle formula. Can be used every day for prevention or treatment of swimmer\'s ear.',NULL,'Swimmer\'s Ear Drops Specially Formulated for Children'),
 (10067,310,'SHM','Blue heavy-duty foam board with Shimara or team logo.',NULL,'Exceptionally Durable, Compact Kickboard for Team Practice'),
 (10068,310,'ANZ','White. Standard size.',NULL,'High-Quality Kickboard'),
 (10069,311,'SHM','Swim gloves. Webbing between fingers promotes strengthening of arms. Cannot be used in competition.',NULL,'Hot Training Tool - Webbed Swim Gloves Build Arm Strength and Endurance'),
 (10070,312,'SHM','Hydrodynamic egg-shaped lens. Ground-in anti-fog elements; available in blue or smoke.',NULL,'Anti-Fog Swimmer\'s Goggles: Quantity Discount.'),
 (10071,312,'HRO','Durable competition-style goggles. Available in blue, grey, or white.',NULL,'Swim Goggles: Traditional Rounded Lens for Greater Comfort.'),
 (10072,313,'SHM','Silicone swim cap. One size. Available in white, silver, or navy. Team logo imprinting available',NULL,'Team Logo Silicone Swim Cap'),
 (10073,313,'ANZ','Silicone swim cap. Squared-off top. One size. White.',NULL,'Durable Squared-off Silicone Swim Cap'),
 (10074,302,'HRO','Re-usable ice pack. Store in the freezer for instant first-aid. Extra capacity to accommodate water and ice.',NULL,'Water Compartment Combines with Ice to Provide Optimal Orthopedic Treatment');
UNLOCK TABLES;
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;


--
-- Definition of table `stores7`.`cust_calls`
--

DROP TABLE IF EXISTS `stores7`.`cust_calls`;
CREATE TABLE  `stores7`.`cust_calls` (
  `customer_num` bigint(20) unsigned NOT NULL default '0',
  `call_dtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_id` char(32) default 'USER',
  `call_code` char(1) default NULL,
  `call_descr` char(240) default NULL,
  `res_dtime` datetime default NULL,
  `res_descr` char(240) default NULL,
  PRIMARY KEY  (`customer_num`,`call_dtime`),
  KEY `FK_cust_calls_1` (`call_code`),
  CONSTRAINT `FK_cust_calls_2` FOREIGN KEY (`customer_num`) REFERENCES `customer` (`customer_num`),
  CONSTRAINT `FK_cust_calls_1` FOREIGN KEY (`call_code`) REFERENCES `call_type` (`call_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`cust_calls`
--

/*!40000 ALTER TABLE `cust_calls` DISABLE KEYS */;
LOCK TABLES `cust_calls` WRITE;
INSERT INTO `stores7`.`cust_calls` VALUES  (106,'1998-06-12 08:20:00','maryj','D','Order was received, but two OF the cans OF ANZ tennis balls within the CASE were empty','1998-06-12 08:25:00','Authorized credit FOR two cans TO customer, issued apology. Called ANZ buyer TO report the QA problem.'),
 (110,'1998-07-07 10:24:00','richc','L','Order placed one MONTH ago (6/7) NOT received.','1998-07-07 10:30:00','Checked WITH shipping (Ed Smith). Order sent yesterday- we were waiting FOR goods FROM ANZ. NEXT TIME will call WITH delay if necessary.'),
 (116,'1997-11-28 13:34:00','mannyn','I','Received plain white swim caps (313 ANZ) instead OF navy WITH team logo (313 SHM)','1997-11-28 16:47:00','Shipping FOUND correct CASE IN warehouse AND express mailed it IN TIME FOR swim meet.'),
 (116,'1997-12-21 11:24:00','mannyn','I','SECOND complaint FROM this customer! Received two cases RIGHT-handed outfielder gloves (1 HRO) instead OF one CASE lefties.','1997-12-27 08:19:00','Memo TO shipping (Ava Brown) TO send CASE OF LEFT-handed gloves, pick up wrong CASE; memo TO billing requesting 5% discount TO placate customer due TO SECOND offense AND lateness OF resolution because OF holiday'),
 (119,'1998-07-01 15:00:00','richc','B','Bill does NOT reflect credit FROM previous order','1998-07-02 08:21:00','Spoke WITH Jane Akant IN Finance. She FOUND the error AND IS sending new bill TO customer'),
 (121,'1998-07-10 14:05:00','maryj','O','Customer likes our merchandise. Requests that we stock MORE types OF infant joggers. Will call back TO place order.','1998-07-10 14:06:00','Sent note TO marketing GROUP OF interest IN infant joggers'),
 (127,'1998-07-31 14:30:00','maryj','I','Received Hero watches (item # 304) instead of ANZ watches',NULL,'Sent memo to shipping to send ANZ item 304 to customer and pickup HRO watches. Should be done tomorrow, 8/1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `cust_calls` ENABLE KEYS */;


--
-- Definition of table `stores7`.`customer`
--

DROP TABLE IF EXISTS `stores7`.`customer`;
CREATE TABLE  `stores7`.`customer` (
  `customer_num` bigint(20) unsigned NOT NULL auto_increment,
  `fname` char(15) default NULL,
  `lname` char(15) default NULL,
  `company` char(20) default NULL,
  `address1` char(20) default NULL,
  `address2` char(20) default NULL,
  `city` char(15) default NULL,
  `state` char(2) default NULL,
  `zipcode` char(5) default NULL,
  `phone` char(18) default NULL,
  PRIMARY KEY  (`customer_num`),
  UNIQUE KEY `customer_num` (`customer_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
LOCK TABLES `customer` WRITE;
INSERT INTO `stores7`.`customer` VALUES  (101,'Ludwig','Pauli','All Sports Supplies','213 Erstwild Court',NULL,'Sunnyvale','CA','94086','408-789-8075'),
 (102,'Carole','Sadler','Sports Spot','785 Geary St',NULL,'San Francisco','CA','94117','415-822-1289'),
 (103,'Philip','Currie','Phil\'s Sports','654 Poplar','P. O. Box 3498','Palo Alto','CA','94303','415-328-4543'),
 (104,'Anthony','Higgins','Play Ball!','East Shopping Cntr.','422 Bay Road','Redwood City','CA','94026','415-368-1100'),
 (105,'Raymond','Vector','Los Altos Sports','1899 La Loma Drive',NULL,'Los Altos','CA','94022','415-776-3249'),
 (106,'George','Watson','Watson & Son','1143 Carver Place',NULL,'Mountain View','CA','94063','415-389-8789'),
 (107,'Charles','Ream','Athletic Supplies','41 Jordan Avenue',NULL,'Palo Alto','CA','94304','415-356-9876'),
 (108,'Donald','Quinn','Quinn\'s Sports','587 Alvarado',NULL,'Redwood City','CA','94063','415-544-8729'),
 (109,'Jane','Miller','Sport Stuff','Mayfair Mart','7345 Ross Blvd.','Sunnyvale','CA','94086','408-723-8789'),
 (110,'Roy','Jaeger','AA Athletics','520 Topaz Way',NULL,'Redwood City','CA','94062','415-743-3611'),
 (111,'Frances','Keyes','Sports Center','3199 Sterling Court',NULL,'Sunnyvale','CA','94085','408-277-7245'),
 (112,'Margaret','Lawson','Runners & Others','234 Wyandotte Way',NULL,'Los Altos','CA','94022','415-887-7235'),
 (113,'Lana','Beatty','Sportstown','654 Oak Grove',NULL,'Menlo Park','CA','94025','415-356-9982'),
 (114,'Frank','Albertson','Sporting Place','947 Waverly Place',NULL,'Redwood City','CA','94062','415-886-6677'),
 (115,'Alfred','Grant','Gold Medal Sports','776 Gary Avenue',NULL,'Menlo Park','CA','94025','415-356-1123'),
 (116,'Jean','Parmelee','Olympic City','1104 Spinosa Drive',NULL,'Mountain View','CA','94040','415-534-8822'),
 (117,'Arnold','Sipes','Kids Korner','850 Lytton Court',NULL,'Redwood City','CA','94063','415-245-4578'),
 (118,'Dick','Baxter','Blue Ribbon Sports','5427 College',NULL,'Oakland','CA','94609','415-655-0011'),
 (119,'Bob','Shorter','The Triathletes Club','2405 Kings Highway',NULL,'Cherry Hill','NJ','08002','609-663-6079'),
 (120,'Fred','Jewell','Century Pro Shop','6627 N. 17th Way',NULL,'Phoenix','AZ','85016','602-265-8754'),
 (121,'Jason','Wallack','City Sports','Lake Biltmore Mall','350 W. 23rd Street','Wilmington','DE','19898','302-366-7511'),
 (122,'Cathy','O\'Brian','The Sporting Life','543 Nassau Street',NULL,'Princeton','NJ','08540','609-342-0054'),
 (123,'Marvin','Hanlon','Bay Sports','10100 Bay Meadows Ro','Suite 1020','Jacksonville','FL','32256','904-823-4239'),
 (124,'Chris','Putnum','Putnum\'s Putters','4715 S.E. Adams Blvd','Suite 909C','Bartlesville','OK','74006','918-355-2074'),
 (125,'James','Henry','Total Fitness Sports','1450 Commonwealth Av',NULL,'Brighton','MA','02135','617-232-4159'),
 (126,'Eileen','Neelie','Neelie\'s Discount Sp','2539 South Utica Str',NULL,'Denver','CO','80219','303-936-7731'),
 (127,'Kim','Satifer','Big Blue Bike Shop','Blue Island Square','12222 Gregory Street','Blue Island','NY','60406','312-944-5691'),
 (128,'Frank','Lessor','Phoenix University','Athletic Department','1817 N. Thomas Road','Phoenix','AZ','85008','602-533-1817');
UNLOCK TABLES;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `stores7`.`items`
--

DROP TABLE IF EXISTS `stores7`.`items`;
CREATE TABLE  `stores7`.`items` (
                                    `item_num` smallint(6) NOT NULL default '0',
                                    `order_num` bigint(20) unsigned NOT NULL default '0',
                                    `stock_num` smallint(6) NOT NULL,
                                    `manu_code` char(3) NOT NULL,
                                    `quantity` smallint(6) default NULL,
                                    `total_price` decimal(8,2) default NULL,
                                    PRIMARY KEY  (`item_num`,`order_num`),
                                    KEY `FK_items_1` (`stock_num`,`manu_code`),
                                    KEY `FK_items_2` (`order_num`),
                                    CONSTRAINT `FK_items_2` FOREIGN KEY (`order_num`) REFERENCES `orders` (`order_num`),
                                    CONSTRAINT `FK_items_1` FOREIGN KEY (`stock_num`, `manu_code`) REFERENCES `stock` (`stock_num`, `manu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
LOCK TABLES `items` WRITE;
INSERT INTO `stores7`.`items` VALUES  (1,1001,1,'HRO',1,'250.00'),
                                      (1,1002,4,'HSK',1,'960.00'),
                                      (1,1003,9,'ANZ',1,'20.00'),
                                      (1,1004,1,'HRO',1,'250.00'),
                                      (1,1005,5,'NRG',10,'280.00'),
                                      (1,1006,5,'SMT',5,'125.00'),
                                      (1,1007,1,'HRO',1,'250.00'),
                                      (1,1008,8,'ANZ',1,'840.00'),
                                      (1,1009,1,'SMT',1,'450.00'),
                                      (1,1010,6,'SMT',1,'36.00'),
                                      (1,1011,5,'ANZ',5,'99.00'),
                                      (1,1012,8,'ANZ',1,'840.00'),
                                      (1,1013,5,'ANZ',1,'19.80'),
                                      (1,1014,4,'HSK',1,'960.00'),
                                      (1,1015,1,'SMT',1,'450.00'),
                                      (1,1016,101,'SHM',2,'136.00'),
                                      (1,1017,201,'NKL',4,'150.00'),
                                      (1,1018,307,'PRC',2,'500.00'),
                                      (1,1019,111,'SHM',3,'1499.97'),
                                      (1,1020,204,'KAR',2,'90.00'),
                                      (1,1021,201,'NKL',2,'75.00'),
                                      (1,1022,309,'HRO',1,'40.00'),
                                      (1,1023,103,'PRC',2,'40.00'),
                                      (2,1002,3,'HSK',1,'240.00'),
                                      (2,1003,8,'ANZ',1,'840.00'),
                                      (2,1004,2,'HRO',1,'126.00'),
                                      (2,1005,5,'ANZ',10,'198.00'),
                                      (2,1006,5,'NRG',5,'140.00'),
                                      (2,1007,2,'HRO',1,'126.00'),
                                      (2,1008,9,'ANZ',5,'100.00'),
                                      (2,1010,6,'ANZ',1,'48.00'),
                                      (2,1012,9,'ANZ',10,'200.00'),
                                      (2,1013,6,'SMT',1,'36.00'),
                                      (2,1014,4,'HRO',1,'480.00'),
                                      (2,1016,109,'PRC',3,'90.00'),
                                      (2,1017,202,'KAR',1,'230.00'),
                                      (2,1018,302,'KAR',3,'15.00'),
                                      (2,1020,301,'KAR',4,'348.00'),
                                      (2,1021,201,'ANZ',3,'225.00'),
                                      (2,1022,303,'PRC',2,'96.00'),
                                      (2,1023,104,'PRC',2,'116.00'),
                                      (3,1003,5,'ANZ',5,'99.00'),
                                      (3,1004,3,'HSK',1,'240.00'),
                                      (3,1005,6,'SMT',1,'36.00'),
                                      (3,1006,5,'ANZ',5,'99.00'),
                                      (3,1007,3,'HSK',1,'240.00'),
                                      (3,1013,6,'ANZ',1,'48.00'),
                                      (3,1016,110,'HSK',1,'308.00'),
                                      (3,1017,301,'SHM',2,'204.00'),
                                      (3,1018,110,'PRC',1,'236.00'),
                                      (3,1021,202,'KAR',3,'690.00'),
                                      (3,1022,6,'ANZ',2,'96.00'),
                                      (3,1023,105,'SHM',1,'80.00'),
                                      (4,1004,1,'HSK',1,'800.00'),
                                      (4,1005,6,'ANZ',1,'48.00'),
                                      (4,1006,6,'SMT',1,'36.00'),
                                      (4,1007,4,'HRO',1,'480.00'),
                                      (4,1013,9,'ANZ',2,'40.00'),
                                      (4,1016,114,'PRC',1,'120.00'),
                                      (4,1018,5,'SMT',4,'100.00'),
                                      (4,1021,205,'ANZ',2,'624.00'),
                                      (4,1023,110,'SHM',1,'228.00'),
                                      (5,1006,6,'ANZ',1,'48.00'),
                                      (5,1007,7,'HRO',1,'600.00'),
                                      (5,1018,304,'HRO',1,'280.00'),
                                      (5,1023,304,'ANZ',1,'170.00'),
                                      (6,1023,306,'SHM',1,'190.00');
UNLOCK TABLES;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Definition of table `stores7`.`manufact`
--

DROP TABLE IF EXISTS `stores7`.`manufact`;
CREATE TABLE  `stores7`.`manufact` (
                                       `manu_code` char(3) NOT NULL default '',
                                       `manu_name` char(15) default NULL,
                                       `lead_time` char(8) default NULL,
                                       PRIMARY KEY  (`manu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`manufact`
--

/*!40000 ALTER TABLE `manufact` DISABLE KEYS */;
LOCK TABLES `manufact` WRITE;
INSERT INTO `stores7`.`manufact` VALUES  ('ANZ','Anza','5'),
                                         ('HRO','Hero','4'),
                                         ('HSK','Husky','5'),
                                         ('KAR','Karsten','21'),
                                         ('NKL','Nikolus','8'),
                                         ('NRG','Norge','7'),
                                         ('PRC','ProCycle','9'),
                                         ('SHM','Shimara','30'),
                                         ('SMT','Smith','3');
UNLOCK TABLES;
/*!40000 ALTER TABLE `manufact` ENABLE KEYS */;


--
-- Definition of table `stores7`.`orders`
--

DROP TABLE IF EXISTS `stores7`.`orders`;
CREATE TABLE  `stores7`.`orders` (
                                     `order_num` bigint(20) unsigned NOT NULL auto_increment,
                                     `order_date` date default NULL,
                                     `customer_num` bigint(20) unsigned NOT NULL,
                                     `ship_instruct` char(40) default NULL,
                                     `backlog` char(1) default NULL,
                                     `po_num` char(10) default NULL,
                                     `ship_date` date default NULL,
                                     `ship_weight` decimal(8,2) default NULL,
                                     `ship_charge` decimal(8,2) default NULL,
                                     `paid_date` date default NULL,
                                     PRIMARY KEY  (`order_num`),
                                     UNIQUE KEY `order_num` (`order_num`),
                                     KEY `FK_orders_1` (`customer_num`),
                                     CONSTRAINT `FK_orders_1` FOREIGN KEY (`customer_num`) REFERENCES `customer` (`customer_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
LOCK TABLES `orders` WRITE;
INSERT INTO `stores7`.`orders` VALUES  (1001,'1998-05-20',104,'express','n','B77836','1998-06-01','20.40','10.00','1998-07-22'),
                                       (1002,'1998-05-21',101,'PO on box; deliver to back door only','n','9270','1998-05-26','50.60','15.30','1998-06-03'),
                                       (1003,'1998-05-22',104,'express','n','B77890','1998-05-23','35.60','10.80','1998-06-14'),
                                       (1004,'1998-05-22',106,'ring bell twice','y','8006','1998-05-30','95.80','19.20',NULL),
                                       (1005,'1998-05-24',116,'call before delivery','n','2865','1998-06-09','80.80','16.20','1998-06-21'),
                                       (1006,'1998-05-30',112,'after 10 am','y','Q13557',NULL,'70.80','14.20',NULL),
                                       (1007,'1998-05-31',117,NULL,'n','278693','1998-06-05','125.90','25.20',NULL),
                                       (1008,'1998-06-07',110,'closed Monday','y','LZ230','1998-07-06','45.60','13.80','1998-07-21'),
                                       (1009,'1998-06-14',111,'next door to grocery','n','4745','1998-06-21','20.40','10.00','1998-08-21'),
                                       (1010,'1998-06-17',115,'deliver 776 King St. if no answer','n','429Q','1998-06-29','40.60','12.30','1998-08-22'),
                                       (1011,'1998-06-18',104,'express','n','B77897','1998-07-03','10.40','5.00','1998-08-29'),
                                       (1012,'1998-06-18',117,NULL,'n','278701','1998-06-29','70.80','14.20',NULL),
                                       (1013,'1998-06-22',104,'express','n','B77930','1998-07-10','60.80','12.20','1998-07-31'),
                                       (1014,'1998-06-25',106,'ring bell, kick door loudly','n','8052','1998-07-03','40.60','12.30','1998-07-10'),
                                       (1015,'1998-06-27',110,'closed Mondays','n','MA003','1998-07-16','20.60','6.30','1998-08-31'),
                                       (1016,'1998-06-29',119,'delivery entrance off Camp St.','n','PC6782','1998-07-12','35.00','11.80',NULL),
                                       (1017,'1998-07-09',120,'North side of clubhouse','n','DM354331','1998-07-13','60.00','18.00',NULL),
                                       (1018,'1998-07-10',121,'SW corner of Biltmore Mall','n','S22942','1998-07-13','70.50','20.00','1998-08-06'),
                                       (1019,'1998-07-11',122,'closed til noon Mondays','n','Z55709','1998-07-16','90.00','23.00','1998-08-06'),
                                       (1020,'1998-07-11',123,'express','n','W2286','1998-07-16','14.00','8.50','1998-09-20'),
                                       (1021,'1998-07-23',124,'ask for Elaine','n','C3288','1998-07-25','40.00','12.00','1998-08-22'),
                                       (1022,'1998-07-24',126,'express','n','W9925','1998-07-30','15.00','13.00','1998-09-02'),
                                       (1023,'1998-07-24',127,'no deliveries after 3 p.m.','n','KF2961','1998-07-30','60.00','18.00','1998-08-22');
UNLOCK TABLES;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `stores7`.`state`
--

DROP TABLE IF EXISTS `stores7`.`state`;
CREATE TABLE  `stores7`.`state` (
                                    `code` char(2) NOT NULL default '',
                                    `sname` char(15) default NULL,
                                    PRIMARY KEY  (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
LOCK TABLES `state` WRITE;
INSERT INTO `stores7`.`state` VALUES  ('AK','Alaska'),
                                      ('AL','Alabama'),
                                      ('AR','Arkansas'),
                                      ('AZ','Arizona'),
                                      ('CA','California'),
                                      ('CO','Colorado'),
                                      ('CT','Connecticut'),
                                      ('DC','D.C.'),
                                      ('DE','Delaware'),
                                      ('FL','Florida'),
                                      ('GA','Georgia'),
                                      ('HI','Hawaii'),
                                      ('IA','Iowa'),
                                      ('ID','Idaho'),
                                      ('IL','Illinois'),
                                      ('IN','Indiana'),
                                      ('KS','Kansas'),
                                      ('KY','Kentucky'),
                                      ('LA','Louisiana'),
                                      ('MA','Massachusetts'),
                                      ('MD','Maryland'),
                                      ('ME','Maine'),
                                      ('MI','Michigan'),
                                      ('MN','Minnesota'),
                                      ('MO','Missouri'),
                                      ('MS','Mississippi'),
                                      ('MT','Montana'),
                                      ('NC','North Carolina'),
                                      ('ND','North Dakota'),
                                      ('NE','Nebraska'),
                                      ('NH','New Hampshire'),
                                      ('NJ','New Jersey'),
                                      ('NM','New Mexico'),
                                      ('NV','Nevada'),
                                      ('NY','New York'),
                                      ('OH','Ohio'),
                                      ('OK','Oklahoma'),
                                      ('OR','Oregon'),
                                      ('PA','Pennsylvania'),
                                      ('PR','Puerto Rico'),
                                      ('RI','Rhode Island'),
                                      ('SC','South Carolina'),
                                      ('SD','South Dakota'),
                                      ('TN','Tennessee'),
                                      ('TX','Texas'),
                                      ('UT','Utah'),
                                      ('VA','Virginia'),
                                      ('VT','Vermont'),
                                      ('WA','Washington'),
                                      ('WI','Wisconsin'),
                                      ('WV','West Virginia'),
                                      ('WY','Wyoming');
UNLOCK TABLES;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;


--
-- Definition of table `stores7`.`stock`
--

DROP TABLE IF EXISTS `stores7`.`stock`;
CREATE TABLE  `stores7`.`stock` (
                                    `stock_num` smallint(6) NOT NULL default '0',
                                    `manu_code` char(3) NOT NULL default '',
                                    `description` char(15) default NULL,
                                    `unit_price` decimal(8,2) default NULL,
                                    `unit` char(4) default NULL,
                                    `unit_descr` char(15) default NULL,
                                    PRIMARY KEY  (`stock_num`,`manu_code`),
                                    KEY `FK_stock_1` (`manu_code`),
                                    CONSTRAINT `FK_stock_1` FOREIGN KEY (`manu_code`) REFERENCES `manufact` (`manu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores7`.`stock`
--

/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
LOCK TABLES `stock` WRITE;
INSERT INTO `stores7`.`stock` VALUES  (1,'HRO','baseball gloves','250.00','case','10 gloves/case'),
                                      (1,'HSK','baseball gloves','800.00','case','10 gloves/case'),
                                      (1,'SMT','baseball gloves','450.00','case','10 gloves/case'),
                                      (2,'HRO','baseball','126.00','case','24/case'),
                                      (3,'HSK','baseball bat','240.00','case','12/case'),
                                      (3,'SHM','baseball bat','280.00','case','12/case'),
                                      (4,'HRO','football','480.00','case','24/case'),
                                      (4,'HSK','football','960.00','case','24/case'),
                                      (5,'ANZ','tennis racquet','19.80','each','each'),
                                      (5,'NRG','tennis racquet','28.00','each','each'),
                                      (5,'SMT','tennis racquet','25.00','each','each'),
                                      (6,'ANZ','tennis ball','48.00','case','24 cans/case'),
                                      (6,'SMT','tennis ball','36.00','case','24 cans/case'),
                                      (7,'HRO','basketball','600.00','case','24/case'),
                                      (8,'ANZ','volleyball','840.00','case','24/case'),
                                      (9,'ANZ','volleyball net','20.00','each','each'),
                                      (101,'PRC','bicycle tires','88.00','box','4/box'),
                                      (101,'SHM','bicycle tires','68.00','box','4/box'),
                                      (102,'PRC','bicycle brakes','480.00','case','4 sets/case'),
                                      (102,'SHM','bicycle brakes','220.00','case','4 sets/case'),
                                      (103,'PRC','frnt derailleur','20.00','each','each'),
                                      (104,'PRC','rear derailleur','58.00','each','each'),
                                      (105,'PRC','bicycle wheels','53.00','pair','pair'),
                                      (105,'SHM','bicycle wheels','80.00','pair','pair'),
                                      (106,'PRC','bicycle stem','23.00','each','each'),
                                      (107,'PRC','bicycle saddle','70.00','pair','pair'),
                                      (108,'SHM','crankset','45.00','each','each'),
                                      (109,'PRC','pedal binding','30.00','case','6 pairs/case'),
                                      (109,'SHM','pedal binding','200.00','case','4 pairs/case'),
                                      (110,'ANZ','helmet','244.00','case','4/case'),
                                      (110,'HRO','helmet','260.00','case','4/case'),
                                      (110,'HSK','helmet','308.00','case','4/case'),
                                      (110,'PRC','helmet','236.00','case','4/case'),
                                      (110,'SHM','helmet','228.00','case','4/case'),
                                      (111,'SHM','10-spd, assmbld','499.99','each','each'),
                                      (112,'SHM','12-spd, assmbld','549.00','each','each'),
                                      (113,'SHM','18-spd, assmbld','685.90','each','each'),
                                      (114,'PRC','bicycle gloves','120.00','case','10 pairs/case'),
                                      (201,'ANZ','golf shoes','75.00','each','each'),
                                      (201,'KAR','golf shoes','90.00','each','each'),
                                      (201,'NKL','golf shoes','37.50','each','each'),
                                      (202,'KAR','std woods','230.00','case','2 sets/case'),
                                      (202,'NKL','metal woods','174.00','case','2 sets/case'),
                                      (203,'NKL','irons/wedge','670.00','case','2 sets/case'),
                                      (204,'KAR','putter','45.00','each','each'),
                                      (205,'ANZ','3 golf balls','312.00','case','24/case'),
                                      (205,'HRO','3 golf balls','312.00','case','24/case'),
                                      (205,'NKL','3 golf balls','312.00','case','24/case'),
                                      (301,'ANZ','running shoes','95.00','each','each'),
                                      (301,'HRO','running shoes','42.50','each','each'),
                                      (301,'KAR','running shoes','87.00','each','each'),
                                      (301,'NKL','running shoes','97.00','each','each'),
                                      (301,'PRC','running shoes','75.00','each','each'),
                                      (301,'SHM','running shoes','102.00','each','each'),
                                      (302,'HRO','ice pack','4.50','each','each'),
                                      (302,'KAR','ice pack','5.00','each','each'),
                                      (303,'KAR','socks','36.00','box','24 pairs/box'),
                                      (303,'PRC','socks','48.00','box','24 pairs/box'),
                                      (304,'ANZ','watch','170.00','box','10/box'),
                                      (304,'HRO','watch','280.00','box','10/box'),
                                      (305,'HRO','first-aid kit','48.00','case','4/case'),
                                      (306,'PRC','tandem adapter','160.00','each','each'),
                                      (306,'SHM','tandem adapter','190.00','each','each'),
                                      (307,'PRC','infant jogger','250.00','each','each'),
                                      (308,'PRC','twin jogger','280.00','each','each'),
                                      (309,'HRO','ear drops','40.00','case','20/case'),
                                      (309,'SHM','ear drops','40.00','case','20/case'),
                                      (310,'ANZ','kick board','84.00','case','12/case'),
                                      (310,'SHM','kick board','80.00','case','10/case'),
                                      (311,'SHM','water gloves','48.00','box','4 pairs/box'),
                                      (312,'HRO','racer goggles','72.00','box','12/box'),
                                      (312,'SHM','racer goggles','96.00','box','12/box'),
                                      (313,'ANZ','swim cap','60.00','box','12/box'),
                                      (313,'SHM','swim cap','72.00','box','12/box');
UNLOCK TABLES;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
