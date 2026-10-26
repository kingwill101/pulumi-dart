import 'package:pulumi/pulumi.dart' as pulumi;

/// The ipv6 access type (internal or external) when create_subnetwork is true
enum IPAllocationPolicyIpv6AccessTypeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  ipv6AccessTypeUnspecified("IPV6_ACCESS_TYPE_UNSPECIFIED"),
  internal("INTERNAL"),
  external("EXTERNAL");

  const IPAllocationPolicyIpv6AccessTypeContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static IPAllocationPolicyIpv6AccessTypeContainerV1beta1 fromValue(String value) {
    for (final item in IPAllocationPolicyIpv6AccessTypeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationPolicyIpv6AccessTypeContainerV1beta1 value: $value');
  }
}
