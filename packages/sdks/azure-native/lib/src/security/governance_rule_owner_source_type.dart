/// The owner type for the governance rule owner source
enum GovernanceRuleOwnerSourceType {
  valueByTag("ByTag"),
  valueManually("Manually");

  const GovernanceRuleOwnerSourceType(this.wireValue);
  final String wireValue;

  static GovernanceRuleOwnerSourceType fromValue(String value) {
    for (final item in GovernanceRuleOwnerSourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GovernanceRuleOwnerSourceType value: $value');
  }
}

