/// The governance rule source, what the rule affects, e.g. Assessments
enum GovernanceRuleSourceResourceType {
  valueAssessments("Assessments");

  const GovernanceRuleSourceResourceType(this.wireValue);
  final String wireValue;

  static GovernanceRuleSourceResourceType fromValue(String value) {
    for (final item in GovernanceRuleSourceResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GovernanceRuleSourceResourceType value: $value',
    );
  }
}
