import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides the state of this Vulnerability assessment.
enum VexAssessmentStateContaineranalysisV1alpha1 implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentStateContaineranalysisV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static VexAssessmentStateContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in VexAssessmentStateContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VexAssessmentStateContaineranalysisV1alpha1 value: $value');
  }
}
