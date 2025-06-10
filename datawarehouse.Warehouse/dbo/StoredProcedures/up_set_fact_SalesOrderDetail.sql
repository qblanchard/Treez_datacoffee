-- =============================================
-- Author:      TREEZ\yraoul
-- Create Date: 27/02/2024
-- Description: script d'alimenation de la table [fact_SalesOrderDetail]
--  depuis la date (OrderDate) passée en paramètre
-- =============================================
CREATE PROCEDURE up_set_fact_SalesOrderDetail
(
    -- Add the parameters for the stored procedure here
    @dtCollecte datetime = '2020-01-01'
)
AS
BEGIN
    SET NOCOUNT ON

    DELETE FROM [dbo].[fact_SalesOrderDetail]
	WHERE OrderDate >= @dtCollecte
	
	INSERT INTO [dbo].[fact_SalesOrderDetail]
		SELECT * 
		FROM [dbo].[view_fact_SalesOrderDetail]
		WHERE OrderDate >= @dtCollecte
END