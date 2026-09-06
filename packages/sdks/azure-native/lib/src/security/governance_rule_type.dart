import 'package:pulumi/pulumi.dart' as pulumi;

/// The rule type of the governance rule, defines the source of the rule e.g. Integrated
enum GovernanceRuleType implements pulumi.PulumiEnum<String> {
  integrated("Integrated"),
  serviceNow("ServiceNow");

  const GovernanceRuleType(this.wireValue);
  @override
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
