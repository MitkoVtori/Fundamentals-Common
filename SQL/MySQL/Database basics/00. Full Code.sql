USE `database_name`;


CREATE TABLE `students` (
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `first_name` VARCHAR(50),
     `last_name` VARCHAR(50),
     `age` INT,
     `grade` DOUBLE
);


INSERT INTO `students` (`id`, `first_name`, `last_name`, `age`, `grade`)
VALUES
(1, 'Guy', 'Gilbert', 15, 4.5),
(2, 'Kevin', 'Brown', 17, 5.4),
(3, 'Roberto', 'Tamburello', 19, 6),
(4, 'Linda', 'Smith', 18, 5),
(5, 'John', 'Stones', 16, 4.25),
(6, 'Nicole', 'Nelson', 17, 5.50);


SELECT * FROM `students`;


SELECT `last_name`, `age`, `grade` FROM `students`;


SELECT * FROM `students`
LIMIT 5;


SELECT `last_name`, `grade` FROM `students`
LIMIT 5;


TRUNCATE TABLE `students`;


DROP TABLE `students`;


DROP DATABASE `database_name`
