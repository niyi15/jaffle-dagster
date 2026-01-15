with src as (
    select
    *
from {{ source('raw', 'Customer') }}
)
select 
       {{ dbt_utils.generate_surrogate_key(['CustomerID']) }}        as 'hx360_sk'
      ,{{ dbt_utils.generate_surrogate_key(['ModifiedDate']) }}      as 'hx360_etl_sk' 
      ,[CustomerID]
      ,[PersonID]
      ,[StoreID]
      ,[TerritoryID]
      ,[AccountNumber]
      ,[rowguid]
      ,[ModifiedDate]
from src;
