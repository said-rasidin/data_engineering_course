{{ config(materialized='view') }}

SELECT * FROM {{ source('staging','green_tripdata_partitoned') }} 
LIMIT 100;