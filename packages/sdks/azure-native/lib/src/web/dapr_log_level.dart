/// Sets the log level for the Dapr sidecar. Allowed values are debug, info, warn, error. Default is info.
enum DaprLogLevel {
  info("info"),
  debug("debug"),
  warn("warn"),
  error("error");

  const DaprLogLevel(this.wireValue);
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
