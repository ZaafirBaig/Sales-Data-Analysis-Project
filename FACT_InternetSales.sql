SELECT
	[ProductKey], 
	[OrderDateKey],
	[DueDateKey],
	[ShipDateKey],
	[CustomerKey],
	--,[PromotionKey]
	--, [СurrencyKey]
	--,[SalesTerritoryKey]
	[SalesOrderNumber],
	--,[SalesorderLinelumber］，
	--,[RevisionNumber]
	--,[OrderQuantity],
	--,[UnitPrice],
    --,[ExtendedAmount］
	--,[UnitPriceDiscountPct]
	--,[DiscountAmount]
	--,[ProductStandardCost]
	--,[TotalProductCost]
	[SalesAmount]
	--,[TaxAmt]
	--,[Freight]
	--,[CarrierTrackingNumber]
	--,[CustomerPONumber]
	--,[OrderDate]
	--,[DueDate]
	--,[ShipDate]
FROM
[dbo].[FactInternetSales]
WHERE
LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -4 -- Ensures we always only bring four years of date from extraction
ORDER BY
OrderDateKey ASC

