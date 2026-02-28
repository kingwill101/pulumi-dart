# Pulumi Dart Docs Site

This directory contains the Docusaurus site for Pulumi Dart documentation.

## Run Locally

```bash
cd website
npm install
npm start
```

Default local URL: <http://localhost:3000>

## Build Static Site

```bash
cd website
npm run build
npm run serve
```

## Docs Content Layout

- `docs/get-started/`: first-project walkthrough, deploy/update/destroy lifecycle, troubleshooting
- `docs/providers/`: published usage, schema generation, smoke tests, dependency registry
- `docs/reference/`: templates, binary release strategy, and community contribution model

## Design Goal

Mirror the practical Pulumi docs flow while staying Dart-specific:

- install and wire tooling correctly
- write and deploy a stack
- iterate safely
- generate and validate provider SDKs locally
