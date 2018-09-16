CREATE DATABASE test
GO

USE test
GO

SET NOCOUNT ON

CREATE TABLE dbo.Persons (IDPerson int IDENTITY(1,1) NOT NULL PRIMARY KEY, Name varchar(20) NOT NULL, City varchar(30) NOT NULL)

INSERT INTO Persons (Name, City) VALUES ('Philip1', 'Montreal')
INSERT INTO Persons (Name, City) VALUES ('Philip2', 'Montreal')

SELECT * FROM Persons

SELECT TOP(1) Name FROM Persons

PRINT('Here 1')

IF NOT EXISTS(SELECT TOP(1) IDPerson FROM Persons)
    THROW 50000,'No entries.',1

PRINT('Here 2')
