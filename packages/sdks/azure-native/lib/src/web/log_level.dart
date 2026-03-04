/// Log level.
enum LogLevel {
  valueOff("Off"),
  valueVerbose("Verbose"),
  valueInformation("Information"),
  valueWarning("Warning"),
  valueError("Error");

  const LogLevel(this.wireValue);
  final String wireValue;

  static LogLevel fromValue(String value) {
    for (final item in LogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogLevel value: $value');
  }
}
