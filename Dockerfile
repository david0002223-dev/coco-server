FROM node:22-slim
ARG CACHEBUST=6
RUN npm install -g openclaw
RUN ls /usr/local/bin/ | grep claw || echo "NOT FOUND"
CMD ["/bin/sh", "-c", "openclaw setup --key \"$ANTHROPIC_API_KEY\" 2>/dev/null || true && openclaw channel add telegram \"$TELEGRAM_TOKEN\" 2>/dev/null || true && openclaw gateway start"]
