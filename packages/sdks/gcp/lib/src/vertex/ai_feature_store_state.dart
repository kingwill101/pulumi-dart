// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_encryption_spec.dart';
import 'ai_feature_store_online_serving_config.dart';

/// Input properties used for looking up and filtering AiFeatureStore resources.
class AiFeatureStoreState {
  /// The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates.
  final pulumi.Input<String>? etag;
  /// If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  final pulumi.Input<bool>? forceDestroy;
  /// A set of key/value label pairs to assign to this Featurestore.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;
  /// Config for online serving resources.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreOnlineServingConfig>? onlineServingConfig;
  /// TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  final pulumi.Input<int>? onlineStorageTtlDays;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the dataset. eg us-central1
  final pulumi.Input<String>? region;
  /// The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiFeatureStoreState].
  /// [createTime] The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] If set, both of the online and offline data storage will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates.
  /// [forceDestroy] If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  /// [labels] A set of key/value label pairs to assign to this Featurestore.
  /// [name] The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [onlineServingConfig] Config for online serving resources.
  /// [onlineStorageTtlDays] TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the dataset. eg us-central1
  /// [updateTime] The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiFeatureStoreState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<AiFeatureStoreEncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? etag,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<AiFeatureStoreOnlineServingConfig>? onlineServingConfig,
    pulumi.Output<int>? onlineStorageTtlDays,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      encryptionSpec = pulumi.Input.asOptionalInput<AiFeatureStoreEncryptionSpec>(encryptionSpec),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      onlineServingConfig = pulumi.Input.asOptionalInput<AiFeatureStoreOnlineServingConfig>(onlineServingConfig),
      onlineStorageTtlDays = pulumi.Input.asOptionalInput<int>(onlineStorageTtlDays),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'forceDestroy': ?forceDestroy,
      'labels': ?labels,
      'name': ?name,
      'onlineServingConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreOnlineServingConfig, Map<String, dynamic>>(onlineServingConfig, (value) => value.toMap()),
      'onlineStorageTtlDays': ?onlineStorageTtlDays,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
    };
  }

  factory AiFeatureStoreState.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<AiFeatureStoreEncryptionSpec>(AiFeatureStoreEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      onlineServingConfig: map['onlineServingConfig'] == null ? null : pulumi.Output.create<AiFeatureStoreOnlineServingConfig>(AiFeatureStoreOnlineServingConfig.fromMap((map['onlineServingConfig'] as Map).cast<String, dynamic>())),
      onlineStorageTtlDays: map['onlineStorageTtlDays'] == null ? null : pulumi.Output.create<int>(map['onlineStorageTtlDays'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

