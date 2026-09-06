import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Endpoint VNet Policies.
enum PrivateEndpointVNetPolicies implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueBasic("Basic");

  const PrivateEndpointVNetPolicies(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointVNetPolicies fromValue(String value) {
    for (final item in PrivateEndpointVNetPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointVNetPolicies value: $value');
  }
}
