create table t_local SELECT DISTINCT (`Type local`)FROM raw;
ALTER TABLE t_local ADD type_local_id INTEGER NOT NULL auto_increment PRIMARY KEY;
