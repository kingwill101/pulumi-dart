// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final pulumi.Input<String> score;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  const PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindingsInfoTypeSensitivityScore(
      score: pulumi.Input.fromValue(map['score'] as String),
    );
  }
}
