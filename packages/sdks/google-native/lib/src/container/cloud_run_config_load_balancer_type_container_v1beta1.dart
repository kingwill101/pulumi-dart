import 'package:pulumi/pulumi.dart' as pulumi;

/// Which load balancer type is installed for Cloud Run.
enum CloudRunConfigLoadBalancerTypeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  loadBalancerTypeUnspecified("LOAD_BALANCER_TYPE_UNSPECIFIED"),
  loadBalancerTypeExternal("LOAD_BALANCER_TYPE_EXTERNAL"),
  loadBalancerTypeInternal("LOAD_BALANCER_TYPE_INTERNAL");

  const CloudRunConfigLoadBalancerTypeContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static CloudRunConfigLoadBalancerTypeContainerV1beta1 fromValue(String value) {
    for (final item in CloudRunConfigLoadBalancerTypeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudRunConfigLoadBalancerTypeContainerV1beta1 value: $value');
  }
}
