create table partsupp (
    ps_partkey integer,
    ps_suppkey integer,
    ps_availqty integer,
    ps_supplycost numeric(15,2),
    ps_comment character varying(199),
    n_emp character(2)
);