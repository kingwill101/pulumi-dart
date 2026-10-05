import 'package:pulumi/pulumi.dart' as pulumi;

/// **Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.
enum RegistryLogLevel implements pulumi.PulumiEnum<String> {
  logLevelUnspecified("LOG_LEVEL_UNSPECIFIED"),
  none("NONE"),
  error("ERROR"),
  info("INFO"),
  debug("DEBUG");

  const RegistryLogLevel(this.wireValue);
  @override
  final String wireValue;

  static RegistryLogLevel fromValue(String value) {
    for (final item in RegistryLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryLogLevel value: $value');
  }
}
