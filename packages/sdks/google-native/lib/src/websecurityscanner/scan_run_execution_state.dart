import 'package:pulumi/pulumi.dart' as pulumi;

/// The execution state of the ScanRun.
enum ScanRunExecutionState implements pulumi.PulumiEnum<String> {
  executionStateUnspecified("EXECUTION_STATE_UNSPECIFIED"),
  queued("QUEUED"),
  scanning("SCANNING"),
  finished("FINISHED");

  const ScanRunExecutionState(this.wireValue);
  @override
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
