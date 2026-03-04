/// The rule type of the governance rule, defines the source of the rule e.g. Integrated
enum GovernanceRuleType {
  valueIntegrated("Integrated"),
  valueServiceNow("ServiceNow");

  const GovernanceRuleType(this.wireValue);
  final String wireValue;

  static GovernanceRuleType fromValue(String value) {
    for (final item in GovernanceRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GovernanceRuleType value: $value');
  }
}
