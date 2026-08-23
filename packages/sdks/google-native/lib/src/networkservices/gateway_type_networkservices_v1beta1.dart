/// Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.
enum GatewayTypeNetworkservicesV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  openMesh("OPEN_MESH"),
  secureWebGateway("SECURE_WEB_GATEWAY");

  const GatewayTypeNetworkservicesV1beta1(this.wireValue);
  final String wireValue;

  static GatewayTypeNetworkservicesV1beta1 fromValue(String value) {
    for (final item in GatewayTypeNetworkservicesV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayTypeNetworkservicesV1beta1 value: $value');
  }
}
