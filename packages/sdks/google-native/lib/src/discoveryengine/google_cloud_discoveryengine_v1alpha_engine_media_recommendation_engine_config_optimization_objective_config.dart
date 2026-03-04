// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom threshold for `cvr` optimization_objective.
class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig {
  /// The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  final pulumi.Input<String> targetField;

  /// The threshold to be applied to the target (e.g., 0.5).
  final pulumi.Input<double> targetFieldValueFloat;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig].
  /// [targetField] The name of the field to target. Currently supported values: `watch-percentage`, `watch-time`.
  /// [targetFieldValueFloat] The threshold to be applied to the target (e.g., 0.5).
  GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig({
    required this.targetField,
    required this.targetFieldValueFloat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetField': targetField,
      'targetFieldValueFloat': targetFieldValueFloat,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig(
      targetField: pulumi.Input.fromValue(map['targetField'] as String),
      targetFieldValueFloat: pulumi.Input.fromValue(
        map['targetFieldValueFloat'] as double,
      ),
    );
  }
}
