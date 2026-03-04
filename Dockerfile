FROM node:20-slim
RUN npm install -g openclaw
CMD ["/bin/sh", "-c", "/usr/local/bin/openclaw setup --key \"$ANTHROPIC_API_KEY\" 2>/dev/null || true && /usr/local/bin/openclaw channel add telegram \"$TELEGRAM_TOKEN\" 2>/dev/null || true && /usr/local/bin/openclaw gateway start"]
