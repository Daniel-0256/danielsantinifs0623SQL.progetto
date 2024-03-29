USE [ProgettoSQL]
GO
/****** Object:  Table [dbo].[Multe]    Script Date: 09/02/2024 15:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Multe](
	[IDMulta] [int] IDENTITY(1,1) NOT NULL,
	[IDAnagrafica] [int] NOT NULL,
	[IDVerbale] [int] NOT NULL,
	[IDViolazione] [int] NOT NULL,
 CONSTRAINT [PK_Multe] PRIMARY KEY CLUSTERED 
(
	[IDMulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Multe]  WITH CHECK ADD  CONSTRAINT [FK_Multe_Anagrafica1] FOREIGN KEY([IDAnagrafica])
REFERENCES [dbo].[Anagrafica] ([IDAnagrafica])
GO
ALTER TABLE [dbo].[Multe] CHECK CONSTRAINT [FK_Multe_Anagrafica1]
GO
ALTER TABLE [dbo].[Multe]  WITH CHECK ADD  CONSTRAINT [FK_Multe_Verbali1] FOREIGN KEY([IDVerbale])
REFERENCES [dbo].[Verbali] ([IDVerbale])
GO
ALTER TABLE [dbo].[Multe] CHECK CONSTRAINT [FK_Multe_Verbali1]
GO
ALTER TABLE [dbo].[Multe]  WITH CHECK ADD  CONSTRAINT [FK_Multe_Violazioni1] FOREIGN KEY([IDViolazione])
REFERENCES [dbo].[Violazioni] ([IDViolazione])
GO
ALTER TABLE [dbo].[Multe] CHECK CONSTRAINT [FK_Multe_Violazioni1]
GO
