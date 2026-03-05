/// The direction.
enum LoggingDirections {
  none("None"),
  request("Request"),
  response("Response");

  const LoggingDirections(this.wireValue);
  final String wireValue;

  static LoggingDirections fromValue(String value) {
    for (final item in LoggingDirections.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingDirections value: $value');
  }
}

