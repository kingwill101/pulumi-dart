// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config_import_features_analysis.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config_snapshot_analysis.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config_threshold_config.dart';

/// Configuration of how features in Featurestore are monitored.
class GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig {
  /// Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig
  >?
  categoricalThresholdConfig;

  /// The config for ImportFeatures Analysis Based Feature Monitoring.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysis
  >?
  importFeaturesAnalysis;

  /// Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig
  >?
  numericalThresholdConfig;

  /// The config for Snapshot Analysis Based Feature Monitoring.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis
  >?
  snapshotAnalysis;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig].
  /// [categoricalThresholdConfig] Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  /// [importFeaturesAnalysis] The config for ImportFeatures Analysis Based Feature Monitoring.
  /// [numericalThresholdConfig] Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  /// [snapshotAnalysis] The config for Snapshot Analysis Based Feature Monitoring.
  GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig({
    this.categoricalThresholdConfig,
    this.importFeaturesAnalysis,
    this.numericalThresholdConfig,
    this.snapshotAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalThresholdConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig,
            Map<String, dynamic>
          >(categoricalThresholdConfig, (value) => value.toMap()),
      'importFeaturesAnalysis':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysis,
            Map<String, dynamic>
          >(importFeaturesAnalysis, (value) => value.toMap()),
      'numericalThresholdConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig,
            Map<String, dynamic>
          >(numericalThresholdConfig, (value) => value.toMap()),
      'snapshotAnalysis':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis,
            Map<String, dynamic>
          >(snapshotAnalysis, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig(
      categoricalThresholdConfig: (() {
        final guardedValue = map['categoricalThresholdConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      importFeaturesAnalysis: (() {
        final guardedValue = map['importFeaturesAnalysis'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysis.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      numericalThresholdConfig: (() {
        final guardedValue = map['numericalThresholdConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      snapshotAnalysis: (() {
        final guardedValue = map['snapshotAnalysis'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
