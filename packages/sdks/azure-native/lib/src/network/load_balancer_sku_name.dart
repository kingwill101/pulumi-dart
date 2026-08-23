/// Name of a load balancer SKU.
enum LoadBalancerSkuName {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueGateway("Gateway");

  const LoadBalancerSkuName(this.wireValue);
  final String wireValue;

  static LoadBalancerSkuName fromValue(String value) {
    for (final item in LoadBalancerSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerSkuName value: $value');
  }
}
