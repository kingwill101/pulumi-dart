// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_monitoring_config.dart';

/// {@template pulumi_vertex_ai_feature_store_entity_type_ai_feature_store_entity_type_args_doc}
/// The set of arguments for AiFeatureStoreEntityType.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_entity_type_ai_feature_store_entity_type_args_doc}
class AiFeatureStoreEntityTypeArgs {
  /// Optional. Description of the EntityType.
  final pulumi.Input<String>? description;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  final pulumi.Input<String> featurestore;
  /// A set of key/value label pairs to assign to this EntityType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The default monitoring configuration for all Features under this EntityType.
  /// If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfig>? monitoringConfig;
  /// The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;
  /// Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  final pulumi.Input<int>? offlineStorageTtlDays;

  /// Creates a new [AiFeatureStoreEntityTypeArgs].
  /// [description] Optional. Description of the EntityType.
  /// [featurestore] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  /// [labels] A set of key/value label pairs to assign to this EntityType.
  /// [monitoringConfig] The default monitoring configuration for all Features under this EntityType.
  /// [name] The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [offlineStorageTtlDays] Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  AiFeatureStoreEntityTypeArgs({
    this.description,
    required this.featurestore,
    this.labels,
    this.monitoringConfig,
    this.name,
    this.offlineStorageTtlDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'featurestore': featurestore,
      'labels': ?labels,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'offlineStorageTtlDays': ?offlineStorageTtlDays,
    };
  }

  factory AiFeatureStoreEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      featurestore: (map['featurestore'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      monitoringConfig: map['monitoringConfig'] == null ? null : (AiFeatureStoreEntityTypeMonitoringConfig.fromMap((map['monitoringConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      offlineStorageTtlDays: map['offlineStorageTtlDays'] == null ? null : (map['offlineStorageTtlDays']! as int).input(),
    );
  }
}

