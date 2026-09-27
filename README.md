# NeuroLife AI Developer Discovery

This repository is the **public discovery and onboarding surface** for NeuroLife AI-assisted development.

It is intentionally **not** the production GitOps transport and must never contain active tickets, one-time authorization secrets, private missions, package payloads, credentials, or production-only source artifacts.

## Project

NeuroLife is a neurosurgery and spine clinic platform with three primary planes:

- MAIN: `https://neurolife.cloud`
- BOT: `https://neurolifebot.neurolife.cloud`
- NODE_CLOUD: `https://node.neurolife.cloud`

## For any AI developer

If the owner gives you a current unified NeuroLife link such as:

`https://neurolife.cloud/connect.php/<NLB-TICKET>`

treat that link as the live authority for the current session.

Start by reading the live machine-readable handoff and current truth from the Control Plane. Typical read-only operations include:

- `developer_handoff`
- `native_current_truth`
- `runtime_truth`
- `reg907_guard`
- `updater_status`
- `full_health`
- `pull_bridge_status`

Example pattern:

`https://neurolife.cloud/connect.php/<NLB-TICKET>?op=developer_handoff`

The active ticket is supplied by the owner. **Never commit or publish it here.**

## Canonical update flow

`Owner/AI → Live Truth → ChangeSet → Server Validation → Private Production GitOps → Pull Bridge → Prove → Owner Policy → Apply → Fresh Verify → REG907 → STABLE`

Rules:

1. Read live truth before changing anything.
2. Do not assume a developer snapshot is current production truth.
3. Do not bypass Prove, owner approval, backup, REG907, or Fresh Verify.
4. Production GitOps remains private by policy.
5. One-time Arm/Commit authorization secrets belong only in TLS response/POST bodies and must never be stored in URLs, logs, public chat transcripts, or this repository.
6. MAIN, BOT, and NODE_CLOUD release metadata must remain aligned.
7. A successful update is not complete until fresh runtime verification and release parity checks pass.

## What this public repository is for

This repository exists so a new AI chat, coding agent, or developer can discover:

- what NeuroLife is,
- where the live Control Plane starts,
- which protocol to follow,
- which safety rules are mandatory,
- why production GitOps is private,
- how to avoid asking the owner to shuttle ZIP files manually.

Read next:

- [AI_DISCOVERY.json](./AI_DISCOVERY.json)
- [llms.txt](./llms.txt)
- [AI Developer Protocol](./docs/AI-DEVELOPER-PROTOCOL.md)
- [Security Rules](./SECURITY.md)

## Important

This repository is **documentation/discovery only**. It is safe to index publicly. Production missions and deployment authorization remain private.
