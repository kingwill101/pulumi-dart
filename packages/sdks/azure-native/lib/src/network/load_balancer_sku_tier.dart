/// Tier of a load balancer SKU.
enum LoadBalancerSkuTier {
  valueRegional("Regional"),
  valueGlobal("Global");

  const LoadBalancerSkuTier(this.wireValue);
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
