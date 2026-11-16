// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final pulumi.Input<String> score;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  const PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetInfoTypeSensitivityScore(
      score: pulumi.Input.fromValue(map['score'] as String),
    );
  }
}
