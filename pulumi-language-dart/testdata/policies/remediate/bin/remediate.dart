import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'remediate',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'fixup',
          description: 'Sets property to config',
          enforcementLevel: EnforcementLevel.remediate,
          remediateResource: (args) {
            if (args.type != 'simple:index:Resource') return null;
            final value = args.getConfig<Map<String, Object?>>()['value'];
            return value == args.props['value'] ? null : {'value': value};
          },
        ),
      ],
    ),
  );
}
