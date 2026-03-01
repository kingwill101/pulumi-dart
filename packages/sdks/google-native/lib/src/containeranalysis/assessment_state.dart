/// Provides the state of this Vulnerability assessment.
enum AssessmentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const AssessmentState(this.value);
  final String value;

  static AssessmentState fromValue(String value) {
    for (final item in AssessmentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentState value: $value');
  }
}

