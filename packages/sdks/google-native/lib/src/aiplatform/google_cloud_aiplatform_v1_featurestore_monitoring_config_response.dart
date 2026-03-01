// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_import_features_analysis_response.dart';
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_snapshot_analysis_response.dart';
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_threshold_config_response.dart';

/// Configuration of how features in Featurestore are monitored.
class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse {
  /// Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse categoricalThresholdConfig;
  /// The config for ImportFeatures Analysis Based Feature Monitoring.
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisResponse importFeaturesAnalysis;
  /// Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse numericalThresholdConfig;
  /// The config for Snapshot Analysis Based Feature Monitoring.
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse snapshotAnalysis;

  /// Creates a new [GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse].
  /// [categoricalThresholdConfig] Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  /// [importFeaturesAnalysis] The config for ImportFeatures Analysis Based Feature Monitoring.
  /// [numericalThresholdConfig] Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  /// [snapshotAnalysis] The config for Snapshot Analysis Based Feature Monitoring.
  GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse({
    required this.categoricalThresholdConfig,
    required this.importFeaturesAnalysis,
    required this.numericalThresholdConfig,
    required this.snapshotAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalThresholdConfig': categoricalThresholdConfig.toMap(),
      'importFeaturesAnalysis': importFeaturesAnalysis.toMap(),
      'numericalThresholdConfig': numericalThresholdConfig.toMap(),
      'snapshotAnalysis': snapshotAnalysis.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse(
      categoricalThresholdConfig: GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse.fromMap((map['categoricalThresholdConfig'] as Map).cast<String, dynamic>()),
      importFeaturesAnalysis: GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisResponse.fromMap((map['importFeaturesAnalysis'] as Map).cast<String, dynamic>()),
      numericalThresholdConfig: GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse.fromMap((map['numericalThresholdConfig'] as Map).cast<String, dynamic>()),
      snapshotAnalysis: GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse.fromMap((map['snapshotAnalysis'] as Map).cast<String, dynamic>()),
    );
  }
}

