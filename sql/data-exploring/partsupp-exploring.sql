select *
from store.part
limit 10

--- Average calculations
SELECT avg(ps_supplycost) AS ps_supplycost_avg
FROM store.partsupp