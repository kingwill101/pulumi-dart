import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'config',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'allowed',
          description: 'Verifies properties',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, report) {
              if (args.type != 'simple:index:Resource') return;
              final config = args.getConfig<Map<String, Object?>>();
              if (args.props['value'] != config['value']) {
                report('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
