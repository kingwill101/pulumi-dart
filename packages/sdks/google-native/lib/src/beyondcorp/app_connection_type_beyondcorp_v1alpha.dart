/// Required. The type of network connectivity used by the AppConnection.
enum AppConnectionTypeBeyondcorpV1alpha {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppConnectionTypeBeyondcorpV1alpha(this.wireValue);
  final String wireValue;

  static AppConnectionTypeBeyondcorpV1alpha fromValue(String value) {
    for (final item in AppConnectionTypeBeyondcorpV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppConnectionTypeBeyondcorpV1alpha value: $value');
  }
}

