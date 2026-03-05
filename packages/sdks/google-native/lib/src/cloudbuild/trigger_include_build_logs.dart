/// If set to INCLUDE_BUILD_LOGS_WITH_STATUS, log url will be shown on GitHub page when build status is final. Setting this field to INCLUDE_BUILD_LOGS_WITH_STATUS for non GitHub triggers results in INVALID_ARGUMENT error.
enum TriggerIncludeBuildLogs {
  includeBuildLogsUnspecified("INCLUDE_BUILD_LOGS_UNSPECIFIED"),
  includeBuildLogsWithStatus("INCLUDE_BUILD_LOGS_WITH_STATUS");

  const TriggerIncludeBuildLogs(this.wireValue);
  final String wireValue;

  static TriggerIncludeBuildLogs fromValue(String value) {
    for (final item in TriggerIncludeBuildLogs.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerIncludeBuildLogs value: $value');
  }
}

