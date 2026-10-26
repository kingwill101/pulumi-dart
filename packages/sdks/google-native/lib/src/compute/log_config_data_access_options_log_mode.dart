import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogMode implements pulumi.PulumiEnum<String> {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogMode(this.wireValue);
  @override
  final String wireValue;

  static LogConfigDataAccessOptionsLogMode fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigDataAccessOptionsLogMode value: $value');
  }
}
