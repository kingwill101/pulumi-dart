/// Possible states of the rule
enum RuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueExpired("Expired");

  const RuleState(this.wireValue);
  final String wireValue;

  static RuleState fromValue(String value) {
    for (final item in RuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleState value: $value');
  }
}
