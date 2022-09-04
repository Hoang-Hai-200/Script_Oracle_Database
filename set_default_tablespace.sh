#! / bin bash

sqlplus / as sysdba << EOF

alter database default tablespace <name_tablespace>;

alter session set container = <name_pdb>;
alter pluggable database default tablespace <name_tablespace>;
alter pluggable database default temporaty tablespace <name_tablespace>;




EOF
