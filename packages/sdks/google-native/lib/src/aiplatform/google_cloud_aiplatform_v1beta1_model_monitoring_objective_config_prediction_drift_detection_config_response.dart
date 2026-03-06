// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_threshold_config_response.dart';

/// The config for Prediction data drift detection.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse {
  /// Key is the feature name and value is the threshold. The threshold here is against attribution score distance between different time windows.
  final pulumi.Input<Map<String, String>> attributionScoreDriftThresholds;
  /// Drift anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ThresholdConfigResponse> defaultDriftThreshold;
  /// Key is the feature name and value is the threshold. If a feature needs to be monitored for drift, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between different time windws.
  final pulumi.Input<Map<String, String>> driftThresholds;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse].
  /// [attributionScoreDriftThresholds] Key is the feature name and value is the threshold. The threshold here is against attribution score distance between different time windows.
  /// [defaultDriftThreshold] Drift anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  /// [driftThresholds] Key is the feature name and value is the threshold. If a feature needs to be monitored for drift, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between different time windws.
  const GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse({
    required this.attributionScoreDriftThresholds,
    required this.defaultDriftThreshold,
    required this.driftThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributionScoreDriftThresholds': attributionScoreDriftThresholds,
      'defaultDriftThreshold': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ThresholdConfigResponse, Map<String, dynamic>>(defaultDriftThreshold, (value) => value.toMap()),
      'driftThresholds': driftThresholds,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse(
      attributionScoreDriftThresholds: pulumi.Input.fromValue((map['attributionScoreDriftThresholds'] as Map).cast<String, String>()),
      defaultDriftThreshold: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ThresholdConfigResponse.fromMap((map['defaultDriftThreshold']! as Map).cast<String, dynamic>())),
      driftThresholds: pulumi.Input.fromValue((map['driftThresholds'] as Map).cast<String, String>()),
    );
  }
}

