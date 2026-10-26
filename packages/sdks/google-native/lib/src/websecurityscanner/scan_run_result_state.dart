import 'package:pulumi/pulumi.dart' as pulumi;

/// The result state of the ScanRun. This field is only available after the execution state reaches "FINISHED".
enum ScanRunResultState implements pulumi.PulumiEnum<String> {
  resultStateUnspecified("RESULT_STATE_UNSPECIFIED"),
  success("SUCCESS"),
  error("ERROR"),
  killed("KILLED");

  const ScanRunResultState(this.wireValue);
  @override
  final String wireValue;

  static ScanRunResultState fromValue(String value) {
    for (final item in ScanRunResultState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunResultState value: $value');
  }
}
