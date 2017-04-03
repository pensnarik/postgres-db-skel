# Skeleton for PostgreSQL database for running inside Docker container

Usage:

```
./init.sh path database_name
```
`path` is the path where init scripts will be copied to (should not be exists). `database_name` is the name of
the database.

After running init.sh you can change dir to path, passed as first argument and run `rebuild.sh`,
which will build a docker container and run it. PostgreSQL database will be available at port 20000.

```
psql -U postgres -h 127.0.0.1 -p 20000 <database_name>
```

You can write your own code inside `install.sql` after the comment or just include external scripts
from "data" and "schema" directory.
