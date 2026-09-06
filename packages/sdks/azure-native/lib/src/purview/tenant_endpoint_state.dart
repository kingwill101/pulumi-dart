import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the state of tenant endpoint.
enum TenantEndpointState implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  disabled("Disabled"),
  enabled("Enabled");

  const TenantEndpointState(this.wireValue);
  @override
  final String wireValue;

  static TenantEndpointState fromValue(String value) {
    for (final item in TenantEndpointState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TenantEndpointState value: $value');
  }
}
