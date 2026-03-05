/// Required. The type of network connectivity used by the AppConnection.
enum AppConnectionType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppConnectionType(this.wireValue);
  final String wireValue;

  static AppConnectionType fromValue(String value) {
    for (final item in AppConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppConnectionType value: $value');
  }
}

