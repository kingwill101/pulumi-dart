// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final pulumi.Input<String> score;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  const PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore(
      score: pulumi.Input.fromValue(map['score'] as String),
    );
  }
}
