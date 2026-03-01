/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPHealthCheckProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPHealthCheckProxyHeaderComputeBeta(this.value);
  final String value;

  static HTTPHealthCheckProxyHeaderComputeBeta fromValue(String value) {
    for (final item in HTTPHealthCheckProxyHeaderComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPHealthCheckProxyHeaderComputeBeta value: $value');
  }
}

