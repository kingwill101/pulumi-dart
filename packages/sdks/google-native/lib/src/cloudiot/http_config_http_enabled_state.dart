import 'package:pulumi/pulumi.dart' as pulumi;

/// If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.
enum HttpConfigHttpEnabledState implements pulumi.PulumiEnum<String> {
  httpStateUnspecified("HTTP_STATE_UNSPECIFIED"),
  httpEnabled("HTTP_ENABLED"),
  httpDisabled("HTTP_DISABLED");

  const HttpConfigHttpEnabledState(this.wireValue);
  @override
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
