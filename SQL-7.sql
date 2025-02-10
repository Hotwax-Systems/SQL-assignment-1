SELECT 
	OH.ORDER_ID ,
	OH.EXTERNAL_ID AS SHOPIFY_ID,
	OH.GRAND_TOTAL ,
	PP.PAYMENT_METHOD_TYPE_ID ,
	PP.PAYMENT_METHOD_ID ,
	PP.ORDER_PAYMENT_PREFERENCE_ID ,
	PP.PAYMENT_MODE
FROM
	ORDER_HEADER OH
JOIN ORDER_PAYMENT_PREFERENCE PP 
ON
	OH.ORDER_ID = PP.ORDER_ID
	AND OH.STATUS_ID = 'ORDER_CREATED'