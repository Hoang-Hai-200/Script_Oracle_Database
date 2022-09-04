!# /bin/bash
logfile=`date +%Y%m%d_%H:%M:%S`_level0.log

rman target / catalog rcat/foo@pdb_cat log log /backup/full/$logfile <<EOF
backup as compressed backupset database;
EOF
