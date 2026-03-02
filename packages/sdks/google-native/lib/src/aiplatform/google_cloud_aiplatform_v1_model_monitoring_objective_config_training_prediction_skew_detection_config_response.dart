// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_threshold_config_response.dart';

/// The config for Training & Prediction data skew detection. It specifies the training dataset sources and the skew detection parameters.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse {
  /// Key is the feature name and value is the threshold. The threshold here is against attribution score distance between the training and prediction feature.
  final pulumi.Input<Map<String, String>> attributionScoreSkewThresholds;
  /// Skew anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  final pulumi.Input<GoogleCloudAiplatformV1ThresholdConfigResponse> defaultSkewThreshold;
  /// Key is the feature name and value is the threshold. If a feature needs to be monitored for skew, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between the training and prediction feature.
  final pulumi.Input<Map<String, String>> skewThresholds;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse].
  /// [attributionScoreSkewThresholds] Key is the feature name and value is the threshold. The threshold here is against attribution score distance between the training and prediction feature.
  /// [defaultSkewThreshold] Skew anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  /// [skewThresholds] Key is the feature name and value is the threshold. If a feature needs to be monitored for skew, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between the training and prediction feature.
  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse({
    required this.attributionScoreSkewThresholds,
    required this.defaultSkewThreshold,
    required this.skewThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributionScoreSkewThresholds': attributionScoreSkewThresholds,
      'defaultSkewThreshold': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ThresholdConfigResponse, Map<String, dynamic>>(defaultSkewThreshold, (value) => value.toMap()),
      'skewThresholds': skewThresholds,
    };
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse(
      attributionScoreSkewThresholds: ((map['attributionScoreSkewThresholds'] as Map).cast<String, String>()).input(),
      defaultSkewThreshold: (GoogleCloudAiplatformV1ThresholdConfigResponse.fromMap((map['defaultSkewThreshold'] as Map).cast<String, dynamic>())).input(),
      skewThresholds: ((map['skewThresholds'] as Map).cast<String, String>()).input(),
    );
  }
}

