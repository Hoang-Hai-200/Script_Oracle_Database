#! /bin/bash

rman target / catalog rcat/foo@pdb_cat << EOF
list failure detail;

advise failure;
repair failure preview;
repair failure;



EOF
