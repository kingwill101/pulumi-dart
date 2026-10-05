import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies which upgrade policy to use.
enum BareMetalClusterUpgradePolicyPolicy implements pulumi.PulumiEnum<String> {
  nodePoolPolicyUnspecified("NODE_POOL_POLICY_UNSPECIFIED"),
  serial("SERIAL"),
  concurrent("CONCURRENT");

  const BareMetalClusterUpgradePolicyPolicy(this.wireValue);
  @override
  final String wireValue;

  static BareMetalClusterUpgradePolicyPolicy fromValue(String value) {
    for (final item in BareMetalClusterUpgradePolicyPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalClusterUpgradePolicyPolicy value: $value');
  }
}
