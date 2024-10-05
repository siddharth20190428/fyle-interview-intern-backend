#!/bin/bash

# Reset DB
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/

# Run your tests here, 
pytest -vvv -s tests/