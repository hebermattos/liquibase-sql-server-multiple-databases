#!/usr/bin/env bash
set -m
./opt/mssql/bin/sqlservr & ./db-init.sh
fg