/// Attest category of this assignment
enum AttestationComplianceState {
  valueUnknown("unknown"),
  valueCompliant("compliant"),
  valueNonCompliant("nonCompliant");

  const AttestationComplianceState(this.value);
  final String value;

  static AttestationComplianceState fromValue(String value) {
    for (final item in AttestationComplianceState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttestationComplianceState value: $value');
  }
}

