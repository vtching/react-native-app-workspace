#!/bin/sh

set -x

if [ -z "$1" ]
then
  echo "Please provide a name for your project"
  echo "Ex: ./bootstrap.sh myproject"
  exit 1
fi

PROJECT_NAME=$1

# echo "Create Docker network for API and DB"
docker network create "${PROJECT_NAME}-network"

gh repo create "${PROJECT_NAME}-api" --private --clone --template=vtching/node-ts-yoga-sequelize-pg-boilerplate
find ${PROJECT_NAME}-api -type f -exec sed -i.backup s/myproject/${PROJECT_NAME}/g {} \;
find ${PROJECT_NAME}-api -name "*.backup" -exec rm -f {} \;

TIMESTAMP=$(date '+%Y%m%d%H%M%S')
# Replace the migrate file to create user DB table
mv ${PROJECT_NAME}-api/db/migrate/YYYYmmDDHHMMSS-create-user.js ${PROJECT_NAME}-api/db/migrate/${TIMESTAMP}-create-user.js

gh repo create "${PROJECT_NAME}-api" --private --clone --template=vtching/react-native-expo-urql-nativewind-boilerplate
find ${PROJECT_NAME}-client -type f -exec sed -i.backup s/myproject/${PROJECT_NAME}/g {} \;
find ${PROJECT_NAME}-client -name "*.backup" -exec rm -f {} \;
