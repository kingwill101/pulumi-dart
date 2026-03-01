// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_online_serving_config.dart';

/// {@template pulumi_aiplatform_v1beta1_featurestore_aiplatform_v1beta1_args_doc}
/// The set of arguments for Featurestore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_featurestore_aiplatform_v1beta1_args_doc}
class FeaturestoreAiplatformV1beta1Args {
  /// Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Required. The ID to use for this Featurestore, which will become the final component of the Featurestore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featurestoreId;
  /// Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig>? onlineServingConfig;
  /// Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  final pulumi.Input<int>? onlineStorageTtlDays;
  final pulumi.Input<String>? project;

  /// Creates a new [FeaturestoreAiplatformV1beta1Args].
  /// [encryptionSpec] Optional. Customer-managed encryption key spec for data storage. If set, both of the online and offline data storage will be secured by this key.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featurestoreId] Required. The ID to use for this Featurestore, which will become the final component of the Featurestore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  /// [labels] Optional. The labels with user-defined metadata to organize your Featurestore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Featurestore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [onlineServingConfig] Optional. Config for online storage resources. The field should not co-exist with the field of `OnlineStoreReplicationConfig`. If both of it and OnlineStoreReplicationConfig are unset, the feature store will not have an online store and cannot be used for online serving.
  /// [onlineStorageTtlDays] Optional. TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than `online_storage_ttl_days` since the feature generation time. Note that `online_storage_ttl_days` should be less than or equal to `offline_storage_ttl_days` for each EntityType under a featurestore. If not set, default to 4000 days
  /// [project] Optional.
  FeaturestoreAiplatformV1beta1Args({
    pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? etag,
    required pulumi.Output<String> featurestoreId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig>? onlineServingConfig,
    pulumi.Output<int>? onlineStorageTtlDays,
    pulumi.Output<String>? project,
  }) :
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(encryptionSpec),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      onlineServingConfig = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig>(onlineServingConfig),
      onlineStorageTtlDays = pulumi.Input.asOptionalInput<int>(onlineStorageTtlDays),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'featurestoreId': featurestoreId,
      'labels': ?labels,
      'location': ?location,
      'onlineServingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig, Map<String, dynamic>>(onlineServingConfig, (value) => value.toMap()),
      'onlineStorageTtlDays': ?onlineStorageTtlDays,
      'project': ?project,
    };
  }

  factory FeaturestoreAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeaturestoreAiplatformV1beta1Args(
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1EncryptionSpec>(GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      featurestoreId: pulumi.Output.create<String>(map['featurestoreId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      onlineServingConfig: map['onlineServingConfig'] == null ? null : pulumi.Output.create<GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig>(GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig.fromMap((map['onlineServingConfig'] as Map).cast<String, dynamic>())),
      onlineStorageTtlDays: map['onlineStorageTtlDays'] == null ? null : pulumi.Output.create<int>(map['onlineStorageTtlDays'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

