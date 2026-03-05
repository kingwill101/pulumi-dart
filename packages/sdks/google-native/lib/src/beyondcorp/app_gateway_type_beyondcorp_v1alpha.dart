/// Required. The type of network connectivity used by the AppGateway.
enum AppGatewayTypeBeyondcorpV1alpha {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppGatewayTypeBeyondcorpV1alpha(this.wireValue);
  final String wireValue;

  static AppGatewayTypeBeyondcorpV1alpha fromValue(String value) {
    for (final item in AppGatewayTypeBeyondcorpV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayTypeBeyondcorpV1alpha value: $value');
  }
}

