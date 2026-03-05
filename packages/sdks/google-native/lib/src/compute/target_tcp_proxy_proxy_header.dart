/// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
enum TargetTcpProxyProxyHeader {
  none("NONE"),
  proxyV1("PROXY_V1");

  const TargetTcpProxyProxyHeader(this.wireValue);
  final String wireValue;

  static TargetTcpProxyProxyHeader fromValue(String value) {
    for (final item in TargetTcpProxyProxyHeader.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetTcpProxyProxyHeader value: $value');
  }
}

