/// Enable or Disable apply network policies on private end point in the subnet.
enum VirtualNetworkPrivateEndpointNetworkPolicies {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueNetworkSecurityGroupEnabled("NetworkSecurityGroupEnabled"),
  valueRouteTableEnabled("RouteTableEnabled");

  const VirtualNetworkPrivateEndpointNetworkPolicies(this.wireValue);
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

