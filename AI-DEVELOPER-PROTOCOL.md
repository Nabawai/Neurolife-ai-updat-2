# NeuroLife AI Developer Protocol

## 1. Discovery boundary

This public repository is an onboarding index. It is not the production GitOps repository.

A new AI developer should use it to learn the protocol, then switch to the live NeuroLife Control Plane only after the owner supplies a current NLB session link.

## 2. Session entrypoint

Owner-supplied form:

`https://neurolife.cloud/connect.php/<NLB-TICKET>`

The ticket is a live access credential. Do not publish, persist, mirror, or place it in public source control.

## 3. Read before write

Before any mutation, inspect:

- developer handoff
- native/current runtime truth
- REG907
- updater status
- Pull Bridge status
- health and diagnostics relevant to the requested change

The live platform is the authority. Snapshots are evidence, not guaranteed current state.

## 4. Change construction

Build changes against current live hashes. Prefer complete-file writes through the governed ChangeSet path. Detect baseline drift before mutation.

For update work, the server should validate and build the production package. Do not require the owner to move ZIP files between AI chat and hosting when the governed transport is healthy.

## 5. Production transport

Production GitOps is intentionally private.

The public repository must never become the production mission source.

A public discovery repository and a private production GitOps repository serve different purposes:

- Public: discovery, documentation, machine-readable onboarding.
- Private: missions, signed payload pointers, production authorization context.

## 6. Governed execution

Expected sequence:

1. Live Truth
2. ChangeSet
3. Validation
4. Private GitOps publication
5. Pull Bridge
6. Package build
7. Prove
8. Owner Policy / explicit authorization when required
9. Apply
10. Fresh Verify on a new request boundary
11. REG907
12. Stable/verified receipt

Do not skip stages because a previous mission passed them.

## 7. Release integrity

The following are mandatory release invariants:

- `REG907_RELEASE_ALIAS_PARITY`
- `REG907_COMPONENT_METADATA_NO_DRIFT`

MAIN, BOT, and NODE_CLOUD metadata must remain coherent.

## 8. Secret handling

Never publish or persist:

- NLB tickets
- Arm secrets
- Commit secrets
- HMAC/signing material
- repository access tokens
- private production missions
- private package payloads
- environment credentials

Normal one-time authorization secrets must be carried in TLS response bodies and POST bodies only.

## 9. Failure behavior

Fail closed if:

- mission identity changes,
- package identity changes,
- ChangeSet identity changes,
- expected hashes drift,
- signature validation fails,
- replay protection fails,
- Prove fails,
- REG907 fails,
- Fresh Verify fails.

Do not silently switch to another mission or weaken guards.

## 10. Completion criteria

Do not report an update as complete merely because Apply returned success.

Completion requires:

- effective runtime release confirmed,
- Fresh Verify passed,
- REG907 passed,
- required planes aligned,
- backup/rollback evidence available,
- final receipt indicates verified/stable state.
