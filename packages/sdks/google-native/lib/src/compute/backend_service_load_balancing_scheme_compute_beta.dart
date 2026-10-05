import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
enum BackendServiceLoadBalancingSchemeComputeBeta implements pulumi.PulumiEnum<String> {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalidLoadBalancingScheme("INVALID_LOAD_BALANCING_SCHEME");

  const BackendServiceLoadBalancingSchemeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static BackendServiceLoadBalancingSchemeComputeBeta fromValue(String value) {
    for (final item in BackendServiceLoadBalancingSchemeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceLoadBalancingSchemeComputeBeta value: $value');
  }
}
