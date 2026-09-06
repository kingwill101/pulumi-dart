import 'package:pulumi/pulumi.dart' as pulumi;

/// The owner type for the governance rule owner source
enum GovernanceRuleOwnerSourceType implements pulumi.PulumiEnum<String> {
  byTag("ByTag"),
  manually("Manually");

  const GovernanceRuleOwnerSourceType(this.wireValue);
  @override
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
