FROM node:20-slim
ARG CACHEBUST=2
RUN npm install -g openclaw && ls /usr/local/bin/openclaw
CMD ["/bin/sh", "-c", "openclaw setup --key \"$ANTHROPIC_API_KEY\" 2>/dev/null || true && openclaw channel add telegram \"$TELEGRAM_TOKEN\" 2>/dev/null || true && openclaw gateway start"]
