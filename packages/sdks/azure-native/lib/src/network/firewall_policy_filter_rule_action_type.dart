/// The type of action.
enum FirewallPolicyFilterRuleActionType {
  valueAllow("Allow"),
  valueDeny("Deny");

  const FirewallPolicyFilterRuleActionType(this.wireValue);
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

