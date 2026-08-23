/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TCPHealthCheckProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TCPHealthCheckProxyHeader(this.wireValue);
  final String wireValue;

  static TCPHealthCheckProxyHeader fromValue(String value) {
    for (final item in TCPHealthCheckProxyHeader.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TCPHealthCheckProxyHeader value: $value');
  }
}
