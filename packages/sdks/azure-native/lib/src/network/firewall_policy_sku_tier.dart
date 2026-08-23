/// Tier of Firewall Policy.
enum FirewallPolicySkuTier {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic");

  const FirewallPolicySkuTier(this.wireValue);
  final String wireValue;

  static FirewallPolicySkuTier fromValue(String value) {
    for (final item in FirewallPolicySkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicySkuTier value: $value');
  }
}
