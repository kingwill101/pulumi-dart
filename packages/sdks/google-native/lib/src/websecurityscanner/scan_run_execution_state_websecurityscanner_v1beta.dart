/// The execution state of the ScanRun.
enum ScanRunExecutionStateWebsecurityscannerV1beta {
  executionStateUnspecified("EXECUTION_STATE_UNSPECIFIED"),
  queued("QUEUED"),
  scanning("SCANNING"),
  finished("FINISHED");

  const ScanRunExecutionStateWebsecurityscannerV1beta(this.wireValue);
  final String wireValue;

  static ScanRunExecutionStateWebsecurityscannerV1beta fromValue(String value) {
    for (final item in ScanRunExecutionStateWebsecurityscannerV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ScanRunExecutionStateWebsecurityscannerV1beta value: $value',
    );
  }
}
