-- Cleaned Dim_Products Table --
SELECT
	   p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS 'Product Name'
	  ,ps.EnglishProductSubcategoryName AS 'Sub Category'
	  ,pc.EnglishProductCategoryName AS 'Product Category'
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS 'Product Color'
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS 'Product Size'
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] AS 'Product Line'
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS 'Product Model Name'
      --,[LargePhoto]
      ,[EnglishDescription] AS 'Product Description'
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL(p.[Status], 'Outdated') AS 'Product Status'
  FROM 
	[DimProduct] as p
	LEFT JOIN DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
 ORDER BY
	p.ProductKey ASC

--select * from DimProductSubcategory
--select * from DimProductCategory
--select * from DimProduct