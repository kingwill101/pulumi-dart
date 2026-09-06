import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum FirewallPolicyNatRuleActionType implements pulumi.PulumiEnum<String> {
  valueDNAT("DNAT");

  const FirewallPolicyNatRuleActionType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyNatRuleActionType fromValue(String value) {
    for (final item in FirewallPolicyNatRuleActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyNatRuleActionType value: $value');
  }
}
