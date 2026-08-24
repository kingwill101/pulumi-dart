import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'simple',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'truthiness',
          description: 'Verifies properties are true',
          enforcementLevel: EnforcementLevel.advisory,
          validateResource: [
            (args, report) {
              if (args.type == 'simple:index:Resource' &&
                  args.props['value'] == true) {
                report('This is a test warning');
              }
            },
          ],
        ),
        ResourceValidationPolicy(
          name: 'falsiness',
          description: 'Verifies properties are false',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, report) {
              if (args.type == 'simple:index:Resource' &&
                  args.props['value'] != true) {
                report('This is a test error');
              }
            },
          ],
        ),
      ],
    ),
  );
}
