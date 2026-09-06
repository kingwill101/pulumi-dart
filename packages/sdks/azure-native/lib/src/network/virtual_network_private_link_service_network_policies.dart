import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or Disable apply network policies on private link service in the subnet.
enum VirtualNetworkPrivateLinkServiceNetworkPolicies implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const VirtualNetworkPrivateLinkServiceNetworkPolicies(this.wireValue);
  @override
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
