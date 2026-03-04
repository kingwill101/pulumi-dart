// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_threshold_config.dart';

/// The config for Prediction data drift detection.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig {
  /// Key is the feature name and value is the threshold. The threshold here is against attribution score distance between different time windows.
  final pulumi.Input<Map<String, String>>? attributionScoreDriftThresholds;

  /// Drift anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ThresholdConfig>?
  defaultDriftThreshold;

  /// Key is the feature name and value is the threshold. If a feature needs to be monitored for drift, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between different time windws.
  final pulumi.Input<Map<String, String>>? driftThresholds;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig].
  /// [attributionScoreDriftThresholds] Key is the feature name and value is the threshold. The threshold here is against attribution score distance between different time windows.
  /// [defaultDriftThreshold] Drift anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  /// [driftThresholds] Key is the feature name and value is the threshold. If a feature needs to be monitored for drift, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between different time windws.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig({
    this.attributionScoreDriftThresholds,
    this.defaultDriftThreshold,
    this.driftThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributionScoreDriftThresholds': ?attributionScoreDriftThresholds,
      'defaultDriftThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ThresholdConfig,
            Map<String, dynamic>
          >(defaultDriftThreshold, (value) => value.toMap()),
      'driftThresholds': ?driftThresholds,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig(
      attributionScoreDriftThresholds: (() {
        final guardedValue = map['attributionScoreDriftThresholds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      defaultDriftThreshold: (() {
        final guardedValue = map['defaultDriftThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1ThresholdConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      driftThresholds: (() {
        final guardedValue = map['driftThresholds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
