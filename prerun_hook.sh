#! /bin/bash

set -e

printf "
port: ${PORT}
managementApiSecret: ${MGMT_SECRET}
databases:
  default:
    connector: postgres
    uri: ${DATABASE_URL}?ssl=1
    ssl: true
    migrations: true
" >> ${PRISMA_CONFIG_PATH}
