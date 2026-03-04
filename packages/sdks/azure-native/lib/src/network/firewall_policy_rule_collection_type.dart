/// The type of the rule collection.
enum FirewallPolicyRuleCollectionType {
  valueFirewallPolicyNatRuleCollection("FirewallPolicyNatRuleCollection"),
  valueFirewallPolicyFilterRuleCollection("FirewallPolicyFilterRuleCollection");

  const FirewallPolicyRuleCollectionType(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleCollectionType fromValue(String value) {
    for (final item in FirewallPolicyRuleCollectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FirewallPolicyRuleCollectionType value: $value',
    );
  }
}
