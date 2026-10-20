import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogModeComputeV1 implements pulumi.PulumiEnum<String> {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static LogConfigDataAccessOptionsLogModeComputeV1 fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigDataAccessOptionsLogModeComputeV1 value: $value');
  }
}
