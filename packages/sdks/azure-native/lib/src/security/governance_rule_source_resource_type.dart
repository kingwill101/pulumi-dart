import 'package:pulumi/pulumi.dart' as pulumi;

/// The governance rule source, what the rule affects, e.g. Assessments
enum GovernanceRuleSourceResourceType implements pulumi.PulumiEnum<String> {
  assessments("Assessments");

  const GovernanceRuleSourceResourceType(this.wireValue);
  @override
  final String wireValue;

  static GovernanceRuleSourceResourceType fromValue(String value) {
    for (final item in GovernanceRuleSourceResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GovernanceRuleSourceResourceType value: $value');
  }
}
