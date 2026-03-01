// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

