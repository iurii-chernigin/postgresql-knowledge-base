--- Table colums information
select 
	table_schema,
	table_name,
	column_name,
	data_type
from information_schema.columns
where table_name = 'customer';

--- Objects from a specific schema
select *
from pg_class pc
left join pg_namespace pn on pn.oid = pc.relnamespace
where pn.nspname = 'store'

--- All views with namespace information
select 
	relname as name,
	nspname as namespace
from pg_class pc
left join pg_namespace pn
	on pn.oid = pc.relnamespace
where relkind in ('v', 'm') 

-- All schemas
select *
from pg_namespace

--- All objects
select *
from pg_catalog.pg_class ss
limit 10







