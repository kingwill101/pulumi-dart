/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTP2HealthCheckProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTP2HealthCheckProxyHeader(this.wireValue);
  final String wireValue;

  static HTTP2HealthCheckProxyHeader fromValue(String value) {
    for (final item in HTTP2HealthCheckProxyHeader.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTP2HealthCheckProxyHeader value: $value');
  }
}
