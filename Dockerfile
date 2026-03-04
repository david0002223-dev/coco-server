FROM node:20-slim
ARG CACHEBUST=4
RUN npm install -g openclaw 2>&1 || true
RUN ls /usr/local/lib/node_modules/ | head -20 || true
RUN ls /usr/local/bin/ | head -30 || true
CMD ["echo", "check build logs"]
