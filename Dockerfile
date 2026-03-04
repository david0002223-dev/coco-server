FROM node:22-slim
RUN apt-get update && apt-get install -y git
ARG CACHEBUST=8
RUN npm install -g openclaw
CMD ["/bin/sh", "-c", "openclaw setup --key \"$ANTHROPIC_API_KEY\" 2>/dev/null || true && openclaw channel add telegram \"$TELEGRAM_TOKEN\" 2>/dev/null || true && openclaw gateway"]
