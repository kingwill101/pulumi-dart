// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final pulumi.Input<String> score;

  /// Creates a new [PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  const PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore(
      score: pulumi.Input.fromValue(map['score'] as String),
    );
  }
}
