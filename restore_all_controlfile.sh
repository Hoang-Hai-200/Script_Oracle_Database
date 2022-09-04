#! /bin/bash




sqlplus / as sysdba << SQLPLUS
shut abort;
SQLPLUS

rman target / << EOF
startup nomount;
restore controlfile from autobackup;
alter database mount;
recover database;
alter database open resetlogs;
alter pluggable database all open;
EOF
