/// Option to specify the logging mode, which determines if and where build logs are stored.
enum BuildOptionsLogging {
  loggingUnspecified("LOGGING_UNSPECIFIED"),
  legacy("LEGACY"),
  gcsOnly("GCS_ONLY"),
  stackdriverOnly("STACKDRIVER_ONLY"),
  cloudLoggingOnly("CLOUD_LOGGING_ONLY"),
  none("NONE");

  const BuildOptionsLogging(this.value);
  final String value;

  static BuildOptionsLogging fromValue(String value) {
    for (final item in BuildOptionsLogging.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsLogging value: $value');
  }
}

