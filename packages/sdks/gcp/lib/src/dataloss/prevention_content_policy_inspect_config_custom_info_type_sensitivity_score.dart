// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final pulumi.Input<String> score;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  const PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore(
      score: pulumi.Input.fromValue(map['score'] as String),
    );
  }
}
