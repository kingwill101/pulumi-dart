/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum SSLHealthCheckProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const SSLHealthCheckProxyHeaderComputeBeta(this.wireValue);
  final String wireValue;

  static SSLHealthCheckProxyHeaderComputeBeta fromValue(String value) {
    for (final item in SSLHealthCheckProxyHeaderComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSLHealthCheckProxyHeaderComputeBeta value: $value');
  }
}

