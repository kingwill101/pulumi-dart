// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_entity_type_monitoring_config.dart';

/// {@template pulumi_vertex_ai_feature_store_entity_type_ai_feature_store_entity_type_args_doc}
/// The set of arguments for AiFeatureStoreEntityType.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_entity_type_ai_feature_store_entity_type_args_doc}
class AiFeatureStoreEntityTypeArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Description of the EntityType.
  final pulumi.Input<String?>? description;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  final pulumi.Input<String> featurestore;
  /// A set of key/value label pairs to assign to this EntityType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The default monitoring configuration for all Features under this EntityType.
  /// If this is populated with [FeaturestoreMonitoringConfig.monitoring_interval] specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring is disabled.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEntityTypeMonitoringConfig?>? monitoringConfig;
  /// The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String?>? name;
  /// (Optional, Beta)
  /// Config for data retention policy in offline storage. TTL in days for feature values that will be stored in offline storage. The Feature Store offline storage periodically removes obsolete feature values older than offlineStorageTtlDays since the feature generation time. If unset (or explicitly set to 0), default to 4000 days TTL.
  final pulumi.Input<int?>? offlineStorageTtlDays;

  /// Creates a new [AiFeatureStoreEntityTypeArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Description of the EntityType.
  /// [featurestore] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}.
  /// [labels] A set of key/value label pairs to assign to this EntityType.
  /// [monitoringConfig] The default monitoring configuration for all Features under this EntityType.
  /// [name] The name of the EntityType. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [offlineStorageTtlDays] (Optional, Beta)
  const AiFeatureStoreEntityTypeArgs({
    this.deletionPolicy,
    this.description,
    required this.featurestore,
    this.labels,
    this.monitoringConfig,
    this.name,
    this.offlineStorageTtlDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featurestore: pulumi.Input.fromValue(map['featurestore'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      monitoringConfig: (() { final guardedValue = map['monitoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEntityTypeMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlineStorageTtlDays: (() { final guardedValue = map['offlineStorageTtlDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
