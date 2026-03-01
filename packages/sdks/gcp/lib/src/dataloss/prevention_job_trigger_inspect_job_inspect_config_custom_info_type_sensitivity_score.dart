// ignore_for_file: unused_element, unnecessary_cast


class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

