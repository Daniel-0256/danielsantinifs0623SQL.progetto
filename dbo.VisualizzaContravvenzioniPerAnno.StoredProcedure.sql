USE [ProgettoSQL]
GO
/****** Object:  StoredProcedure [dbo].[VisualizzaContravvenzioniPerAnno]    Script Date: 09/02/2024 15:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VisualizzaContravvenzioniPerAnno]
    @Anno varchar(4)
AS
BEGIN
    SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
    FROM Multe M
    INNER JOIN ANAGRAFICA A ON M.IDAnagrafica = A.IDAnagrafica
	INNER JOIN VERBALI V ON M.IDVerbale = V.IDVerbale
    WHERE YEAR(V.DataViolazione) = @Anno;
END;
GO
