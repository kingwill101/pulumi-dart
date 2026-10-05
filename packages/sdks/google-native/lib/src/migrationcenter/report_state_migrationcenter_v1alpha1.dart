import 'package:pulumi/pulumi.dart' as pulumi;

/// Report creation state.
enum ReportStateMigrationcenterV1alpha1 implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const ReportStateMigrationcenterV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static ReportStateMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in ReportStateMigrationcenterV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReportStateMigrationcenterV1alpha1 value: $value');
  }
}
