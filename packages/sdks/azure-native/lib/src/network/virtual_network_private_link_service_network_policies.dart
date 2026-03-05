/// Enable or Disable apply network policies on private link service in the subnet.
enum VirtualNetworkPrivateLinkServiceNetworkPolicies {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const VirtualNetworkPrivateLinkServiceNetworkPolicies(this.wireValue);
  final String wireValue;

  static VirtualNetworkPrivateLinkServiceNetworkPolicies fromValue(String value) {
    for (final item in VirtualNetworkPrivateLinkServiceNetworkPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPrivateLinkServiceNetworkPolicies value: $value');
  }
}

