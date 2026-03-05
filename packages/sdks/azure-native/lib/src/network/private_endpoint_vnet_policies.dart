/// Private Endpoint VNet Policies.
enum PrivateEndpointVNetPolicies {
  valueDisabled("Disabled"),
  valueBasic("Basic");

  const PrivateEndpointVNetPolicies(this.wireValue);
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

