#!/bin/ash

echo "apply migrations"
cd ./ciphers_project
python3 manage.py migrate
python3 manage.py 0.0.0.0:8000

exec"$@"
#