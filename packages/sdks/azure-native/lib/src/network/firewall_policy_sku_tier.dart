import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of Firewall Policy.
enum FirewallPolicySkuTier implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic");

  const FirewallPolicySkuTier(this.wireValue);
  @override
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
