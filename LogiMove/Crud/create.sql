CREATE TABLE [Drivers] (
	[DriverID] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Nome] nvarchar(max) NOT NULL,
	[CNH] nvarchar(max) NOT NULL,
	[Endereco] nvarchar(max) NOT NULL,
	[Contato] nvarchar(max) NOT NULL,
	PRIMARY KEY ([DriverID])
);

CREATE TABLE [Clients] (
	[ClientID] int IDENTITY(1,1) NOT NULL UNIQUE,
	[Nome] nvarchar(max) NOT NULL,
	[Empresa] nvarchar(max) NOT NULL,
	[Endereco] nvarchar(max) NOT NULL,
	[Contato] nvarchar(max) NOT NULL,
	PRIMARY KEY ([ClientID])
);

CREATE TABLE [Orders] (
	[OrderID ] int IDENTITY(1,1) NOT NULL UNIQUE,
	[ClientID] int NOT NULL,
	[DriverID] int NOT NULL,
	[DetalhesPedido] nvarchar(max) NOT NULL,
	[DataEntrega] date NOT NULL,
	[Status] nvarchar(max) NOT NULL,
	PRIMARY KEY ([OrderID ])
);



ALTER TABLE [Orders] ADD CONSTRAINT [Orders_fk1] FOREIGN KEY ([ClientID]) REFERENCES [Clients]([ClientID]);

ALTER TABLE [Orders] ADD CONSTRAINT [Orders_fk2] FOREIGN KEY ([DriverID]) REFERENCES [Drivers]([DriverID]);