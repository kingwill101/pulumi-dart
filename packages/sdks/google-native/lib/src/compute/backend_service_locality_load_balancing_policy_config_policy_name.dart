/// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
enum BackendServiceLocalityLoadBalancingPolicyConfigPolicyName {
  invalidLbPolicy("INVALID_LB_POLICY"),
  leastRequest("LEAST_REQUEST"),
  maglev("MAGLEV"),
  originalDestination("ORIGINAL_DESTINATION"),
  random("RANDOM"),
  ringHash("RING_HASH"),
  roundRobin("ROUND_ROBIN"),
  weightedMaglev("WEIGHTED_MAGLEV");

  const BackendServiceLocalityLoadBalancingPolicyConfigPolicyName(
    this.wireValue,
  );
  final String wireValue;

  static BackendServiceLocalityLoadBalancingPolicyConfigPolicyName fromValue(
    String value,
  ) {
    for (final item
        in BackendServiceLocalityLoadBalancingPolicyConfigPolicyName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BackendServiceLocalityLoadBalancingPolicyConfigPolicyName value: $value',
    );
  }
}
