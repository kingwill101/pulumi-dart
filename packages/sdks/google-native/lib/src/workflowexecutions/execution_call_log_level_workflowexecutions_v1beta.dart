/// The call logging level associated to this execution.
enum ExecutionCallLogLevelWorkflowexecutionsV1beta {
  callLogLevelUnspecified("CALL_LOG_LEVEL_UNSPECIFIED"),
  logAllCalls("LOG_ALL_CALLS"),
  logErrorsOnly("LOG_ERRORS_ONLY");

  const ExecutionCallLogLevelWorkflowexecutionsV1beta(this.wireValue);
  final String wireValue;

  static ExecutionCallLogLevelWorkflowexecutionsV1beta fromValue(String value) {
    for (final item in ExecutionCallLogLevelWorkflowexecutionsV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ExecutionCallLogLevelWorkflowexecutionsV1beta value: $value',
    );
  }
}
