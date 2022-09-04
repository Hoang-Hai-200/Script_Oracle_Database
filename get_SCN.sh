#! /bin/bash

sqlplus / as sysdba <<EOF
select DBMS_FLASHBACK.get_system_change_number from dual;


EOF
