/// Required. The type of hosting used by the gateway.
enum GatewayType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const GatewayType(this.value);
  final String value;

  static GatewayType fromValue(String value) {
    for (final item in GatewayType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType value: $value');
  }
}

