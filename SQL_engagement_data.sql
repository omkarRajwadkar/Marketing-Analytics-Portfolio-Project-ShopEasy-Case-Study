SELECT
*
FROM PortfolioProject_MarketingAnalytics.dbo.engagement_data

SELECT
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined)-1) AS Views,
	RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined) - 1) AS Clicks,
	likes,

	FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate

FROM
	PortfolioProject_MarketingAnalytics.dbo.engagement_data
WHERE 
	ContentType != 'Newsletter';