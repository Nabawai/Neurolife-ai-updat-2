#!/usr/bin/env bash
set -euo pipefail

export OLLAMA_HOST="${OLLAMA_HOST:-0.0.0.0:11434}"

ollama serve &
SERVER_PID=$!

echo "Waiting for Ollama runtime..."

READY=0
for i in $(seq 1 90); do
  if OLLAMA_HOST=127.0.0.1:11434 ollama list >/dev/null 2>&1; then
    READY=1
    break
  fi
  sleep 2
done

if [ "$READY" != "1" ]; then
  echo "Ollama failed to become ready"
  exit 1
fi

if [ "${SIOX_AUTO_PULL_MODEL:-1}" = "1" ]; then
  echo "Loading SIOX text model: ${OLLAMA_MODEL:-qwen2.5:3b}"
  OLLAMA_HOST=127.0.0.1:11434 \
    ollama pull "${OLLAMA_MODEL:-qwen2.5:3b}"

  if [ -n "${OLLAMA_EMBED_MODEL:-}" ]; then
    echo "Loading embeddings model: ${OLLAMA_EMBED_MODEL}"
    OLLAMA_HOST=127.0.0.1:11434 \
      ollama pull "${OLLAMA_EMBED_MODEL}"
  fi
fi

echo "SIOX Neural Worker READY"
wait "$SERVER_PID"
