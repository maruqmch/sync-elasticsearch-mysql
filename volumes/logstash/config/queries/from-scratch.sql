SELECT
	yovo_tbl_leads.*, 
	SUBSTRING_INDEX(yovo_tbl_leads.fbcampaignname, '_',1) AS campaignName, 
	SUBSTRING_INDEX(yovo_tbl_leads.fbcampaignname, '_',-2) AS campaignRegion, 
	yovo_tbl_products_services.`name`
FROM
	yovo_tbl_leads
	INNER JOIN
	yovo_tbl_products_services
	ON 
		yovo_tbl_leads.product = yovo_tbl_products_services.id
