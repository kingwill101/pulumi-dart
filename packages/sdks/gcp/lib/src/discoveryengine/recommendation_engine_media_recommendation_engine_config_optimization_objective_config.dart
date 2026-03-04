// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig {
  /// The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  final pulumi.Input<String>? targetField;

  /// The threshold to be applied to the target (e.g., 0.5).
  final pulumi.Input<double>? targetFieldValueFloat;

  /// Creates a new [RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig].
  /// [targetField] The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  /// [targetFieldValueFloat] The threshold to be applied to the target (e.g., 0.5).
  RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig({
    this.targetField,
    this.targetFieldValueFloat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetField': ?targetField,
      'targetFieldValueFloat': ?targetFieldValueFloat,
    };
  }

  factory RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecommendationEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig(
      targetField: (() {
        final guardedValue = map['targetField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetFieldValueFloat: (() {
        final guardedValue = map['targetFieldValueFloat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
