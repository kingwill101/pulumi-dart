import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of a load balancer SKU.
enum LoadBalancerSkuTier implements pulumi.PulumiEnum<String> {
  valueRegional("Regional"),
  valueGlobal("Global");

  const LoadBalancerSkuTier(this.wireValue);
  @override
  final String wireValue;

  static LoadBalancerSkuTier fromValue(String value) {
    for (final item in LoadBalancerSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerSkuTier value: $value');
  }
}
