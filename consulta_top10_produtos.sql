USE ContosoRetailDW

SELECT TOP 10
P.ProductKey
,P.ProductName
,P.BrandName
,PC.ProductCategoryName
,f.SalesQuantity
,SUM (F.SalesQuantity) AS TOTAL_DE_PRODUTOS
,SUM (F.SALESAMOUNT) AS TOTAL_FATURAMENTO
FROM FactSales AS F
INNER JOIN DimProduct AS P ON P.ProductKey = F.ProductKey
INNER JOIN DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
GROUP BY P.ProductKey,P.ProductName, P.BrandName, PC.ProductCategoryName, f.SalesQuantity
ORDER BY TOTAL_FATURAMENTO DESC
