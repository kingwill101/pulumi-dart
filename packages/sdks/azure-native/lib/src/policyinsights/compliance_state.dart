/// The compliance state that should be set on the resource.
enum ComplianceState {
  compliant("Compliant"),
  nonCompliant("NonCompliant"),
  unknown("Unknown");

  const ComplianceState(this.wireValue);
  final String wireValue;

  static ComplianceState fromValue(String value) {
    for (final item in ComplianceState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceState value: $value');
  }
}
