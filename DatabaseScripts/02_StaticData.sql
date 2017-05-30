USE [Bookstore]
GO

INSERT INTO dbo.Book (Title) VALUES(N'The Lost Symbol')
INSERT INTO dbo.Book (Title) VALUES(N'The Da Vinci Code') 
INSERT INTO dbo.Book (Title) VALUES(N'Inferno') 
INSERT INTO dbo.Book (Title) VALUES(N'Angels And Demons')
INSERT INTO dbo.Book (Title) VALUES(N'Harry Potter')
INSERT INTO dbo.Book (Title) VALUES(N'The Hobit')
INSERT INTO dbo.Book (Title) VALUES(N'Animal Farm')
INSERT INTO dbo.Book (Title) VALUES(N'C# Programming')
INSERT INTO dbo.Book (Title) VALUES(N'Alice In Wonderland')
INSERT INTO dbo.Book (Title) VALUES(N'Digital Fortress') 
GO

INSERT INTO dbo.Person (FirstName, LastName) VALUES (N'John',N'Papa') 
INSERT INTO dbo.Person (FirstName, LastName) VALUES (N'Arsène',N'Wenger') 
INSERT INTO dbo.Person (FirstName, LastName) VALUES (N'José',N'Morinho') 
INSERT INTO dbo.Person (FirstName, LastName) VALUES (N'Jurgen',N'Klopp') 
INSERT INTO dbo.Person (FirstName, LastName) VALUES (N'Scott',N'Hanselman') 
GO

INSERT INTO dbo.PersonBookRent (PersonId, BookId, HireDate) VALUES (1, 1, '2017-04-01 13:00:00.000') 
INSERT INTO dbo.PersonBookRent (PersonId, BookId, HireDate) VALUES (2, 3, '2017-03-02 11:21:00.000') 
INSERT INTO dbo.PersonBookRent (PersonId, BookId, HireDate) VALUES (3, 5, '2017-05-01 00:00:00.000') 
GO