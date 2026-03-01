enum DataAccessOptionsLogModeGameservicesV1beta {
  logModeUnspecified("LOG_MODE_UNSPECIFIED"),
  logFailClosed("LOG_FAIL_CLOSED");

  const DataAccessOptionsLogModeGameservicesV1beta(this.value);
  final String value;

  static DataAccessOptionsLogModeGameservicesV1beta fromValue(String value) {
    for (final item in DataAccessOptionsLogModeGameservicesV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccessOptionsLogModeGameservicesV1beta value: $value');
  }
}

