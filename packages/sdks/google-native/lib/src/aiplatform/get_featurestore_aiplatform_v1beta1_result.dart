// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_online_serving_config_response.dart';

/// Result data returned by getFeaturestore.
class GetFeaturestoreAiplatformV1beta1Result {
  /// Timestamp when this Featurestore was created.
  final String createTime;
  /// Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse encryptionSpec;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;
  /// Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;
  /// Name of the Featurestore. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}`
  final String name;
  /// Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  final GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigResponse onlineServingConfig;
  /// Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  final int onlineStorageTtlDays;
  /// State of the featurestore.
  final String state;
  /// Timestamp when this Featurestore was last updated.
  final String updateTime;

  /// Creates a new [GetFeaturestoreAiplatformV1beta1Result].
  /// [createTime] Timestamp when this Featurestore was created.
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [name] Name of the Featurestore. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}`
  /// [onlineServingConfig] Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  /// [onlineStorageTtlDays] Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  /// [state] State of the featurestore.
  /// [updateTime] Timestamp when this Featurestore was last updated.
  GetFeaturestoreAiplatformV1beta1Result({
    required this.createTime,
    required this.encryptionSpec,
    required this.etag,
    required this.labels,
    required this.name,
    required this.onlineServingConfig,
    required this.onlineStorageTtlDays,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'encryptionSpec': encryptionSpec.toMap(),
      'etag': etag,
      'labels': labels,
      'name': name,
      'onlineServingConfig': onlineServingConfig.toMap(),
      'onlineStorageTtlDays': onlineStorageTtlDays,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetFeaturestoreAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      encryptionSpec: GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      onlineServingConfig: GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigResponse.fromMap((map['onlineServingConfig']! as Map).cast<String, dynamic>()),
      onlineStorageTtlDays: map['onlineStorageTtlDays'] as int,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

