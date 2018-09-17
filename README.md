# SQL-Server-integration-tests
Performing integration tests with SQL Server in the cloud with appveyor.

Check out the files: appveyor.yml and test.sql

It uses Microsoft SQL Server 2017 and run the script `test.sql` with the `-b` option (terminate batch job if there is an error).

appveyor.yml:
```
services:
  - mssql2017

build_script:
  - sqlcmd -b -i test.sql
```

Calling for example ```THROW 50000,'My error msg.',1```, it will make the build fail in the cloud.

# Copyright and license
Code released under the MIT license.
