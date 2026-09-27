# Security Policy for the Public NeuroLife AI Discovery Repository

This repository is safe for public indexing only because it must contain documentation and non-secret discovery metadata.

## Never commit

- active NLB access tickets
- Arm or Commit one-time secrets
- GitHub tokens
- Railway tokens
- database credentials
- API keys
- private signing/HMAC material
- production mission JSON
- production package payloads
- private patient or clinic data

## Production GitOps

The production GitOps repository must remain private. Public visibility is not an acceptable workaround for AI discoverability.

## AI agents

AI agents should discover the platform here, then obtain a current live NLB link directly from the owner for authorized work.

Do not scrape, cache, or republish live session credentials.
