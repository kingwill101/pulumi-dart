import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum FirewallPolicyFilterRuleCollectionActionType implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const FirewallPolicyFilterRuleCollectionActionType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyFilterRuleCollectionActionType fromValue(String value) {
    for (final item in FirewallPolicyFilterRuleCollectionActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyFilterRuleCollectionActionType value: $value');
  }
}
