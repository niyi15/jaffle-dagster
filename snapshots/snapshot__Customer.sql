{% snapshot snapshot__Customer %}
		{{
		    config(
		        target_schema = var('hx360_snapshot_schema'),
		        target_database = var('hx360_snapshot_database'),
		        tags = ['Customer'],
		        unique_key = 'hx360_sk',
		        strategy = 'check',
		        check_cols = ['hx360_sk','hx360_etl_sk','CustomerID','PersonID','StoreID','TerritoryID','AccountNumber','rowguid','ModifiedDate']
		    )
		}}
	select * from {{ ref('stg__Customer') }}
{% endsnapshot %}