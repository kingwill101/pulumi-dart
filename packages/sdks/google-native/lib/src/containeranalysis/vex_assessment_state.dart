/// Provides the state of this Vulnerability assessment.
enum VexAssessmentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentState(this.value);
  final String value;

  static VexAssessmentState fromValue(String value) {
    for (final item in VexAssessmentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VexAssessmentState value: $value');
  }
}

