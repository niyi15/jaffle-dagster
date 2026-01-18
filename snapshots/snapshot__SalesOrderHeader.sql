{% snapshot snapshot__SalesOrderHeader %}
		{{
		    config(
		        target_schema = var('hx360_snapshot_schema'),
		        target_database = var('hx360_snapshot_database'),
		        tags = ['Customer'],
		        unique_key = 'hx360_sk',
		        strategy = 'timestamp',
		        updated_at = 'hx360_etl_sk'
		    )
		}}
	select * from {{ ref('stg__SalesOrderHeader') }}
{% endsnapshot %}