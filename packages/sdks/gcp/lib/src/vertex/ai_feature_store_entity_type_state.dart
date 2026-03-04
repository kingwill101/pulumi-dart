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
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfig>?
  monitoringConfig;

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
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.featurestore,
    this.labels,
    this.monitoringConfig,
    this.name,
    this.offlineStorageTtlDays,
    this.pulumiLabels,
    this.region,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'featurestore': ?featurestore,
      'labels': ?labels,
      'monitoringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiFeatureStoreEntityTypeMonitoringConfig,
            Map<String, dynamic>
          >(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'offlineStorageTtlDays': ?offlineStorageTtlDays,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
    };
  }

  factory AiFeatureStoreEntityTypeState.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      featurestore: (() {
        final guardedValue = map['featurestore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      monitoringConfig: (() {
        final guardedValue = map['monitoringConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiFeatureStoreEntityTypeMonitoringConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offlineStorageTtlDays: (() {
        final guardedValue = map['offlineStorageTtlDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
