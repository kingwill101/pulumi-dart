// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_monitoring_config.dart';

/// Input properties used for looking up and filtering AiFeatureStoreEntityType resources.
class AiFeatureStoreEntityTypeState {
  /// The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// Optional. Description of the EntityType.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Used to perform consistent read-modify-write updates.
  final pulumi.Input<String>? etag;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  final pulumi.Input<String>? featurestore;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the EntityType.
  final pulumi.Input<String>? region;
  /// The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiFeatureStoreEntityTypeState].
  /// [createTime] The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] Optional. Description of the EntityType.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Used to perform consistent read-modify-write updates.
  /// [featurestore] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  /// [labels] A set of key/value label pairs to assign to this EntityType.
  /// [monitoringConfig] The default monitoring configuration for all Features under this EntityType.
  /// [name] The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [offlineStorageTtlDays] Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the EntityType.
  /// [updateTime] The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiFeatureStoreEntityTypeState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? featurestore,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<AiFeatureStoreEntityTypeMonitoringConfig>? monitoringConfig,
    pulumi.Output<String>? name,
    pulumi.Output<int>? offlineStorageTtlDays,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      featurestore = pulumi.Input.asOptionalInput<String>(featurestore),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      monitoringConfig = pulumi.Input.asOptionalInput<AiFeatureStoreEntityTypeMonitoringConfig>(monitoringConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      offlineStorageTtlDays = pulumi.Input.asOptionalInput<int>(offlineStorageTtlDays),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'featurestore': ?featurestore,
      'labels': ?labels,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEntityTypeMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'offlineStorageTtlDays': ?offlineStorageTtlDays,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
    };
  }

  factory AiFeatureStoreEntityTypeState.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      featurestore: map['featurestore'] == null ? null : pulumi.Output.create<String>(map['featurestore'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      monitoringConfig: map['monitoringConfig'] == null ? null : pulumi.Output.create<AiFeatureStoreEntityTypeMonitoringConfig>(AiFeatureStoreEntityTypeMonitoringConfig.fromMap((map['monitoringConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      offlineStorageTtlDays: map['offlineStorageTtlDays'] == null ? null : pulumi.Output.create<int>(map['offlineStorageTtlDays'] as int),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

