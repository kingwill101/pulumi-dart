---
sidebar_position: 4
---

# Preview and Deploy

Run these commands from your project directory.

## 1. Select or create a stack

```bash
pulumi stack select dev --create
```

If using local backend with passphrase encryption:

```bash
export PULUMI_CONFIG_PASSPHRASE='choose-a-strong-passphrase'
```

## 2. Preview changes

```bash
pulumi preview
```

Expected plan for the quickstart:

- `pulumi:pulumi:Stack`
- `random:index:RandomPet`

## 3. Deploy

```bash
pulumi up
```

## 4. Inspect outputs

```bash
pulumi stack output
pulumi stack output petName
```

## 5. Inspect deployed resources

```bash
pulumi stack --show-urns
```

## Understanding `petName: [unknown]` during preview

`[unknown]` in preview is normal for many provider-computed values. The final value resolves after `pulumi up`.

## Next steps

- [Update and destroy](./update-and-destroy.md)

## Related links

- [Pulumi CLI reference](https://www.pulumi.com/docs/iac/cli/commands/)
- [Troubleshooting](./troubleshooting.md)
