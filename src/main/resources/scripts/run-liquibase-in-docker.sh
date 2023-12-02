#!/bin/sh
# executes migration scripts and stop
docker run --name liquibase --network host -v resources/db/changelog:/liquibase/db/changelog . --defaultsFile=/liquibase/db/changelog/liquibase.properties update
docker rm liquibase

