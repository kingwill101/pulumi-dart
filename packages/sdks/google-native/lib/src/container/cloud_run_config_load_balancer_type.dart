/// Which load balancer type is installed for Cloud Run.
enum CloudRunConfigLoadBalancerType {
  loadBalancerTypeUnspecified("LOAD_BALANCER_TYPE_UNSPECIFIED"),
  loadBalancerTypeExternal("LOAD_BALANCER_TYPE_EXTERNAL"),
  loadBalancerTypeInternal("LOAD_BALANCER_TYPE_INTERNAL");

  const CloudRunConfigLoadBalancerType(this.value);
  final String value;

  static CloudRunConfigLoadBalancerType fromValue(String value) {
    for (final item in CloudRunConfigLoadBalancerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudRunConfigLoadBalancerType value: $value');
  }
}

