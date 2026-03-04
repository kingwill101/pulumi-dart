/// The type of action.
enum FirewallPolicyNatRuleActionType {
  valueDNAT("DNAT");

  const FirewallPolicyNatRuleActionType(this.wireValue);
  final String wireValue;

  static FirewallPolicyNatRuleActionType fromValue(String value) {
    for (final item in FirewallPolicyNatRuleActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FirewallPolicyNatRuleActionType value: $value',
    );
  }
}
