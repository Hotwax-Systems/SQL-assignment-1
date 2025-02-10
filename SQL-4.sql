-- SELECT * FROM GOOD_IDENTIFICATION_TYPE GIT ;

SELECT
	DISTINCT 
	P.PRODUCT_ID AS PRODUCT_ID,
	P.PRODUCT_NAME ,
	GI.ID_VALUE AS SHOPIFY_ID,
	GI2.ID_VALUE AS ERP_ID,
	GI3.ID_VALUE AS HOTWAX_ID,
	P.IS_VARIANT ,
	P.IS_VIRTUAL
FROM
	PRODUCT P
LEFT JOIN GOOD_IDENTIFICATION GI
ON
	(P.PRODUCT_ID = GI.PRODUCT_ID
		AND GI.GOOD_IDENTIFICATION_TYPE_ID = 'SHOPIFY_PROD_ID')
LEFT JOIN GOOD_IDENTIFICATION GI2
ON
	(P.PRODUCT_ID = GI2.PRODUCT_ID
		AND GI2.GOOD_IDENTIFICATION_TYPE_ID = 'ERP_ID')
LEFT JOIN GOOD_IDENTIFICATION GI3
ON
	(P.PRODUCT_ID = GI3.PRODUCT_ID
		AND GI3.GOOD_IDENTIFICATION_TYPE_ID = 'SKU')
	-- WHERE (P.IS_VARIANT = 'Y')
ORDER BY
	P.PRODUCT_ID
