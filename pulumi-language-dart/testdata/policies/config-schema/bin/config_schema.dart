import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'config-schema',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'validator',
          description: 'Verifies property matches config',
          enforcementLevel: EnforcementLevel.advisory,
          configSchema: PolicyConfigSchema(
            properties: {
              'value': {'type': 'boolean'},
              'names': {
                'type': 'array',
                'items': {'type': 'string'},
                'minItems': 1,
              },
            },
            required: const ['value', 'names'],
          ),
          validateResource: [
            (args, report) {
              if (args.type != 'simple:index:Resource') return;
              final config = args.getConfig<Map<String, Object?>>();
              final names = (config['names'] as List).cast<String>();
              if (names.contains(args.name) &&
                  args.props['value'] != config['value']) {
                report('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
