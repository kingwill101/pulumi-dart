// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeResult {
  /// Timestamp when this EntityType was created.
  final String createTime;
  /// Optional. Description of the EntityType.
  final String description;
  /// Optional. Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;
  /// Optional. The labels with user-defined metadata to organize your EntityTypes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one EntityType (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;
  /// Optional. The default monitoring configuration for all Features with value type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 under this EntityType. If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse monitoringConfig;
  /// Immutable. Name of the EntityType. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` The last part entity_type is assigned by the client. The entity_type can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given a featurestore.
  final String name;
  /// Optional. Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than `offline_storage_ttl_days` since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  final int offlineStorageTtlDays;
  /// Timestamp when this EntityType was most recently updated.
  final String updateTime;

  /// Creates a new [GetEntityTypeResult].
  /// [createTime] Timestamp when this EntityType was created.
  /// [description] Optional. Description of the EntityType.
  /// [etag] Optional. Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] Optional. The labels with user-defined metadata to organize your EntityTypes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one EntityType (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [monitoringConfig] Optional. The default monitoring configuration for all Features with value type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 under this EntityType. If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// [name] Immutable. Name of the EntityType. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}` The last part entity_type is assigned by the client. The entity_type can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z and underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given a featurestore.
  /// [offlineStorageTtlDays] Optional. Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than `offline_storage_ttl_days` since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  /// [updateTime] Timestamp when this EntityType was most recently updated.
  const GetEntityTypeResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.monitoringConfig,
    required this.name,
    required this.offlineStorageTtlDays,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'labels': labels,
      'monitoringConfig': monitoringConfig.toMap(),
      'name': name,
      'offlineStorageTtlDays': offlineStorageTtlDays,
      'updateTime': updateTime,
    };
  }

  factory GetEntityTypeResult.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      monitoringConfig: GoogleCloudAiplatformV1FeaturestoreMonitoringConfigResponse.fromMap((map['monitoringConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      offlineStorageTtlDays: map['offlineStorageTtlDays'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}

