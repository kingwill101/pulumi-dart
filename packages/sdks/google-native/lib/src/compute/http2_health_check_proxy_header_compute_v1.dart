/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum HTTP2HealthCheckProxyHeaderComputeV1 {
  none("NONE"),
  proxyV1("PROXY_V1");

  const HTTP2HealthCheckProxyHeaderComputeV1(this.wireValue);
  final String wireValue;

  static HTTP2HealthCheckProxyHeaderComputeV1 fromValue(String value) {
    for (final item in HTTP2HealthCheckProxyHeaderComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTP2HealthCheckProxyHeaderComputeV1 value: $value');
  }
}

