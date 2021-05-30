CREATE TABLE UserOrganization (
    Id INt NOT NULL PRIMARY Key AUTO_INCREMENT,
    UserID INT NOT NULL REFERENCES `User`(Id),
    OrganizationID INT NOT NULL REFERENCES Organization(Id),
    IsActive TINYINT Not NULL DEFAULT 1
);

INSERT INTO UserOrganization (
    UserID, OrganizationID    
) VALUES (
    1, 1
);

INSERT INTO UserOrganization (
    UserID, OrganizationID    
) VALUES (
    2, 1
);