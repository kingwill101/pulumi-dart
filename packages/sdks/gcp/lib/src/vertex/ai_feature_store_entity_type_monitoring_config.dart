// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_monitoring_config_categorical_threshold_config.dart';
import 'ai_feature_store_entity_type_monitoring_config_import_features_analysis.dart';
import 'ai_feature_store_entity_type_monitoring_config_numerical_threshold_config.dart';
import 'ai_feature_store_entity_type_monitoring_config_snapshot_analysis.dart';

class AiFeatureStoreEntityTypeMonitoringConfig {
  /// Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig>? categoricalThresholdConfig;
  /// The config for ImportFeatures Analysis Based Feature Monitoring.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysis>? importFeaturesAnalysis;
  /// Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig>? numericalThresholdConfig;
  /// The config for Snapshot Analysis Based Feature Monitoring.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis>? snapshotAnalysis;

  /// Creates a new [AiFeatureStoreEntityTypeMonitoringConfig].
  /// [categoricalThresholdConfig] Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  /// [importFeaturesAnalysis] The config for ImportFeatures Analysis Based Feature Monitoring.
  /// [numericalThresholdConfig] Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  /// [snapshotAnalysis] The config for Snapshot Analysis Based Feature Monitoring.
  const AiFeatureStoreEntityTypeMonitoringConfig({
    this.categoricalThresholdConfig,
    this.importFeaturesAnalysis,
    this.numericalThresholdConfig,
    this.snapshotAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalThresholdConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig, Map<String, dynamic>>(categoricalThresholdConfig, (value) => value.toMap()),
      'importFeaturesAnalysis': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysis, Map<String, dynamic>>(importFeaturesAnalysis, (value) => value.toMap()),
      'numericalThresholdConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig, Map<String, dynamic>>(numericalThresholdConfig, (value) => value.toMap()),
      'snapshotAnalysis': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis, Map<String, dynamic>>(snapshotAnalysis, (value) => value.toMap()),
    };
  }

  factory AiFeatureStoreEntityTypeMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeMonitoringConfig(
      categoricalThresholdConfig: (() { final guardedValue = map['categoricalThresholdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importFeaturesAnalysis: (() { final guardedValue = map['importFeaturesAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numericalThresholdConfig: (() { final guardedValue = map['numericalThresholdConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotAnalysis: (() { final guardedValue = map['snapshotAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
