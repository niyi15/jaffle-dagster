{{
	config(
	    tags = ['Customer']
	)
}}
with src as (
    select
    *
from {{ source('raw', 'Customer') }}
),
final as (
select 
       {{ dbt_utils.generate_surrogate_key(['CustomerID']) }}        as 'hx360_sk'
      ,{{ dbt_utils.generate_surrogate_key(['ModifiedDate']) }}      as 'hx360_etl_sk' 
      ,cast(CustomerID as int)                                       as 'CustomerID'
      ,[PersonID]
      ,[StoreID]
      ,[TerritoryID]
      ,[AccountNumber]
      ,[rowguid]
      ,[ModifiedDate]
from src
)
select * 
from final;

