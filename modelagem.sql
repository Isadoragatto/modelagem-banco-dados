-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users-forms'
-- 
-- ---

DROP TABLE IF EXISTS `users-forms`;
		
CREATE TABLE `users-forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `gender` VARCHAR(50) NULL DEFAULT NULL,
  `education` VARCHAR(50) NULL DEFAULT NULL,
  `type of housing` VARCHAR(100) NULL DEFAULT NULL,
  `family constitution` VARCHAR(100) NULL DEFAULT NULL,
  `income` INTEGER NULL DEFAULT NULL,
  `how many peolple live in the house ` INTEGER NULL DEFAULT NULL,
  `country` VARCHAR(100) NULL DEFAULT NULL,
  `state` VARCHAR(100) NULL DEFAULT NULL,
  `city` VARCHAR(100) NULL DEFAULT NULL,
  `neighborhood` VARCHAR(100) NULL DEFAULT NULL,
  `What is your relationship with dogs?` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms 1'
-- 
-- ---

DROP TABLE IF EXISTS `forms 1`;
		
CREATE TABLE `forms 1` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `full name` VARCHAR(100) NULL DEFAULT NULL,
  `social name ` VARCHAR(100) NULL DEFAULT NULL,
  `number` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms-have-dog'
-- 
-- ---

DROP TABLE IF EXISTS `forms-have-dog`;
		
CREATE TABLE `forms-have-dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog's name` VARCHAR(100) NULL DEFAULT NULL,
  `gender` VARCHAR(100) NULL DEFAULT NULL,
  `castrated` VARCHAR(50) NULL DEFAULT NULL,
  `The dog has been with you for how long` VARCHAR(100) NULL DEFAULT NULL,
  `is your firts dog?` VARCHAR(100) NULL DEFAULT NULL,
  `How many other pets do you have in your house?` VARCHAR(100) NULL DEFAULT NULL,
  `dog age` INTEGER(100) NULL DEFAULT NULL,
  `dog breed` VARCHAR(100) NULL DEFAULT NULL,
  `where did you get the dog` VARCHAR(100) NULL DEFAULT NULL,
  `you paid to add` VARCHAR(100) NULL DEFAULT NULL,
  `At what age did the dog arrive at your home?` VARCHAR(100) NULL DEFAULT NULL,
  `How do you describe the dog's personality?` MEDIUMTEXT(300) NULL DEFAULT NULL,
  `why do you do have this dog` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `What characteristics did your dog have that pleased you?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `Who was involved in the decision?` VARCHAR(100) NULL DEFAULT NULL,
  `Você teve algum cão que não pode manter em casa` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `How many times did you take your dog to the vet last year?` INTEGER NULL DEFAULT NULL,
  `If someone else were to adopt your dog, what would you say about him?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `id_users-forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms-had-dogs'
-- 
-- ---

DROP TABLE IF EXISTS `forms-had-dogs`;
		
CREATE TABLE `forms-had-dogs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog´s name` VARCHAR(100) NULL DEFAULT NULL,
  `How long was he with you?` MEDIUMTEXT(150) NULL DEFAULT NULL,
  `How do you describe the dog's personality?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `was your first dog?` VARCHAR(50) NULL DEFAULT NULL,
  `How many other pets did you have in the house?` VARCHAR(100) NULL DEFAULT NULL,
  `how old was your pet when he included in your house ` INTEGER NULL DEFAULT NULL,
  `castrated` VARCHAR(50) NULL DEFAULT NULL,
  `dog breed` VARCHAR(100) NULL DEFAULT NULL,
  `price of the dog` INTEGER NULL DEFAULT NULL,
  ` Where did your dog come from?` MEDIUMTEXT(150) NULL DEFAULT NULL,
  `Why did you buy or adopt the dog` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `Who was involved in the decision ` VARCHAR(100) NULL DEFAULT NULL,
  `What did you like most about the dog?` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `what didn´t you like about the dog?` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `Did your pet go to the vet while he was with you?` VARCHAR(50) NULL DEFAULT NULL,
  `when the dog stopped living with you` INTEGER NULL DEFAULT NULL,
  `How old was the dog when he stopped living with you?` INTEGER NULL DEFAULT NULL,
  `would you like to live with another dog ` VARCHAR(100) NULL DEFAULT NULL,
  `Why did you stop living with the dog?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `id_forms 1` INTEGER NULL DEFAULT NULL,
  `id_users-forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms-never-had-dog'
-- 
-- ---

DROP TABLE IF EXISTS `forms-never-had-dog`;
		
CREATE TABLE `forms-never-had-dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  ` What are the physical characteristics of the dog that you imagine living with?` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `why would you like to live with a dog?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `have you think about the dog´s name?` INTEGER NULL DEFAULT NULL,
  `would you like to adopt or buy?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `when would like to adopt or buy?` MEDIUMTEXT(250) NULL DEFAULT NULL,
  `What type of personality/behavior would you like to have?` MEDIUMTEXT(300) NULL DEFAULT NULL,
  `Did you research the average monthly pet expenses?` MEDIUMTEXT(200) NULL DEFAULT NULL,
  `id_forms 1` INTEGER NULL DEFAULT NULL,
  `id_users-forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'forms-doesn´t-want-dog'
-- 
-- ---

DROP TABLE IF EXISTS `forms-doesn´t-want-dog`;
		
CREATE TABLE `forms-doesn´t-want-dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `why you doesn´t want to have a dog?` INTEGER NULL DEFAULT NULL,
  `id_users-forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NULL DEFAULT NULL,
  `password` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY ()
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `forms-have-dog` ADD FOREIGN KEY (id_users-forms) REFERENCES `users-forms` (`id`);
ALTER TABLE `forms-had-dogs` ADD FOREIGN KEY (id_forms 1) REFERENCES `forms 1` (`id`);
ALTER TABLE `forms-had-dogs` ADD FOREIGN KEY (id_users-forms) REFERENCES `users-forms` (`id`);
ALTER TABLE `forms-never-had-dog` ADD FOREIGN KEY (id_forms 1) REFERENCES `forms 1` (`id`);
ALTER TABLE `forms-never-had-dog` ADD FOREIGN KEY (id_users-forms) REFERENCES `users-forms` (`id`);
ALTER TABLE `forms-doesn´t-want-dog` ADD FOREIGN KEY (id_users-forms) REFERENCES `users-forms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users-forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms 1` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms-have-dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms-had-dogs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms-never-had-dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `forms-doesn´t-want-dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users-forms` (`id`,`age`,`gender`,`education`,`type of housing`,`family constitution`,`income`,`how many peolple live in the house `,`country`,`state`,`city`,`neighborhood`,`What is your relationship with dogs?`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `forms 1` (`id`,`full name`,`social name `,`number`) VALUES
-- ('','','','');
-- INSERT INTO `forms-have-dog` (`id`,`dog's name`,`gender`,`castrated`,`The dog has been with you for how long`,`is your firts dog?`,`How many other pets do you have in your house?`,`dog age`,`dog breed`,`where did you get the dog`,`you paid to add`,`At what age did the dog arrive at your home?`,`How do you describe the dog's personality?`,`why do you do have this dog`,`What characteristics did your dog have that pleased you?`,`Who was involved in the decision?`,`Você teve algum cão que não pode manter em casa`,`How many times did you take your dog to the vet last year?`,`If someone else were to adopt your dog, what would you say about him?`,`id_users-forms`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `forms-had-dogs` (`id`,`dog´s name`,`How long was he with you?`,`How do you describe the dog's personality?`,`was your first dog?`,`How many other pets did you have in the house?`,`how old was your pet when he included in your house `,`castrated`,`dog breed`,`price of the dog`,` Where did your dog come from?`,`Why did you buy or adopt the dog`,`Who was involved in the decision `,`What did you like most about the dog?`,`what didn´t you like about the dog?`,`Did your pet go to the vet while he was with you?`,`when the dog stopped living with you`,`How old was the dog when he stopped living with you?`,`would you like to live with another dog `,`Why did you stop living with the dog?`,`id_forms 1`,`id_users-forms`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `forms-never-had-dog` (`id`,` What are the physical characteristics of the dog that you imagine living with?`,`why would you like to live with a dog?`,`have you think about the dog´s name?`,`would you like to adopt or buy?`,`when would like to adopt or buy?`,`What type of personality/behavior would you like to have?`,`Did you research the average monthly pet expenses?`,`id_forms 1`,`id_users-forms`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `forms-doesn´t-want-dog` (`id`,`why you doesn´t want to have a dog?`,`id_users-forms`) VALUES
-- ('','','');
-- INSERT INTO `users` (`id`,`password`,`email`) VALUES
-- ('','','');