USE [ProgettoSQL]
GO
/****** Object:  StoredProcedure [dbo].[EliminaVerbale]    Script Date: 09/02/2024 15:33:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminaVerbale]
    @IDVerbale INT
AS
BEGIN
	DELETE FROM Multe 
	WHERE IDVerbale = @IDVerbale
    DELETE FROM Verbali
    WHERE IDVerbale = @IDVerbale;
END;

GO
