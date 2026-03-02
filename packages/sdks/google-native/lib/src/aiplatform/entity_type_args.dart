// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config.dart';

/// {@template pulumi_aiplatform_v1_entity_type_args_doc}
/// The set of arguments for EntityType.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_entity_type_args_doc}
class EntityTypeArgs {
  /// Optional. Description of the EntityType.
  final pulumi.Input<String>? description;
  /// Required. The ID to use for the EntityType, which will become the final component of the EntityType's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a featurestore.
  final pulumi.Input<String> entityTypeId;
  /// Optional. Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> featurestoreId;
  /// Optional. The labels with user-defined metadata to organize your EntityTypes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one EntityType (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The default monitoring configuration for all Features with value type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 under this EntityType. If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  final pulumi.Input<GoogleCloudAiplatformV1FeaturestoreMonitoringConfig>? monitoringConfig;
  /// Immutable. Name of the EntityType. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` The last part entity_type is assigned by the client. The entity_type can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given a featurestore.
  final pulumi.Input<String>? name;
  /// Optional. Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than `offline_storage_ttl_days` since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  final pulumi.Input<int>? offlineStorageTtlDays;
  final pulumi.Input<String>? project;

  /// Creates a new [EntityTypeArgs].
  /// [description] Optional. Description of the EntityType.
  /// [entityTypeId] Required. The ID to use for the EntityType, which will become the final component of the EntityType's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a featurestore.
  /// [etag] Optional. Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featurestoreId] Required.
  /// [labels] Optional. The labels with user-defined metadata to organize your EntityTypes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one EntityType (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [monitoringConfig] Optional. The default monitoring configuration for all Features with value type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 under this EntityType. If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// [name] Immutable. Name of the EntityType. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` The last part entity_type is assigned by the client. The entity_type can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given a featurestore.
  /// [offlineStorageTtlDays] Optional. Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than `offline_storage_ttl_days` since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  /// [project] Optional.
  EntityTypeArgs({
    this.description,
    required this.entityTypeId,
    this.etag,
    required this.featurestoreId,
    this.labels,
    this.location,
    this.monitoringConfig,
    this.name,
    this.offlineStorageTtlDays,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'entityTypeId': entityTypeId,
      'etag': ?etag,
      'featurestoreId': featurestoreId,
      'labels': ?labels,
      'location': ?location,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1FeaturestoreMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'offlineStorageTtlDays': ?offlineStorageTtlDays,
      'project': ?project,
    };
  }

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      entityTypeId: (map['entityTypeId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      featurestoreId: (map['featurestoreId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      monitoringConfig: map['monitoringConfig'] == null ? null : (GoogleCloudAiplatformV1FeaturestoreMonitoringConfig.fromMap((map['monitoringConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      offlineStorageTtlDays: map['offlineStorageTtlDays'] == null ? null : (map['offlineStorageTtlDays'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

