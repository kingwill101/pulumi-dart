import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or Disable apply network policies on private end point in the subnet.
enum PrivateEndpointNetworkPolicies implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const PrivateEndpointNetworkPolicies(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointNetworkPolicies fromValue(String value) {
    for (final item in PrivateEndpointNetworkPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointNetworkPolicies value: $value');
  }
}
