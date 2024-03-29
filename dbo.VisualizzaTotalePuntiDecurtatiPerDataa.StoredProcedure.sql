USE [ProgettoSQL]
GO
/****** Object:  StoredProcedure [dbo].[VisualizzaTotalePuntiDecurtatiPerDataa]    Script Date: 09/02/2024 15:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VisualizzaTotalePuntiDecurtatiPerDataa]
    @DataViolazione DATETIME
AS
BEGIN
    SELECT SUM(DecurtamentoPunti) AS TotalePuntiDecurtati
    FROM Verbali
    WHERE DataViolazione = @DataViolazione;
END;

GO
