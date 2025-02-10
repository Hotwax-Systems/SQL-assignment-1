SELECT 
	P.PRODUCT_ID ,
	P.PRODUCT_NAME AS NAME,
	P.INTERNAL_NAME AS INTERNAL_NAME,
	GI.ID_VALUE AS ERP_ID,
	P.PRODUCT_TYPE_ID ,
	GI.GOOD_IDENTIFICATION_TYPE_ID
FROM
	PRODUCT P
JOIN GOOD_IDENTIFICATION GI
ON
	P.PRODUCT_ID = GI.PRODUCT_ID
WHERE
	GI.GOOD_IDENTIFICATION_TYPE_ID = 'ERP_ID';
