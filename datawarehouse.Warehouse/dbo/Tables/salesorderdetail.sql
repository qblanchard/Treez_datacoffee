CREATE TABLE [dbo].[salesorderdetail] (

	[SalesOrderID] bigint NULL, 
	[SalesOrderDetailID] bigint NULL, 
	[OrderQty] bigint NULL, 
	[ProductID] bigint NULL, 
	[UnitPrice] varchar(8000) NULL, 
	[UnitPriceDiscount] varchar(8000) NULL, 
	[LineTotal] float NULL
);


GO
ALTER TABLE [dbo].[salesorderdetail] ADD CONSTRAINT UQ_6465a665_3ff9_4eda_a523_2de1a60061d0 unique NONCLUSTERED ([SalesOrderID]);