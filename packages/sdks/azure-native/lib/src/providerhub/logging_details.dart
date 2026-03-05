/// The detail level.
enum LoggingDetails {
  none("None"),
  body("Body");

  const LoggingDetails(this.wireValue);
  final String wireValue;

  static LoggingDetails fromValue(String value) {
    for (final item in LoggingDetails.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingDetails value: $value');
  }
}

