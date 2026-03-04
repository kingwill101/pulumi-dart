// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_threshold_config.dart';

/// The config for Training & Prediction data skew detection. It specifies the training dataset sources and the skew detection parameters.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig {
  /// Key is the feature name and value is the threshold. The threshold here is against attribution score distance between the training and prediction feature.
  final pulumi.Input<Map<String, String>>? attributionScoreSkewThresholds;

  /// Skew anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ThresholdConfig>?
  defaultSkewThreshold;

  /// Key is the feature name and value is the threshold. If a feature needs to be monitored for skew, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between the training and prediction feature.
  final pulumi.Input<Map<String, String>>? skewThresholds;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig].
  /// [attributionScoreSkewThresholds] Key is the feature name and value is the threshold. The threshold here is against attribution score distance between the training and prediction feature.
  /// [defaultSkewThreshold] Skew anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  /// [skewThresholds] Key is the feature name and value is the threshold. If a feature needs to be monitored for skew, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between the training and prediction feature.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig({
    this.attributionScoreSkewThresholds,
    this.defaultSkewThreshold,
    this.skewThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributionScoreSkewThresholds': ?attributionScoreSkewThresholds,
      'defaultSkewThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ThresholdConfig,
            Map<String, dynamic>
          >(defaultSkewThreshold, (value) => value.toMap()),
      'skewThresholds': ?skewThresholds,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig(
      attributionScoreSkewThresholds: (() {
        final guardedValue = map['attributionScoreSkewThresholds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      defaultSkewThreshold: (() {
        final guardedValue = map['defaultSkewThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1ThresholdConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skewThresholds: (() {
        final guardedValue = map['skewThresholds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
