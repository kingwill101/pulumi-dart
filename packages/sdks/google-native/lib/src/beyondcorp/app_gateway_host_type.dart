/// Required. The type of hosting used by the AppGateway.
enum AppGatewayHostType {
  hostTypeUnspecified("HOST_TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const AppGatewayHostType(this.wireValue);
  final String wireValue;

  static AppGatewayHostType fromValue(String value) {
    for (final item in AppGatewayHostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayHostType value: $value');
  }
}
