-- Cleansed DIM_Customer Table -- 
SELECT 
	c.customerkey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
	c.firstname AS [First Name],
      --,[MiddleName]
	c.lastname AS [Last Name],
	c.firstname + ' ' + lastname as [Full Name], -- Combined First Name and Last Name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
	CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
c.[DateFirstPurchase] AS DateFirstPurchase,
      --,[CommuteDistance]
 g.city AS [Customer City] -- Joined in Customer City from Geography Table
  FROM
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  Left Join dbo.DimGeography AS g on g.GeographyKey = c.GeographyKey
  Order by
  CustomerKey ASC -- Ordered List by CustomerKey