/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetSslProxyProxyHeaderComputeBeta {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetSslProxyProxyHeaderComputeBeta(this.wireValue);
  final String wireValue;

  static TargetSslProxyProxyHeaderComputeBeta fromValue(String value) {
    for (final item in TargetSslProxyProxyHeaderComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetSslProxyProxyHeaderComputeBeta value: $value');
  }
}
