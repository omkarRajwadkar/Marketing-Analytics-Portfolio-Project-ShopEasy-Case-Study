SELECT 
*
FROM PortfolioProject_MarketingAnalytics.dbo.customers

SELECT
*
FROM PortfolioProject_MarketingAnalytics.dbo.geography

SELECT 
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Gender,
	c.Age,
	g.Country,
	g.City

FROM 
	PortfolioProject_MarketingAnalytics.dbo.customers as c
LEFT JOIN
--RIGHT JOIN
--INNER JOIN
	PortfolioProject_MarketingAnalytics.dbo.geography as g

ON
	C.GeographyID = g.GeographyID;