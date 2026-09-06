import 'package:pulumi/pulumi.dart' as pulumi;

/// Attest category of this assignment
enum AttestationComplianceState implements pulumi.PulumiEnum<String> {
  unknown("unknown"),
  compliant("compliant"),
  nonCompliant("nonCompliant");

  const AttestationComplianceState(this.wireValue);
  @override
  final String wireValue;

  static AttestationComplianceState fromValue(String value) {
    for (final item in AttestationComplianceState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttestationComplianceState value: $value');
  }
}
