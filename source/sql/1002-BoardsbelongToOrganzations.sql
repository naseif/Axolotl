Alter TABLE Board
    ADD OrganizationID Int Not Null REFERENCES Organization(id);

Update Board SET OrganizationID = 1