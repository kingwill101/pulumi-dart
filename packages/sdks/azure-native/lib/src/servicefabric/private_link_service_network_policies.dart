import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or Disable apply network policies on private link service in the subnet.
enum PrivateLinkServiceNetworkPolicies implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PrivateLinkServiceNetworkPolicies(this.wireValue);
  @override
  final String wireValue;

  static PrivateLinkServiceNetworkPolicies fromValue(String value) {
    for (final item in PrivateLinkServiceNetworkPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceNetworkPolicies value: $value');
  }
}
