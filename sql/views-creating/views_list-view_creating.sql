create or replace view store.views_list as
	select -- all views
		relname as name,
		nspname as namespace
	from pg_class pc
	left join pg_namespace pn
		on pn.oid = pc.relnamespace
	where relkind in ('v', 'm')