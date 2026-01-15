{{
	config(
	    tags = ['SalesOrderHeader']
	)
}}
with src as (
    select
    *
from {{ source('raw', 'SalesOrderHeader') }}
),
final as (
select 
       {{ dbt_utils.generate_surrogate_key(['SalesOrderID']) }}        as 'hx360_sk'
      ,{{ dbt_utils.generate_surrogate_key(['ModifiedDate']) }}        as 'hx360_etl_sk' 
      ,[SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]   
from src
)
select * 
from final;
