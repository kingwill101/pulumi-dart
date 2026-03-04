enum DataAccessOptionsLogMode {
  logModeUnspecified("LOG_MODE_UNSPECIFIED"),
  logFailClosed("LOG_FAIL_CLOSED");

  const DataAccessOptionsLogMode(this.wireValue);
  final String wireValue;

  static DataAccessOptionsLogMode fromValue(String value) {
    for (final item in DataAccessOptionsLogMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccessOptionsLogMode value: $value');
  }
}
