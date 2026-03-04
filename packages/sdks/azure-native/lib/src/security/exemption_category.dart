/// Exemption category of this assignment
enum ExemptionCategory {
  valueWaiver("waiver"),
  valueMitigated("mitigated");

  const ExemptionCategory(this.wireValue);
  final String wireValue;

  static ExemptionCategory fromValue(String value) {
    for (final item in ExemptionCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExemptionCategory value: $value');
  }
}
