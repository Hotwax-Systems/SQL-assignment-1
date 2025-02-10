SELECT
	OH.ORDER_ID ,
	OH.STATUS_ID ,
	PP.STATUS_ID AS PAYMENT_STATUS,
	SH.SHIPMENT_ID AS SHIPMENT_ID ,
	SH.STATUS_ID AS SHIPMENT_STATUS,
	OS.ORDER_ITEM_SEQ_ID
FROM
	ORDER_HEADER OH
JOIN ORDER_PAYMENT_PREFERENCE PP
ON
	OH.ORDER_ID = PP.ORDER_ID
	AND PP.STATUS_ID = 'PAYMENT_SETTLED'
	AND OH.STATUS_ID != 'ORDER_COMPLETED'
LEFT JOIN ORDER_SHIPMENT OS
ON
	OH.ORDER_ID = OS.ORDER_ID
JOIN SHIPMENT SH
ON
	OS.SHIPMENT_ID = SH.SHIPMENT_ID
	AND SH.STATUS_ID != 'SHIPMENT_SHIPPED'
ORDER BY
	OH.ORDER_ID