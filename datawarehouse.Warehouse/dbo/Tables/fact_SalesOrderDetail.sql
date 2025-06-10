CREATE TABLE [dbo].[fact_SalesOrderDetail] (

	[SalesOrderID] int NULL, 
	[RevisionNumber] int NULL, 
	[OrderDate] datetime2(6) NULL, 
	[DueDate] datetime2(6) NULL, 
	[ShipDate] datetime2(6) NULL, 
	[Status] int NULL, 
	[OnlineOrderFlag] int NULL, 
	[SalesOrderNumber] varchar(8000) NULL, 
	[PurchaseOrderNumber] varchar(8000) NULL, 
	[AccountNumber] varchar(8000) NULL, 
	[CustomerID] int NULL, 
	[ShipToAddressID] int NULL, 
	[BillToAddressID] int NULL, 
	[ShipMethod] varchar(8000) NULL, 
	[CreditCardApprovalCode] varchar(8000) NULL, 
	[SalesOrderDetailID] int NULL, 
	[OrderQty] int NULL, 
	[ProductID] int NULL, 
	[UnitPrice] varchar(8000) NULL, 
	[UnitPriceDiscount] varchar(8000) NULL, 
	[LineTotal] float NULL
);