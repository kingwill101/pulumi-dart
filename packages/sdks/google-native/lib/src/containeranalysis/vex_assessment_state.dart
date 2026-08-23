/// Provides the state of this Vulnerability assessment.
enum VexAssessmentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentState(this.wireValue);
  final String wireValue;

  static VexAssessmentState fromValue(String value) {
    for (final item in VexAssessmentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VexAssessmentState value: $value');
  }
}
