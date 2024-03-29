USE [ProgettoSQL]
GO
/****** Object:  Table [dbo].[Verbali]    Script Date: 09/02/2024 15:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verbali](
	[IDVerbale] [int] IDENTITY(1,1) NOT NULL,
	[DataViolazione] [datetime] NOT NULL,
	[IndirizzoViolazione] [nvarchar](255) NOT NULL,
	[IDAgente] [int] NOT NULL,
	[DataTrascrizioneVerbale] [datetime] NOT NULL,
	[Importo] [money] NOT NULL,
	[DecurtamentoPunti] [tinyint] NOT NULL,
 CONSTRAINT [PK_Verbali] PRIMARY KEY CLUSTERED 
(
	[IDVerbale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Verbali]  WITH CHECK ADD  CONSTRAINT [FK_Verbali_Agenti1] FOREIGN KEY([IDAgente])
REFERENCES [dbo].[Agenti] ([IDAgente])
GO
ALTER TABLE [dbo].[Verbali] CHECK CONSTRAINT [FK_Verbali_Agenti1]
GO
