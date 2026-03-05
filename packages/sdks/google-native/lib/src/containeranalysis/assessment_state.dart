/// Provides the state of this Vulnerability assessment.
enum AssessmentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const AssessmentState(this.wireValue);
  final String wireValue;

  static AssessmentState fromValue(String value) {
    for (final item in AssessmentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentState value: $value');
  }
}

