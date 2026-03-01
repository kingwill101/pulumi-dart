/// Name of a load balancer SKU.
enum LoadBalancerSkuName {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueGateway("Gateway");

  const LoadBalancerSkuName(this.value);
  final String value;

  static LoadBalancerSkuName fromValue(String value) {
    for (final item in LoadBalancerSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerSkuName value: $value');
  }
}

