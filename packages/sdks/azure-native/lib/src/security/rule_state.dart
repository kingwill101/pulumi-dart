/// Possible states of the rule
enum RuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueExpired("Expired");

  const RuleState(this.value);
  final String value;

  static RuleState fromValue(String value) {
    for (final item in RuleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleState value: $value');
  }
}

