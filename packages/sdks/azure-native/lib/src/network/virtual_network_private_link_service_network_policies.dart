/// Enable or Disable apply network policies on private link service in the subnet.
enum VirtualNetworkPrivateLinkServiceNetworkPolicies {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const VirtualNetworkPrivateLinkServiceNetworkPolicies(this.value);
  final String value;

  static VirtualNetworkPrivateLinkServiceNetworkPolicies fromValue(String value) {
    for (final item in VirtualNetworkPrivateLinkServiceNetworkPolicies.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkPrivateLinkServiceNetworkPolicies value: $value');
  }
}

