SELECT 
	p.[ProductKey],
	p.[ProductAlternateKey] AS ProductitemCode,
	--[ProductSubcategoryKey],
	--[WeightUnitMeasureCode]
	--[SizeUnitMeasureCode]
	p.[EnglishProductName] AS [Product Name],
	ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table 
	pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table
	--,[SpanishProductName]
	--,[FrenchProductName)
	--,[StandardCost]
	--,[FinishedGoodsFlag)
	p.[Color] AS [Product Color],
	--,[SafetyStockLevel]
	--,[ReorderPoint]
	--,[ListPrice]
	p.[Size] AS [Product Size],
	--,[SizeRange]
	--,[Weight]
	--,[Days ToManufacture)
	p.[ProductLine] AS [Product Line],
	--,[DealerPrice]
	--,[Class] 
	--,[Style]
	p.[ModelName] AS [Product Model Name],
	 --,[LargePhoto]
	p.[EnglishDescription] AS [Product Description],
	--,[FrenchDescription]
	--,[ChineseDescription]
	--,[ArabicDescription]
	--,[HebrewDescription]
	--,[ThaiDescription]
	--,[GermanDescription]
	--,[JapaneseDescription]
	--,[TurkishDescription]
	--,[StartDate],
	--,[EndDate],
ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS P
  LEFT join dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT join dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  Order by
  p.ProductKey asc