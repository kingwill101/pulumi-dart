/// Required. The type of network connectivity used by the AppGateway.
enum AppGatewayType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppGatewayType(this.wireValue);
  final String wireValue;

  static AppGatewayType fromValue(String value) {
    for (final item in AppGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayType value: $value');
  }
}
