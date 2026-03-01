/// Required. The type of network connectivity used by the AppConnection.
enum AppConnectionType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppConnectionType(this.value);
  final String value;

  static AppConnectionType fromValue(String value) {
    for (final item in AppConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppConnectionType value: $value');
  }
}

