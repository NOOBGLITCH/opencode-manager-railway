FROM ghcr.io/chriswritescode-dev/opencode-manager:latest
COPY entrypoint-wrapper.sh /usr/local/bin/entrypoint-wrapper.sh
RUN chmod +x /usr/local/bin/entrypoint-wrapper.sh
ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]
CMD ["bun", "backend/src/index.ts"]
