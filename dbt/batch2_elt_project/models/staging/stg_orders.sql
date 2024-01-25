

select   
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_STATUS,
    cast(ORDERE_PURCHASE_TIMESTAMP as timestamp) as ORDERE_PURCHASE_TIMESTAMP,
    cast(ORDER_APPROVED_AT as datetime) as ORDER_APPROVED_AT,
    cast(ORDER_DELIVERED_CARRIER_DATE as datetime) as ORDER_DELIVERED_CARRIER_DATE,
    cast(ORDER_DELIVERED_CUSTOMER_DATE as datetime) as ORDER_DELIVERED_CUSTOMER_DATE,
    cast(ORDER_ESTIMATED_DELIVERY_DATE as datetime) as ORDER_ESTIMATED_DELIVERY_DATE
from {{source('bronze','orders')}} 

