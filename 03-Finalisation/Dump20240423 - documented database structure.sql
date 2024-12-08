--
-- Table structure for table `account_social`
--
CREATE TABLE account_social ( ##Associative table - this table stores media links associated with user account.
  account_id int NOT NULL, ##The account and social id together form a composite primary key.
  social_id int NOT NULL,
  link varchar(2048) DEFAULT NULL,
  PRIMARY KEY (account_id,social_id),
  KEY FK_account_social_social_id (social_id),
  CONSTRAINT FK_account_social_account_id FOREIGN KEY (account_id) REFERENCES user_account (account_id), ##Foreign key constraints ensure referential integrity with the user_account and social_profile tables.
  CONSTRAINT FK_account_social_social_id FOREIGN KEY (social_id) REFERENCES social_profile (social_id) 
);
--
-- Table structure for table `admin`
--
CREATE TABLE `admin` ( ##Stores administrative priviliges for users.
  admin_id int NOT NULL AUTO_INCREMENT, ##This is the primary key, and other columns denote various administrative privileges.
  employee_management_dashboard tinyint(1) DEFAULT NULL, ##Mysql doesn't have boolean datatype, tinyint is used as an alternative (1/0) where 1 = YES and 0 = NO.
  trips_management tinyint(1) DEFAULT NULL,
  reports_management tinyint(1) DEFAULT NULL,
  invoices_management tinyint(1) DEFAULT NULL,
  PRIMARY KEY (admin_id)
);
--
-- Table structure for table `amenities`
--
CREATE TABLE amenities ( ##]This table contains information about property amenities.
  amenities_id int NOT NULL AUTO_INCREMENT, 
  category_id int NOT NULL, ##The foreign key references the primary key from the 'category' table.
  amenity_name varchar(50) NOT NULL, ##The name of the amenity under the its respective category. There can be many amenities under 1 category. 
  `description` mediumtext, ##Any additional notes the host would like to make. 
  PRIMARY KEY (amenities_id),
  KEY FK_category_id (category_id),
  CONSTRAINT FK_category_id FOREIGN KEY (category_id) REFERENCES category (category_id)
);
--
-- Table structure for table `booking`
--
CREATE TABLE booking ( ##Stores booking information for properties
  booking_id int NOT NULL AUTO_INCREMENT, ##The booking_id is the primary key, and there's a foreign key constraint with the property table.
  property_id int DEFAULT NULL, ##foreign keys set as default null values to provide flexibility and accommodate situations where relationships between entities may not be immediately established.
  checkin_date date DEFAULT NULL,
  checkout_date date DEFAULT NULL,
  nightly_price_dollars decimal(10,2) DEFAULT NULL, ##Price of stay per night in dollars. The datatype decimal indicates means that the column can store numbers with up to 10 digits in total, with 2 of those digits reserved for decimal places.
  total_nightly_price_dollars decimal(10,2) DEFAULT NULL, ##Total price of the entire duration of a guest stay at airbnb from checkin to checkout date.
  service_fee_dollars decimal(10,2) DEFAULT NULL,
  cleaning_fee_dollars decimal(10,2) DEFAULT NULL,
  total_price_dollars decimal(10,2) DEFAULT NULL, ##Total price of the cleanig fee, service fee and total nigtly price. 
  PRIMARY KEY (booking_id),
  KEY FK_property_id (property_id),
  CONSTRAINT FK_property_id FOREIGN KEY (property_id) REFERENCES property (property_id)
);
--
-- Table structure for table `booking_guests`
--
CREATE TABLE booking_guests ( ##An associative table - associate guests with bookings.
  booking_id int NOT NULL,
  guest_id int NOT NULL,
  num_guests int DEFAULT NULL, ##Total number of guests staying at the airbnb under the same booking. 
  booking_status varchar(50) DEFAULT NULL,
  PRIMARY KEY (booking_id,guest_id), ##Creating the composite primary key
  KEY FK_guest_id (guest_id),
  CONSTRAINT FK_booking_id FOREIGN KEY (booking_id) REFERENCES booking (booking_id), 
  CONSTRAINT FK_guest_id FOREIGN KEY (guest_id) REFERENCES guest (guest_id)
);
--
-- Table structure for table `category`
--
CREATE TABLE category ( ##Stores the types of category that any amenities can be categorised in.
  category_id int NOT NULL AUTO_INCREMENT,
  category_name varchar(50) NOT NULL,
  PRIMARY KEY (category_id)
);
--
-- Table structure for table `component_rating`
--
CREATE TABLE component_rating ( ##This table stores ratings for various components of property reviews.
  rating_id int NOT NULL AUTO_INCREMENT,
  property_review_id int DEFAULT NULL, ##foreign keys set as default null values to provide flexibility and accommodate situations where relationships between entities may not be immediately established.
  cleanliness int DEFAULT NULL,
  accuracy int DEFAULT NULL,
  check_in int DEFAULT NULL,
  communication int DEFAULT NULL,
  location int DEFAULT NULL,
  `value` int DEFAULT NULL, 
  PRIMARY KEY (rating_id),
  KEY FK_component_rating_property_review_id_idx (property_review_id),
  CONSTRAINT FK_component_rating_property_review_id FOREIGN KEY (property_review_id) REFERENCES property_review (property_review_id)
);
--
-- Table structure for table `country`
--
CREATE TABLE country ( ##Stores information about countries
  country_id int NOT NULL AUTO_INCREMENT,
  region_id int DEFAULT NULL, 
  country_name varchar(100) NOT NULL, ##Name of the coutry in a particular region. 
  city varchar(100) DEFAULT NULL,
  state varchar(100) NOT NULL,
  PRIMARY KEY (country_id),
  KEY FK_region_id (region_id),
  CONSTRAINT FK_region_id FOREIGN KEY (region_id) REFERENCES region (region_id)
);
--
-- Table structure for table `favourites`
--
CREATE TABLE favourites ( ##Associative table - associates user accounts, mainly guests, with their favourite properties. 
  account_id int NOT NULL,
  property_id int NOT NULL,
  PRIMARY KEY (property_id,account_id), ##Composite primary key 
  KEY FK_favourites_account_id_idx (account_id),
  CONSTRAINT FK_favourites_account_id FOREIGN KEY (account_id) REFERENCES user_account (account_id),
  CONSTRAINT FK_favourites_property_id FOREIGN KEY (property_id) REFERENCES property (property_id)
);
--
-- Table structure for table `guest`
--
CREATE TABLE guest ( ##Stores information about guests.
  guest_id int NOT NULL AUTO_INCREMENT,
  number_of_reviews int DEFAULT NULL, ##Number of reviews by hosts for the guest.
  years_on_airbnb int DEFAULT NULL, ##Number of years the guest have been on AIRBNB.
  PRIMARY KEY (guest_id)
);
--
-- Table structure for table `guest_review`
--
CREATE TABLE guest_review ( ##Stores reviews about guests written by hosts.
  guest_review_id int NOT NULL AUTO_INCREMENT,
  guest_id int DEFAULT NULL, ##foreign keys set as default null values to provide flexibility and accommodate situations where relationships between entities may not be immediately established.
  content text, ##The review stored in text datatype.
  review_date date DEFAULT NULL, ##Date of the review
  PRIMARY KEY (guest_review_id),
  KEY FK_guest_review_guest_id (guest_id),
  CONSTRAINT FK_guest_review_guest_id FOREIGN KEY (guest_id) REFERENCES guest (guest_id)
);
--
-- Table structure for table `host`
--
CREATE TABLE `host` ( ##Stores information about hosts.
  host_id int NOT NULL AUTO_INCREMENT,
  years_hosting int NOT NULL,
  listing_count int DEFAULT NULL, ##The number of properties a host owns.
  super_host tinyint DEFAULT NULL, ##Tinyint datatype used in place of BOOLEAN. 1= YES, 0= NO. 
  response_rate varchar(10) DEFAULT NULL, ##Measures the rate of response of hosts with guests in percentage. 
  response_time varchar(50) DEFAULT NULL, ##Describes how quick the host responds or communicate with guests.
  PRIMARY KEY (host_id)
);
--
-- Table structure for table `language`
--
CREATE TABLE `language` (
  language_id int NOT NULL AUTO_INCREMENT,
  language_name varchar(100) NOT NULL,
  PRIMARY KEY (language_id)
);
--
-- Table structure for table `photos`
--
CREATE TABLE photos ( ##This table stores URLs of photos associated with properties and the order in which they appear.
  photos_id int NOT NULL AUTO_INCREMENT,
  property_id int DEFAULT NULL, ##foreign keys set as default null values to provide flexibility and accommodate situations where relationships between entities may not be immediately established.
  `url` varchar(2048) DEFAULT NULL,
  photo_order int DEFAULT NULL, ##The order of the photo with respect to the property_id.
  PRIMARY KEY (photos_id),
  KEY FK_photos_property_id (property_id),
  CONSTRAINT FK_photos_property_id FOREIGN KEY (property_id) REFERENCES property (property_id)
);
--
-- Table structure for table `property`
--
CREATE TABLE property ( ##This table stores information about properties listed on the platform.
  property_id int NOT NULL AUTO_INCREMENT,
  type_id int DEFAULT NULL, ##foreign keys set as default null values to provide flexibility and accommodate situations where relationships between entities may not be immediately established.
  tag_id int DEFAULT NULL, 
  host_id int DEFAULT NULL,
  country_id int DEFAULT NULL,
  `description` mediumtext, ##Decription of the property. Mediumtext datatype is picked for the description.
  nightly_price_dollars decimal(10,2) NOT NULL, ##The nightly price of airbnb in dollars
  property_name varchar(100) NOT NULL, ##Each property has a name to give character
  number_of_guests int NOT NULL,
  number_of_bedrooms int NOT NULL,
  number_of_bed int NOT NULL,
  number_of_bath int NOT NULL,
  address_line_1 varchar(250) NOT NULL,
  adrress_line_2 varchar(45) NOT NULL,
  PRIMARY KEY (property_id),
  KEY FK__property_type_id (type_id),
  KEY FK_property_host_id (host_id),
  KEY FK_property_country_id (country_id),
  KEY FK_property_tag_id_idx (tag_id),
  CONSTRAINT FK__property_type_id FOREIGN KEY (type_id) REFERENCES property_type (type_id),
  CONSTRAINT FK_property_country_id FOREIGN KEY (country_id) REFERENCES country (country_id),
  CONSTRAINT FK_property_host_id FOREIGN KEY (host_id) REFERENCES `host` (host_id),
  CONSTRAINT FK_property_tag_id FOREIGN KEY (tag_id) REFERENCES property_tag (tag_id)
);
--
-- Table structure for table `property_amenities`
--
CREATE TABLE property_amenities ( ##Associative table - This table associates properties with their amenities.
  property_id int NOT NULL,
  amenities_id int NOT NULL,
  PRIMARY KEY (property_id,amenities_id), ##Creating the composite primary key
  KEY FK_property_amenities_amenities_id (amenities_id),
  CONSTRAINT FK_property_amenities_amenities_id FOREIGN KEY (amenities_id) REFERENCES amenities (amenities_id),
  CONSTRAINT FK_property_amenities_property_id FOREIGN KEY (property_id) REFERENCES property (property_id)
);
--
-- Table structure for table `property_review`
--
CREATE TABLE property_review ( ##Table stores reviews written by guests for properties.
  property_review_id int NOT NULL AUTO_INCREMENT, ##The primary key.
  guest_id int DEFAULT NULL,
  property_id int DEFAULT NULL,
  parent_review_id int DEFAULT NULL, ##The parent review can have many child reviews. Thus a recursive relationship exists within the table. 
  review_date date DEFAULT NULL,
  `comment` text,
  overall_rating_stars int DEFAULT NULL, ##Overall rating from the individual components rating of the 'component_rating' table.
  PRIMARY KEY (property_review_id),
  KEY FK_property_review_guest_id (guest_id),
  KEY FK_property_review_parent_review_id (parent_review_id),
  KEY FK_property_review_property_id (property_id),
  CONSTRAINT FK_property_review_guest_id FOREIGN KEY (guest_id) REFERENCES guest (guest_id),
  CONSTRAINT FK_property_review_parent_review_id FOREIGN KEY (parent_review_id) REFERENCES property_review (property_review_id), ##Writing a constrait where the parent_review_id references the property_review_id. A child_review can be determined to which parent review it belongs by this constraint. 
  CONSTRAINT FK_property_review_property_id FOREIGN KEY (property_id) REFERENCES property (property_id)
);
--
-- Table structure for table `property_tag`
--
CREATE TABLE property_tag ( ##This table stores tags associated with properties.
  tag_id int NOT NULL AUTO_INCREMENT,
  tag_name varchar(50) NOT NULL, ##Refers to additional descriptors or labels assigned to a property to provide more specific information or characteristics, such as "Beachfront," "Pet-friendly," "Luxury," "Family-friendly," etc. 
  PRIMARY KEY (tag_id)
);
--
-- Table structure for table `property_type`
--
CREATE TABLE property_type ( ##Table stores types of properties.
  type_id int NOT NULL AUTO_INCREMENT,
  type_name varchar(50) NOT NULL, ##Refers to the general category or classification of a property, such as "Apartment," "House," "Guesthouse," etc. 
  PRIMARY KEY (type_id)
);
--
-- Table structure for table `region`
--
CREATE TABLE region ( ##Stores the information for the types of regions.
  region_id int NOT NULL AUTO_INCREMENT,
  region_name varchar(50) NOT NULL,
  PRIMARY KEY (region_id)
);
--
-- Table structure for table `social_profile`
--
CREATE TABLE social_profile ( ##Stores information about social media profiles.
  social_id int NOT NULL AUTO_INCREMENT,
  social_network varchar(50) NOT NULL,
  PRIMARY KEY (social_id)
);
--
-- Table structure for table `user_account`
--
CREATE TABLE user_account ( ##Table stores user account information.
  account_id int NOT NULL AUTO_INCREMENT,
  country_id int DEFAULT NULL, ##foreign keys set as default null values to provide flexibility and accommodate situations where relationships between entities may not be immediately established.
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  email_address varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  profile_picture tinyint DEFAULT NULL,
  joined_date date NOT NULL,
  user_role varchar(255) DEFAULT NULL, ##Determines the type of role the account is: Guest, host or admin. 
  admin_id int DEFAULT NULL,  ##The following columns references their respective table primary keys based on the user role. If user is admin, then admin_id is filled while the other two role_ids are left NULL.
  host_id int DEFAULT NULL,
  guest_id int DEFAULT NULL,
  PRIMARY KEY (account_id),
  KEY FK_user_account_country_id (country_id),
  KEY FK_user_account_admin_idx (admin_id),
  KEY FK_user_account_host_idx (host_id),
  KEY FK_user_account_guest_idx (guest_id),
  CONSTRAINT FK_user_account_admin FOREIGN KEY (admin_id) REFERENCES `admin` (admin_id),
  CONSTRAINT FK_user_account_country_id FOREIGN KEY (country_id) REFERENCES country (country_id),
  CONSTRAINT FK_user_account_guest FOREIGN KEY (guest_id) REFERENCES guest (guest_id),
  CONSTRAINT FK_user_account_host FOREIGN KEY (host_id) REFERENCES `host` (host_id)
);
--
-- Table structure for table `user_language`
-- 
CREATE TABLE user_language ( ##Associative table - Associates user accounts with their preferred languages.
  account_id int NOT NULL,
  language_id int NOT NULL,
  PRIMARY KEY (account_id,language_id), ##Creating composite primary key. 
  KEY FK_user_language_language_id (language_id),
  CONSTRAINT FK_user_language_account_id FOREIGN KEY (account_id) REFERENCES user_account (account_id),
  CONSTRAINT FK_user_language_language_id FOREIGN KEY (language_id) REFERENCES `language` (language_id)
);

