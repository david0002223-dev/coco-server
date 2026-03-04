FROM node:20-slim
ARG CACHEBUST=3
RUN npm install -g openclaw
RUN ls /usr/local/lib/node_modules/openclaw/
RUN cat /usr/local/lib/node_modules/openclaw/package.json | grep -A5 '"bin"'
CMD ["echo", "debug done"]
