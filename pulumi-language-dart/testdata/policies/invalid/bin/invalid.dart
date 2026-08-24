import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'invalid-policy',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'all',
          description: 'Invalid policy name.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [(_, __) => throw StateError('Should never run.')],
          remediateResource: (_) => throw StateError('Should never run.'),
        ),
      ],
    ),
  );
}
