import 'dart:io';
import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'dryrun',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'dry',
          description: 'Verifies properties are true on dryrun',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, report) {
              if (args.type == 'simple:index:Resource' &&
                  Platform.environment['PULUMI_DRY_RUN'] == 'true' &&
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
