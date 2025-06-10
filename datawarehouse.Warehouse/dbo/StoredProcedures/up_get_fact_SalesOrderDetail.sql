CREATE PROC [dbo].[up_get_fact_SalesOrderDetail] AS
BEGIN
    SELECT * FROM [datawarehouse].[dbo].[fact_SalesOrderDetail]
END