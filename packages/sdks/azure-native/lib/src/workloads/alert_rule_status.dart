/// Indicates whether the alert is in an enabled state.
enum AlertRuleStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const AlertRuleStatus(this.wireValue);
  final String wireValue;

  static AlertRuleStatus fromValue(String value) {
    for (final item in AlertRuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleStatus value: $value');
  }
}
