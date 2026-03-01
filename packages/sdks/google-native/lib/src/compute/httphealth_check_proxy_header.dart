/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPHealthCheckProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPHealthCheckProxyHeader(this.value);
  final String value;

  static HTTPHealthCheckProxyHeader fromValue(String value) {
    for (final item in HTTPHealthCheckProxyHeader.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPHealthCheckProxyHeader value: $value');
  }
}

