/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTPSHealthCheckProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTPSHealthCheckProxyHeaderComputeV1(this.wireValue);
  final String wireValue;

  static HTTPSHealthCheckProxyHeaderComputeV1 fromValue(String value) {
    for (final item in HTTPSHealthCheckProxyHeaderComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPSHealthCheckProxyHeaderComputeV1 value: $value');
  }
}
