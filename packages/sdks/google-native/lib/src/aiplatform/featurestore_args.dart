// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_featurestore_online_serving_config.dart';

/// {@template pulumi_aiplatform_v1_featurestore_args_doc}
/// The set of arguments for Featurestore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_featurestore_args_doc}
class FeaturestoreArgs {
  /// Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Required. The ID to use for this Featurestore, which will become the final component of the Featurestore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featurestoreId;
  /// Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  final pulumi.Input<GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig>? onlineServingConfig;
  /// Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  final pulumi.Input<int>? onlineStorageTtlDays;
  final pulumi.Input<String>? project;

  /// Creates a new [FeaturestoreArgs].
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featurestoreId] Required. The ID to use for this Featurestore, which will become the final component of the Featurestore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  /// [labels] Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [onlineServingConfig] Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  /// [onlineStorageTtlDays] Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  /// [project] Optional.
  FeaturestoreArgs({
    this.encryptionSpec,
    this.etag,
    required this.featurestoreId,
    this.labels,
    this.location,
    this.onlineServingConfig,
    this.onlineStorageTtlDays,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'featurestoreId': featurestoreId,
      'labels': ?labels,
      'location': ?location,
      'onlineServingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig, Map<String, dynamic>>(onlineServingConfig, (value) => value.toMap()),
      'onlineStorageTtlDays': ?onlineStorageTtlDays,
      'project': ?project,
    };
  }

  factory FeaturestoreArgs.fromMap(Map<String, dynamic> map) {
    return FeaturestoreArgs(
      encryptionSpec: map['encryptionSpec'] == null ? null : (GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      featurestoreId: (map['featurestoreId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      onlineServingConfig: map['onlineServingConfig'] == null ? null : (GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig.fromMap((map['onlineServingConfig']! as Map).cast<String, dynamic>())).input(),
      onlineStorageTtlDays: map['onlineStorageTtlDays'] == null ? null : (map['onlineStorageTtlDays']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

