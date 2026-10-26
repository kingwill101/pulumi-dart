import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogModeComputeBeta implements pulumi.PulumiEnum<String> {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static LogConfigDataAccessOptionsLogModeComputeBeta fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigDataAccessOptionsLogModeComputeBeta value: $value');
  }
}
