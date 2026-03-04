/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetSslProxyProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetSslProxyProxyHeader(this.wireValue);
  final String wireValue;

  static TargetSslProxyProxyHeader fromValue(String value) {
    for (final item in TargetSslProxyProxyHeader.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetSslProxyProxyHeader value: $value');
  }
}
