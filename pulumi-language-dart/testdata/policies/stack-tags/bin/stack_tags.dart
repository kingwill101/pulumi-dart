import 'dart:convert';
import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'stack-tags',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'allowed',
          description: 'Verifies property equals the stack tag value',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, report) {
              if (args.type != 'simple:index:Resource') return;
              final tag = args.stackTags['value'];
              if (tag == null) {
                report("Stack tag 'value' is required");
                return;
              }
              if (args.props['value'] != jsonDecode(tag)) {
                report('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
