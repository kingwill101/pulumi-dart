/// The state of the managed rule. Defaults to Disabled if not specified.
enum ManagedRuleEnabledState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ManagedRuleEnabledState(this.value);
  final String value;

  static ManagedRuleEnabledState fromValue(String value) {
    for (final item in ManagedRuleEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleEnabledState value: $value');
  }
}

