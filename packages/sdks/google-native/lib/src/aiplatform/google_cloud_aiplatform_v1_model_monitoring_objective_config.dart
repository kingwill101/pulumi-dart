// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_explanation_config.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_prediction_drift_detection_config.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_training_dataset.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_training_prediction_skew_detection_config.dart';

/// The objective configuration for model monitoring, including the information needed to detect anomalies for one particular model.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig {
  /// The config for integrating with Vertex Explainable AI.
  final pulumi.Input<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig>? explanationConfig;
  /// The config for drift of prediction data.
  final pulumi.Input<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig>? predictionDriftDetectionConfig;
  /// Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  final pulumi.Input<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset>? trainingDataset;
  /// The config for skew between training data and prediction data.
  final pulumi.Input<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig>? trainingPredictionSkewDetectionConfig;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig].
  /// [explanationConfig] The config for integrating with Vertex Explainable AI.
  /// [predictionDriftDetectionConfig] The config for drift of prediction data.
  /// [trainingDataset] Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  /// [trainingPredictionSkewDetectionConfig] The config for skew between training data and prediction data.
  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig({
    this.explanationConfig,
    this.predictionDriftDetectionConfig,
    this.trainingDataset,
    this.trainingPredictionSkewDetectionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explanationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig, Map<String, dynamic>>(explanationConfig, (value) => value.toMap()),
      'predictionDriftDetectionConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig, Map<String, dynamic>>(predictionDriftDetectionConfig, (value) => value.toMap()),
      'trainingDataset': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset, Map<String, dynamic>>(trainingDataset, (value) => value.toMap()),
      'trainingPredictionSkewDetectionConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig, Map<String, dynamic>>(trainingPredictionSkewDetectionConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig(
      explanationConfig: map['explanationConfig'] == null ? null : (GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig.fromMap((map['explanationConfig'] as Map).cast<String, dynamic>())).input(),
      predictionDriftDetectionConfig: map['predictionDriftDetectionConfig'] == null ? null : (GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig.fromMap((map['predictionDriftDetectionConfig'] as Map).cast<String, dynamic>())).input(),
      trainingDataset: map['trainingDataset'] == null ? null : (GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset.fromMap((map['trainingDataset'] as Map).cast<String, dynamic>())).input(),
      trainingPredictionSkewDetectionConfig: map['trainingPredictionSkewDetectionConfig'] == null ? null : (GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig.fromMap((map['trainingPredictionSkewDetectionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

