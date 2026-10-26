import 'package:pulumi/pulumi.dart' as pulumi;

/// The ipv6 access type (internal or external) when create_subnetwork is true
enum IPAllocationPolicyIpv6AccessType implements pulumi.PulumiEnum<String> {
  ipv6AccessTypeUnspecified("IPV6_ACCESS_TYPE_UNSPECIFIED"),
  internal("INTERNAL"),
  external("EXTERNAL");

  const IPAllocationPolicyIpv6AccessType(this.wireValue);
  @override
  final String wireValue;

  static IPAllocationPolicyIpv6AccessType fromValue(String value) {
    for (final item in IPAllocationPolicyIpv6AccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationPolicyIpv6AccessType value: $value');
  }
}
