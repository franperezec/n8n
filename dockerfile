FROM n8nio/n8n:latest

EXPOSE 5678

ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
CMD ["n8n"]
