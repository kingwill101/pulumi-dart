/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPSHealthCheckProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPSHealthCheckProxyHeaderComputeBeta(this.wireValue);
  final String wireValue;

  static HTTPSHealthCheckProxyHeaderComputeBeta fromValue(String value) {
    for (final item in HTTPSHealthCheckProxyHeaderComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSHealthCheckProxyHeaderComputeBeta value: $value');
  }
}

