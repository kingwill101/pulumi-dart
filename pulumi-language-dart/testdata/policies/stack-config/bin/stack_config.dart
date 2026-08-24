import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  final value = pulumi.Config().requireBoolean('value');
  PolicyPack(
    'stack-config',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.mandatory,
      policies: [
        ResourceValidationPolicy(
          name: 'validate-$value',
          description: 'Verifies property is $value',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, report) {
              if (args.type == 'simple:index:Resource' &&
                  args.props['value'] != value) {
                report('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
