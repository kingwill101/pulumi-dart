/// Report creation state.
enum ReportStateMigrationcenterV1alpha1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const ReportStateMigrationcenterV1alpha1(this.wireValue);
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
