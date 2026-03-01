/// The governance rule source, what the rule affects, e.g. Assessments
enum GovernanceRuleSourceResourceType {
  valueAssessments("Assessments");

  const GovernanceRuleSourceResourceType(this.value);
  final String value;

  static GovernanceRuleSourceResourceType fromValue(String value) {
    for (final item in GovernanceRuleSourceResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GovernanceRuleSourceResourceType value: $value');
  }
}

