import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum FirewallPolicyFilterRuleActionType implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const FirewallPolicyFilterRuleActionType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyFilterRuleActionType fromValue(String value) {
    for (final item in FirewallPolicyFilterRuleActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyFilterRuleActionType value: $value');
  }
}
