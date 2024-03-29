USE [ProgettoSQL]
GO
/****** Object:  Table [dbo].[Anagrafica]    Script Date: 09/02/2024 15:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anagrafica](
	[IDAnagrafica] [int] IDENTITY(1,1) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Indirizzo] [nvarchar](255) NOT NULL,
	[Citta] [nvarchar](255) NOT NULL,
	[CAP] [int] NOT NULL,
	[Cod_Fisc] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Anagrafica] PRIMARY KEY CLUSTERED 
(
	[IDAnagrafica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
