Use [Bookstore]
GO

/****** Object:  Table [dbo].[Book]    Script Date: 30/05/2017 04:30:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Person]    Script Date: 30/05/2017 04:31:05 ******/

CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[PersonBookRent]    Script Date: 30/05/2017 04:31:10 ******/

CREATE TABLE [dbo].[PersonBookRent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[HireDate] [datetime] NOT NULL,
	[ReturnedDate] [datetime] NULL,
 CONSTRAINT [PK_PersonBookRent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PersonBookRent]  WITH CHECK ADD  CONSTRAINT [FK_PersonBookRent_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO

ALTER TABLE [dbo].[PersonBookRent] CHECK CONSTRAINT [FK_PersonBookRent_Person]
GO

ALTER TABLE [dbo].[PersonBookRent]  WITH CHECK ADD  CONSTRAINT [FK_PersonBookRent_PersonBookRent] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO

ALTER TABLE [dbo].[PersonBookRent] CHECK CONSTRAINT [FK_PersonBookRent_PersonBookRent]
GO