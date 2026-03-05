/// Required. The type of hosting used by the AppGateway.
enum AppGatewayHostTypeBeyondcorpV1alpha {
  hostTypeUnspecified("HOST_TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const AppGatewayHostTypeBeyondcorpV1alpha(this.wireValue);
  final String wireValue;

  static AppGatewayHostTypeBeyondcorpV1alpha fromValue(String value) {
    for (final item in AppGatewayHostTypeBeyondcorpV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayHostTypeBeyondcorpV1alpha value: $value');
  }
}

