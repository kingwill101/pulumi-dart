/// Enable or Disable apply network policies on private link service in the subnet.
enum PrivateLinkServiceNetworkPolicies {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PrivateLinkServiceNetworkPolicies(this.value);
  final String value;

  static PrivateLinkServiceNetworkPolicies fromValue(String value) {
    for (final item in PrivateLinkServiceNetworkPolicies.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceNetworkPolicies value: $value');
  }
}

