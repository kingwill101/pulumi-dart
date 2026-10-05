import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates how to authorize and/or authenticate devices to access the gateway.
enum GatewayConfigGatewayAuthMethod implements pulumi.PulumiEnum<String> {
  gatewayAuthMethodUnspecified("GATEWAY_AUTH_METHOD_UNSPECIFIED"),
  associationOnly("ASSOCIATION_ONLY"),
  deviceAuthTokenOnly("DEVICE_AUTH_TOKEN_ONLY"),
  associationAndDeviceAuthToken("ASSOCIATION_AND_DEVICE_AUTH_TOKEN");

  const GatewayConfigGatewayAuthMethod(this.wireValue);
  @override
  final String wireValue;

  static GatewayConfigGatewayAuthMethod fromValue(String value) {
    for (final item in GatewayConfigGatewayAuthMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayConfigGatewayAuthMethod value: $value');
  }
}
