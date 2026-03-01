/// Exemption category of this assignment
enum ExemptionCategory {
  valueWaiver("waiver"),
  valueMitigated("mitigated");

  const ExemptionCategory(this.value);
  final String value;

  static ExemptionCategory fromValue(String value) {
    for (final item in ExemptionCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExemptionCategory value: $value');
  }
}

