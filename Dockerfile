# utility containers
# Allow one to run npm commands on their machine through the container without having to install the node dependencies on the host machine.

FROM node:14-alpine

WORKDIR /app

#any npm command is appended on the entry point
# eg docker run -it -v "/Users/michaelmburu/Documents/Visual Studio Code/Docker & Kubernetes /9. Utility Containers/Dockerfile":/app mynpm init; docker run -it -v "/Users/michaelmburu/Documents/Visual Studio Code/Docker & Kubernetes /9. Utility Containers/Dockerfile":/app mynpm init

#disadvantage: Run long commands. Solution is docker compose
ENTRYPOINT [ "npm" ]