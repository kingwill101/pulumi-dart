/// Indicates whether the device is a gateway.
enum GatewayConfigGatewayType {
  gatewayTypeUnspecified("GATEWAY_TYPE_UNSPECIFIED"),
  gateway("GATEWAY"),
  nonGateway("NON_GATEWAY");

  const GatewayConfigGatewayType(this.wireValue);
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
