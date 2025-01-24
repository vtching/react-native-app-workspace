# React Native App Workspace

Workspace template to setup dev environment for bootstrapping a React Native App and an API:
- API: NodeJS TypeScript Express server with GraphQL Yoga and Sequelize over Postgres
- Client: Expo React Native with urql and NativeWind

Dev setup involves using VSCode and Dev Containers

## Prerequisites
Requires [Docker](https://docs.docker.com/desktop/) and [Github CLI](https://cli.github.com/)

Authenticate to Github
```
gh auth login
```

## How to use it
Use this template to create a project workspace repository that will contain both API and client.

Once the repository is cloned, run the bootstrap script using project name (only alphabetical and underscore allowed)
```
./bootstrap.sh myprojectname
```

This will create:
- a docker network `myprojectname-network` for API, DB and client so they can connect each other through their host name `myprojectname-api`, `myprojectname-db-host`, `myprojectname-client`
- a private Github repository for API `myprojectname-api`, using the template [node-ts-yoga-sequelize-pg-boilerplate](https://github.com/vtching/node-ts-yoga-sequelize-pg-boilerplate), clone it and replace the project name in its files
- a private Github repository for Client `myprojectname-client`, using the template [react-native-expo-urql-nativewind-boilerplate](https://github.com/vtching/react-native-expo-urql-nativewind-boilerplate), clone it and replace the project name in its files
