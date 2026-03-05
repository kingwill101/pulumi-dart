/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogMode {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogMode(this.wireValue);
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

