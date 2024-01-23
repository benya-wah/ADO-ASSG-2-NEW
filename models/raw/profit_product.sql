{{ config (materialized='table')}}

select *,
UNITPRICE - UNITCOST as profit
from NWT_RAW_DATABASE.NWT.UNIT_COST_PRODUCT