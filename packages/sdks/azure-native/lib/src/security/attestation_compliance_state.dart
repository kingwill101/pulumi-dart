/// Attest category of this assignment
enum AttestationComplianceState {
  valueUnknown("unknown"),
  valueCompliant("compliant"),
  valueNonCompliant("nonCompliant");

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
