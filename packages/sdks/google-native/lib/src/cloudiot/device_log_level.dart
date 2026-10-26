import 'package:pulumi/pulumi.dart' as pulumi;

/// **Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.
enum DeviceLogLevel implements pulumi.PulumiEnum<String> {
  logLevelUnspecified("LOG_LEVEL_UNSPECIFIED"),
  none("NONE"),
  error("ERROR"),
  info("INFO"),
  debug("DEBUG");

  const DeviceLogLevel(this.wireValue);
  @override
  final String wireValue;

  static DeviceLogLevel fromValue(String value) {
    for (final item in DeviceLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceLogLevel value: $value');
  }
}
