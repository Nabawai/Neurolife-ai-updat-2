FROM ollama/ollama:latest

COPY start.sh /opt/neurolife/start.sh
RUN chmod +x /opt/neurolife/start.sh

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_MODEL=qwen2.5:3b
ENV OLLAMA_EMBED_MODEL=nomic-embed-text
ENV SIOX_AUTO_PULL_MODEL=1

EXPOSE 11434

ENTRYPOINT ["/opt/neurolife/start.sh"]
