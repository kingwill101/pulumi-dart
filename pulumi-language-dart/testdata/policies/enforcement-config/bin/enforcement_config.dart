import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'enforcement-config',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'false',
          description: 'Verifies property is false',
          enforcementLevel: EnforcementLevel.advisory,
          validateResource: [
            (args, report) {
              if (args.type == 'simple:index:Resource' &&
                  args.props['value'] == true) {
                report('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
