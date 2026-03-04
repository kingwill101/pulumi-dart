/// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
enum GatewayType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  openMesh("OPEN_MESH"),
  secureWebGateway("SECURE_WEB_GATEWAY");

  const GatewayType(this.wireValue);
  final String wireValue;

  static GatewayType fromValue(String value) {
    for (final item in GatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType value: $value');
  }
}
