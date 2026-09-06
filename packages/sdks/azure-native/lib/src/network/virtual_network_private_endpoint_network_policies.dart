import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or Disable apply network policies on private end point in the subnet.
enum VirtualNetworkPrivateEndpointNetworkPolicies implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueNetworkSecurityGroupEnabled("NetworkSecurityGroupEnabled"),
  valueRouteTableEnabled("RouteTableEnabled");

  const VirtualNetworkPrivateEndpointNetworkPolicies(this.wireValue);
  @override
  final String wireValue;

  static VirtualNetworkPrivateEndpointNetworkPolicies fromValue(String value) {
    for (final item in VirtualNetworkPrivateEndpointNetworkPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPrivateEndpointNetworkPolicies value: $value');
  }
}
