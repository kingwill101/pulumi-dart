/// Which load balancer type is installed for Cloud Run.
enum CloudRunConfigLoadBalancerTypeContainerV1beta1 {
  loadBalancerTypeUnspecified("LOAD_BALANCER_TYPE_UNSPECIFIED"),
  loadBalancerTypeExternal("LOAD_BALANCER_TYPE_EXTERNAL"),
  loadBalancerTypeInternal("LOAD_BALANCER_TYPE_INTERNAL");

  const CloudRunConfigLoadBalancerTypeContainerV1beta1(this.value);
  final String value;

  static CloudRunConfigLoadBalancerTypeContainerV1beta1 fromValue(String value) {
    for (final item in CloudRunConfigLoadBalancerTypeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudRunConfigLoadBalancerTypeContainerV1beta1 value: $value');
  }
}

