#! /bin/bash

sqlplus / as sysdba << EOF
alter session set container =pdb_hr;

exec dbms_service.create_service(SERVICE_NAME=>'new_hr',NETWORK_NAME=>'new_hr');
exec dbms_service.start_service('new_hr');
EOF
