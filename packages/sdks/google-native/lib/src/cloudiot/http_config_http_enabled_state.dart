/// If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
enum HttpConfigHttpEnabledState {
  httpStateUnspecified("HTTP_STATE_UNSPECIFIED"),
  httpEnabled("HTTP_ENABLED"),
  httpDisabled("HTTP_DISABLED");

  const HttpConfigHttpEnabledState(this.wireValue);
  final String wireValue;

  static HttpConfigHttpEnabledState fromValue(String value) {
    for (final item in HttpConfigHttpEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpConfigHttpEnabledState value: $value');
  }
}
