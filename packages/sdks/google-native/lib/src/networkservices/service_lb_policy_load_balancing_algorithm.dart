/// Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
enum ServiceLbPolicyLoadBalancingAlgorithm {
  loadBalancingAlgorithmUnspecified("LOAD_BALANCING_ALGORITHM_UNSPECIFIED"),
  sprayToWorld("SPRAY_TO_WORLD"),
  sprayToRegion("SPRAY_TO_REGION"),
  waterfallByRegion("WATERFALL_BY_REGION"),
  waterfallByZone("WATERFALL_BY_ZONE");

  const ServiceLbPolicyLoadBalancingAlgorithm(this.value);
  final String value;

  static ServiceLbPolicyLoadBalancingAlgorithm fromValue(String value) {
    for (final item in ServiceLbPolicyLoadBalancingAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceLbPolicyLoadBalancingAlgorithm value: $value');
  }
}

