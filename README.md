# React Native App Workspace

Workspace to setup dev environment for bootstrapping a React Native App and an API:
- API: NodeJS TypeScript Express server with GraphQL Yoga and Sequelize over Postgres
- Client: Expo React Native with urql and NativeWind

Dev setup involves using VSCode and Dev Containers

## Prerequisites
Requires [Docker](https://docs.docker.com/desktop/) and [Github CLI](https://cli.github.com/)

Authenticate to Github
```
gh auth login
```

### Bootstrap script
Run bootstrap script using project name (only alphabetical and underscore allowed)
```
./bootstrap.sh myprojectname
```
