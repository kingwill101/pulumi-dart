/// The execution state of the ScanRun.
enum ScanRunExecutionState {
  executionStateUnspecified("EXECUTION_STATE_UNSPECIFIED"),
  queued("QUEUED"),
  scanning("SCANNING"),
  finished("FINISHED");

  const ScanRunExecutionState(this.wireValue);
  final String wireValue;

  static ScanRunExecutionState fromValue(String value) {
    for (final item in ScanRunExecutionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunExecutionState value: $value');
  }
}

