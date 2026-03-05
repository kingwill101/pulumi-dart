// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_optimization_objective_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_training_state.dart';

/// Additional config specs for a Media Recommendation engine.
class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig {
  /// The optimization objective e.g. `cvr`. This field together with optimization_objective describe engine metadata to use to control engine training and serving. Currently supported values: `ctr`, `cvr`. If not specified, we choose default based on engine type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr`
  final pulumi.Input<String>? optimizationObjective;
  /// Name and value of the custom threshold for cvr optimization_objective. For target_field `watch-time`, target_field_value must be an integer value indicating the media progress time in seconds between (0, 86400] (excludes 0, includes 86400) (e.g., 90). For target_field `watch-percentage`, the target_field_value must be a valid float value between (0, 1.0] (excludes 0, includes 1.0) (e.g., 0.5).
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig>? optimizationObjectiveConfig;
  /// The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train engine in order to control cost. If not specified: the default value for `CreateEngine` method is `TRAINING`. The default value for `UpdateEngine` method is to keep the state the same as before.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState>? trainingState;
  /// The type of engine e.g. `recommended-for-you`. This field together with optimization_objective describe engine metadata to use to control engine training and serving. Currently supported values: `recommended-for-you`, `others-you-may-like`, `more-like-this`, `most-popular-items`.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig].
  /// [optimizationObjective] The optimization objective e.g. `cvr`. This field together with optimization_objective describe engine metadata to use to control engine training and serving. Currently supported values: `ctr`, `cvr`. If not specified, we choose default based on engine type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr`
  /// [optimizationObjectiveConfig] Name and value of the custom threshold for cvr optimization_objective. For target_field `watch-time`, target_field_value must be an integer value indicating the media progress time in seconds between (0, 86400] (excludes 0, includes 86400) (e.g., 90). For target_field `watch-percentage`, the target_field_value must be a valid float value between (0, 1.0] (excludes 0, includes 1.0) (e.g., 0.5).
  /// [trainingState] The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train engine in order to control cost. If not specified: the default value for `CreateEngine` method is `TRAINING`. The default value for `UpdateEngine` method is to keep the state the same as before.
  /// [type] The type of engine e.g. `recommended-for-you`. This field together with optimization_objective describe engine metadata to use to control engine training and serving. Currently supported values: `recommended-for-you`, `others-you-may-like`, `more-like-this`, `most-popular-items`.
  GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig({
    this.optimizationObjective,
    this.optimizationObjectiveConfig,
    this.trainingState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optimizationObjective': ?optimizationObjective,
      'optimizationObjectiveConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, Map<String, dynamic>>(optimizationObjectiveConfig, (value) => value.toMap()),
      'trainingState': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState, String>(trainingState, (value) => value.wireValue),
      'type': type,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig(
      optimizationObjective: (() { final guardedValue = map['optimizationObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimizationObjectiveConfig: (() { final guardedValue = map['optimizationObjectiveConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingState: (() { final guardedValue = map['trainingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState.fromValue(guardedValue as String)); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

