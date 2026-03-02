// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_explanation_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_prediction_drift_detection_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_training_dataset_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_training_prediction_skew_detection_config_response.dart';

/// The objective configuration for model monitoring, including the information needed to detect anomalies for one particular model.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse {
  /// The config for integrating with Vertex Explainable AI.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigResponse> explanationConfig;
  /// The config for drift of prediction data.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse> predictionDriftDetectionConfig;
  /// Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse> trainingDataset;
  /// The config for skew between training data and prediction data.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse> trainingPredictionSkewDetectionConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse].
  /// [explanationConfig] The config for integrating with Vertex Explainable AI.
  /// [predictionDriftDetectionConfig] The config for drift of prediction data.
  /// [trainingDataset] Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  /// [trainingPredictionSkewDetectionConfig] The config for skew between training data and prediction data.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse({
    required this.explanationConfig,
    required this.predictionDriftDetectionConfig,
    required this.trainingDataset,
    required this.trainingPredictionSkewDetectionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explanationConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigResponse, Map<String, dynamic>>(explanationConfig, (value) => value.toMap()),
      'predictionDriftDetectionConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse, Map<String, dynamic>>(predictionDriftDetectionConfig, (value) => value.toMap()),
      'trainingDataset': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse, Map<String, dynamic>>(trainingDataset, (value) => value.toMap()),
      'trainingPredictionSkewDetectionConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse, Map<String, dynamic>>(trainingPredictionSkewDetectionConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse(
      explanationConfig: (GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigResponse.fromMap((map['explanationConfig'] as Map).cast<String, dynamic>())).input(),
      predictionDriftDetectionConfig: (GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse.fromMap((map['predictionDriftDetectionConfig'] as Map).cast<String, dynamic>())).input(),
      trainingDataset: (GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse.fromMap((map['trainingDataset'] as Map).cast<String, dynamic>())).input(),
      trainingPredictionSkewDetectionConfig: (GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse.fromMap((map['trainingPredictionSkewDetectionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

