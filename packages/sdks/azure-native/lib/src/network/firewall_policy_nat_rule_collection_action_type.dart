/// The type of action.
enum FirewallPolicyNatRuleCollectionActionType {
  valueDNAT("DNAT");

  const FirewallPolicyNatRuleCollectionActionType(this.wireValue);
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

