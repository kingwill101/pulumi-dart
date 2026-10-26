import 'package:pulumi/pulumi.dart' as pulumi;

/// Report creation state.
enum ReportState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const ReportState(this.wireValue);
  @override
  final String wireValue;

  static ReportState fromValue(String value) {
    for (final item in ReportState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportState value: $value');
  }
}
