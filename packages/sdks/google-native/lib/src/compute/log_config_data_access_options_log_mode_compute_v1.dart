/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogModeComputeV1 {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogModeComputeV1(this.wireValue);
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

