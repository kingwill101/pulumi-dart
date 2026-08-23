/// The call logging level associated to this execution.
enum ExecutionCallLogLevel {
  callLogLevelUnspecified("CALL_LOG_LEVEL_UNSPECIFIED"),
  logAllCalls("LOG_ALL_CALLS"),
  logErrorsOnly("LOG_ERRORS_ONLY"),
  logNone("LOG_NONE");

  const ExecutionCallLogLevel(this.wireValue);
  final String wireValue;

  static ExecutionCallLogLevel fromValue(String value) {
    for (final item in ExecutionCallLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionCallLogLevel value: $value');
  }
}
