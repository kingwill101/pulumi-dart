---
sidebar_position: 1
---

# Author a Policy Pack in Dart

Pulumi Dart includes a Policy as Code SDK in `package:pulumi_policy`.

Use this when you want to enforce organization rules during `pulumi preview`
and `pulumi up`, including validation and optional remediation behavior.

## Install

```bash
dart pub add pulumi_policy
```

## Minimal policy pack

Create a policy pack entrypoint and register `PolicyPack` in `main`:

```dart
import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'simple',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'require-owner-tag',
          description: 'Resources must include an owner tag.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:s3/bucket:Bucket',
              (props, args, reportViolation) {
                final tags = props['tags'];
                if (tags is! Map || !tags.containsKey('owner')) {
                  reportViolation('Missing required owner tag.');
                }
              },
            ),
          ],
        ),
      ],
    ),
  );
}
```

## Core policy types

- `ResourceValidationPolicy`: checks individual resources.
- `StackValidationPolicy`: checks the full stack graph.
- `EnforcementLevel`:
  - `advisory` (warning)
  - `mandatory` (error/fail)
  - `remediate` (mutate before final validation)
  - `disabled` (skip)

## Remediation example

```dart
import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'remediate-sample',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'enforce-encrypted',
          description: 'Enable encryption when not provided.',
          enforcementLevel: EnforcementLevel.remediate,
          remediateResource: remediateResourceOfType<Map<String, Object?>>(
            'aws:s3/bucket:Bucket',
            (props, args) {
              if (props['serverSideEncryptionConfiguration'] != null) {
                return null;
              }
              return <String, Object?>{
                'serverSideEncryptionConfiguration': {
                  'rule': {'applyServerSideEncryptionByDefault': {'sseAlgorithm': 'AES256'}},
                },
              };
            },
          ),
        ),
      ],
    ),
  );
}
```

## Policy config and schema

Use `configSchema` and `args.getConfig<T>()` to make policies configurable.

```dart
ResourceValidationPolicy(
  name: 'allowed-names',
  description: 'Only selected names are allowed.',
  configSchema: PolicyConfigSchema(
    properties: {
      'names': {'type': 'array', 'items': {'type': 'string'}, 'minItems': 1},
    },
    required: const ['names'],
  ),
  validateResource: [
    (args, reportViolation) {
      final config = args.getConfig<Map<String, Object?>>();
      final names = (config['names'] as List<dynamic>).map((n) => n.toString());
      if (!names.contains(args.name)) {
        reportViolation('Resource name is not in the approved list.');
      }
    },
  ],
)
```

## Run with Pulumi

Attach policy packs with Pulumi CLI:

```bash
pulumi preview --policy-pack ./my_policy_pack
pulumi up --policy-pack ./my_policy_pack
```

## Resources

- Policy SDK package docs and API surface:
  - `packages/policy/lib/pulumi_policy.dart`
  - `packages/policy/lib/src/policy.dart`
- Policy package README with templates/macros:
  - `packages/policy/README.md`
- Dart policy integration fixtures:
  - `integration_tests/policy_dart/`
- Full policy integration test matrix:
  - `integration_tests/upstream_policy_plugin_automation_dart_test.go`

## Upstream Pulumi docs

- Policy CLI command group:
  - https://www.pulumi.com/docs/iac/cli/commands/pulumi_policy/
- Publish policy packs:
  - https://www.pulumi.com/docs/iac/cli/commands/pulumi_policy_publish/
- Enable policy packs:
  - https://www.pulumi.com/docs/iac/cli/commands/pulumi_policy_enable/
- Disable policy packs:
  - https://www.pulumi.com/docs/iac/cli/commands/pulumi_policy_disable/
- Pulumi Policy SDK references (upstream languages):
  - TypeScript: https://www.pulumi.com/docs/reference/pkg/nodejs/pulumi/policy/
  - Python: https://www.pulumi.com/docs/reference/pkg/python/pulumi_policy/

## Next steps

- [Author a provider plugin in Dart](../providers/provider-authoring.md)
- [Generate provider SDKs from schemas](../providers/generate-provider-sdk.md)
