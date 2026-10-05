import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides the state of this Vulnerability assessment.
enum VexAssessmentState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentState(this.wireValue);
  @override
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
