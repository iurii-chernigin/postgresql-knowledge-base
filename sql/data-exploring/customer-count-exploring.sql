--- Customer
with f_nation as (
	select 
		n_nationkey,
		n_name
	from store.nation
	inner join store.region 
		on region.r_regionkey = nation.n_regionkey 
		and region.r_name = 'ASIA'
)	
select 
	count(c_custkey) as customer_count, 
	count(distinct c_custkey) as customer_distinct_count
from store.customer 
inner join f_nation 
	on f_nation.n_nationkey = customer.c_nationkey