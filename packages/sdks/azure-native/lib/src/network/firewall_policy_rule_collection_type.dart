/// The type of the rule collection.
enum FirewallPolicyRuleCollectionType {
  valueFirewallPolicyNatRuleCollection("FirewallPolicyNatRuleCollection"),
  valueFirewallPolicyFilterRuleCollection("FirewallPolicyFilterRuleCollection");

  const FirewallPolicyRuleCollectionType(this.value);
  final String value;

  static FirewallPolicyRuleCollectionType fromValue(String value) {
    for (final item in FirewallPolicyRuleCollectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleCollectionType value: $value');
  }
}

