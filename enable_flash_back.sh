#! /bin/bash

sqlplus / as sysdba <<EOF

shutdown immediate;
startup mount;

alter database archivelog;

alter system set db_flashback_retention_target= 2880 scope=both;

alter database flashback on;
alter database open;

EOF
