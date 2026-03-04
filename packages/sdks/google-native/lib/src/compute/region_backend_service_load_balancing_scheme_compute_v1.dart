/// Specifies the load balancer type. A backend service created for one type of load balancer cannot be used with another. For more information, refer to Choosing a load balancer.
enum RegionBackendServiceLoadBalancingSchemeComputeV1 {
  external("EXTERNAL"),
  externalManaged("EXTERNAL_MANAGED"),
  internal("INTERNAL"),
  internalManaged("INTERNAL_MANAGED"),
  internalSelfManaged("INTERNAL_SELF_MANAGED"),
  invalidLoadBalancingScheme("INVALID_LOAD_BALANCING_SCHEME");

  const RegionBackendServiceLoadBalancingSchemeComputeV1(this.wireValue);
  final String wireValue;

  static RegionBackendServiceLoadBalancingSchemeComputeV1 fromValue(
    String value,
  ) {
    for (final item
        in RegionBackendServiceLoadBalancingSchemeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionBackendServiceLoadBalancingSchemeComputeV1 value: $value',
    );
  }
}
