import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of a load balancer SKU.
enum LoadBalancerSkuName implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueGateway("Gateway");

  const LoadBalancerSkuName(this.wireValue);
  @override
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
