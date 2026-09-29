# NeuroLife SIOX Hosted Neural Worker

Sovereign neural execution worker for NeuroLife NODE_CLOUD.

## Runtime

Ollama-based local neural inference.

Default text model:

qwen2.5:3b

Default embedding model:

nomic-embed-text

## Endpoints

Base URL:

http://HOST:11434

Ollama health/model discovery:

GET /api/tags

Text generation:

POST /api/chat

Embeddings:

POST /api/embed

OpenAI-compatible routes are also available through supported
Ollama OpenAI compatibility endpoints.

## NeuroLife configuration

Adapter:
OLLAMA

Base URL:
http://HOST:11434

Text model:
qwen2.5:3b

Embedding model:
nomic-embed-text

This worker is not considered ACTIVE_PROVEN until
NODE_CLOUD Hosted Neural Compute certification succeeds.

External provider use by this worker:
NONE
