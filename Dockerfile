FROM node:20-slim
RUN npm install -g openclaw
WORKDIR /app
RUN echo '#!/bin/sh' > /start.sh && \
echo 'openclaw setup --key "$ANTHROPIC_API_KEY" 2>/dev/null || true' >> /start.sh && \
echo 'openclaw channel add telegram "$TELEGRAM_TOKEN" 2>/dev/null || true' >> /start.sh && \
echo 'openclaw gateway start' >> /start.sh && \
chmod +x /start.sh
CMD ["/start.sh"]
