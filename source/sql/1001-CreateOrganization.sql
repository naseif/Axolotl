CREATE TABLE `Organization` (
	Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Name` varchar(200) not null,
    IsActive tinyint not null default 1
);
INSERT INTO Organization (
	`Name` 
) Values (
	'Axolotl'
);