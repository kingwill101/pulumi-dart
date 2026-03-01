/// Enable or Disable apply network policies on private end point in the subnet.
enum VirtualNetworkPrivateEndpointNetworkPolicies {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueNetworkSecurityGroupEnabled("NetworkSecurityGroupEnabled"),
  valueRouteTableEnabled("RouteTableEnabled");

  const VirtualNetworkPrivateEndpointNetworkPolicies(this.value);
  final String value;

  static VirtualNetworkPrivateEndpointNetworkPolicies fromValue(String value) {
    for (final item in VirtualNetworkPrivateEndpointNetworkPolicies.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPrivateEndpointNetworkPolicies value: $value');
  }
}

