CREATE TABLE `User` (
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Fullname VARCHAR(200) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    `Password` VARCHAR(200) NOT NULL,
    TimeOfRegistration DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    AvatarUrl VARCHAR(200) NOT NULL DEFAULT '',
    TimeOfDeletion DATETIME,
    IsActive TINYINT NOT NULL DEFAULT 1
);

INSERT INTO `User` (
    Fullname,
    Email,
    `Password`
) VALUES (
    "Naseif TheProgger",
    "donotreply@nothingishere.what",
    "TheProgger123"
);

INSERT INTO `User` (
    Fullname,
    Email,
    `Password`
) VALUES (
    "Der Stefan",
    "donotreply2@nothingishere.what",
    "TheProgger123"
);