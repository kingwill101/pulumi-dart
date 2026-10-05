import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides the state of this Vulnerability assessment.
enum VexAssessmentStateContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentStateContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static VexAssessmentStateContaineranalysisV1beta1 fromValue(String value) {
    for (final item in VexAssessmentStateContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VexAssessmentStateContaineranalysisV1beta1 value: $value');
  }
}
