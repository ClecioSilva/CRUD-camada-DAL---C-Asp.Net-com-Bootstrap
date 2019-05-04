CREATE TABLE [dbo].[Pessoa] (
    [Codigo]     INT           IDENTITY (1, 1) NOT NULL,
    [Nome]       NVARCHAR (50) NOT NULL,
    [Hobby]      NVARCHAR (50) NOT NULL,
    [Esporte]    NVARCHAR (50) NOT NULL,
    [Filme]      NVARCHAR (50)NOT NULL,
	[Desejo]     NVARCHAR (50) NOT NULL,
    [Medo]       NVARCHAR (50) NOT NULL,
	[Comida]     NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Codigo] ASC)
);

select * from Pessoa
drop table Pessoa