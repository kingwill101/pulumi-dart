/// Attest category of this assignment
enum AttestationComplianceState {
  unknown("unknown"),
  compliant("compliant"),
  nonCompliant("nonCompliant");

  const AttestationComplianceState(this.wireValue);
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
