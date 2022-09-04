#! /bin/bash

sqlplus / as sysdba << EOF
alter pluggable database pdb1 open;
alter session set container = pdb1;

create user hoang identified by foo;
grant connect, resource, select any dictionary, unlimited tablespace to hoang;

alter user hoang default tablespace users;
 EOF
