import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
enum DaprLogLevel implements pulumi.PulumiEnum<String> {
  info("info"),
  debug("debug"),
  warn("warn"),
  error("error");

  const DaprLogLevel(this.wireValue);
  @override
  final String wireValue;

  static DaprLogLevel fromValue(String value) {
    for (final item in DaprLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaprLogLevel value: $value');
  }
}
