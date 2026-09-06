import 'package:pulumi/pulumi.dart' as pulumi;

/// Log level.
enum LogLevel implements pulumi.PulumiEnum<String> {
  valueOff("Off"),
  valueVerbose("Verbose"),
  valueInformation("Information"),
  valueWarning("Warning"),
  valueError("Error");

  const LogLevel(this.wireValue);
  @override
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
