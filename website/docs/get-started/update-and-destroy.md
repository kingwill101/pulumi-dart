---
sidebar_position: 5
---

# Update and Destroy

Pulumi's lifecycle is iterative: change code, preview, apply, repeat.

## Update example

Change resource arguments in your program:

```dart
args: random.RandomPetArgs(prefix: 'dart-v2'),
```

Then run:

```bash
pulumi preview
pulumi up
```

## Understand update plans

`pulumi preview` may show:

- `update`: in-place mutation
- `replace`: create new resource then delete old (or reverse, depending on provider behavior/options)
- `create`/`delete`: resource add/remove

## Safe iteration tips

- Always review `pulumi preview` before `pulumi up`
- Use stack-specific config for environment differences
- Export critical outputs explicitly for downstream automation

## Destroy resources

```bash
pulumi destroy
```

## Remove stack metadata (optional)

```bash
pulumi stack rm dev
```

## Next steps

- [Troubleshooting](./troubleshooting.md)
- [Generate provider SDKs](../providers/generate-provider-sdk.md)

## Related links

- [Pulumi stack concepts](https://www.pulumi.com/docs/concepts/stack/)
- [Pulumi state and lifecycle](https://www.pulumi.com/docs/concepts/state/)
