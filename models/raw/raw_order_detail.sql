--{{ config (materialized='table')}}

--Select *
--From 
--NWT_RAW_DATABASE.NWT.ORDER_DETAIL

{{ config(materialized='incremental', unique_key='ORDERID') }}

SELECT *
FROM NWT_RAW_DATABASE.NWT.ORDER_DETAIL_FRESH
{% if is_incremental() %}
WHERE CAST(ORDERID AS BIGINT) > (SELECT MAX(CAST(ORDERID AS BIGINT))  FROM {{this}})
{% endif %}