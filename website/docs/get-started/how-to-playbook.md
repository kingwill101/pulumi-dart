---
sidebar_position: 2
---

# How-To Playbook

## First successful `pulumi up`

- [Prerequisites](./prerequisites.md)
- [Install tooling](./install.md)
- [Create project](./create-project.md)
- [Preview and deploy](./deploy.md)

## Faster repeat runs

- Read [Runtime execution and entrypoint resolution](../reference/runtime-execution.md)
- Keep a stable entrypoint and project layout
- Reuse default compile cache under `.dart_tool/pulumi/cache/exe/`

## Use cloud providers

- Configure credentials in [Prerequisites](./prerequisites.md)
- Add provider package via [Use published provider packages](../providers/use-published-providers.md)
- Run `pulumi preview` before first `pulumi up`

## Provider not published yet

- [Generate provider SDKs from schemas](../providers/generate-provider-sdk.md)
- [Run local smoke tests](../providers/local-smoke-tests.md)
- Add dependency registry hints if required

## Clean up resources and avoid charges

- `pulumi destroy`
- `pulumi stack --show-urns`
- `pulumi stack rm <stack>` (optional)

