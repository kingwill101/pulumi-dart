/// Where logs should be saved.
enum LogsPolicyDestination {
  destinationUnspecified("DESTINATION_UNSPECIFIED"),
  cloudLogging("CLOUD_LOGGING"),
  path("PATH");

  const LogsPolicyDestination(this.wireValue);
  final String wireValue;

  static LogsPolicyDestination fromValue(String value) {
    for (final item in LogsPolicyDestination.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogsPolicyDestination value: $value');
  }
}

