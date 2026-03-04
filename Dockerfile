FROM node:22-slim
RUN apt-get update && apt-get install -y git
ARG CACHEBUST=9
RUN npm install -g openclaw
CMD ["/bin/sh", "-c", "openclaw config set anthropic.key \"$ANTHROPIC_API_KEY\" 2>&1 || true && openclaw channel add telegram \"$TELEGRAM_TOKEN\" 2>&1 || true && openclaw gateway"]
