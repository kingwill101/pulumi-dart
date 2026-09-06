import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum FirewallPolicyNatRuleCollectionActionType implements pulumi.PulumiEnum<String> {
  valueDNAT("DNAT");

  const FirewallPolicyNatRuleCollectionActionType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyNatRuleCollectionActionType fromValue(String value) {
    for (final item in FirewallPolicyNatRuleCollectionActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyNatRuleCollectionActionType value: $value');
  }
}
