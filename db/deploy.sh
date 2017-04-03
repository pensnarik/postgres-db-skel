#!/bin/bash

psql -U postgres -f drop.sql -v database=%(database_name)s
psql -U postgres -f install.sql -v database=%(database_name)s
