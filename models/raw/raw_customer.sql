{{ config (materialized='table')}}

select *
from {{ source('NWT', 'CUSTOMER') }}