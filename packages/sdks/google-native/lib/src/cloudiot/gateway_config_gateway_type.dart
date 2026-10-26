import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the device is a gateway.
enum GatewayConfigGatewayType implements pulumi.PulumiEnum<String> {
  gatewayTypeUnspecified("GATEWAY_TYPE_UNSPECIFIED"),
  gateway("GATEWAY"),
  nonGateway("NON_GATEWAY");

  const GatewayConfigGatewayType(this.wireValue);
  @override
  final String wireValue;

  static GatewayConfigGatewayType fromValue(String value) {
    for (final item in GatewayConfigGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayConfigGatewayType value: $value');
  }
}
