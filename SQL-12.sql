select
	PFC.PRODUCT_ID ,
	PFC.MINIMUM_STOCK as THRESHOLD
from
	PRODUCT_FACILITY PFC
join FACILITY F
on
	PFC.FACILITY_ID = F.FACILITY_ID and F.FACILITY_TYPE_ID = 'CONFIGURATION'
where
	PFC.MINIMUM_STOCK > 0 
