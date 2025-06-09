FROM alpine:3.18

CMD ["/bin/sh", "-c", "\
  if [ -z \"$DB_URL\" ] || [ -z \"$SECRET_KEY_BASE\" ]; then \
    echo '❌ Missing required environment variables: DB_URL or SECRET_KEY_BASE' >&2; \
    exit 1; \
  else \
    echo '✅ Environment OK'; \
    echo \"DB_URL=$DB_URL\"; \
    echo \"SECRET_KEY_BASE=$SECRET_KEY_BASE\"; \
  fi"]
