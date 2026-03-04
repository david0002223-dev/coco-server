FROM node:20-slim
RUN npm install -g openclaw
CMD ["/bin/sh", "-c", "openclaw setup --key \"$ANTHROPIC_API_KEY\" 2>/dev/null || true && openclaw channel add telegram \"$TELEGRAM_TOKEN\" 2>/dev/null || true && openclaw gateway start"]
