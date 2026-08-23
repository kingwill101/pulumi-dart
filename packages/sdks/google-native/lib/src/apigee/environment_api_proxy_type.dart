/// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
enum EnvironmentApiProxyType {
  apiProxyTypeUnspecified("API_PROXY_TYPE_UNSPECIFIED"),
  programmable("PROGRAMMABLE"),
  configurable("CONFIGURABLE");

  const EnvironmentApiProxyType(this.wireValue);
  final String wireValue;

  static EnvironmentApiProxyType fromValue(String value) {
    for (final item in EnvironmentApiProxyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentApiProxyType value: $value');
  }
}
