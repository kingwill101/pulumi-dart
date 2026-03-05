/// Required. The type of hosting used by the gateway.
enum GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType(this.wireValue);
  final String wireValue;

  static GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType fromValue(String value) {
    for (final item in GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType value: $value');
  }
}

