// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_encryption_spec.dart';
import 'ai_feature_store_online_serving_config.dart';

/// {@template pulumi_vertex_ai_feature_store_ai_feature_store_args_doc}
/// The set of arguments for AiFeatureStore.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_ai_feature_store_args_doc}
class AiFeatureStoreArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreEncryptionSpec>? encryptionSpec;
  /// If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  final pulumi.Input<bool>? forceDestroy;
  /// A set of key/value label pairs to assign to this Featurestore.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final pulumi.Input<String>? name;
  /// Config for online serving resources.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureStoreOnlineServingConfig>? onlineServingConfig;
  /// (Optional, Beta)
  /// TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  final pulumi.Input<int>? onlineStorageTtlDays;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the dataset. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiFeatureStoreArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [encryptionSpec] If set, both of the online and offline data storage will be secured by this key.
  /// [forceDestroy] If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  /// [labels] A set of key/value label pairs to assign to this Featurestore.
  /// [name] The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  /// [onlineServingConfig] Config for online serving resources.
  /// [onlineStorageTtlDays] (Optional, Beta)
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the dataset. eg us-central1
  const AiFeatureStoreArgs({
    this.deletionPolicy,
    this.encryptionSpec,
    this.forceDestroy,
    this.labels,
    this.name,
    this.onlineServingConfig,
    this.onlineStorageTtlDays,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'labels': ?labels,
      'name': ?name,
      'onlineServingConfig': ?pulumi.Input.mapOptionalInputValue<AiFeatureStoreOnlineServingConfig, Map<String, dynamic>>(onlineServingConfig, (value) => value.toMap()),
      'onlineStorageTtlDays': ?onlineStorageTtlDays,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiFeatureStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineServingConfig: (() { final guardedValue = map['onlineServingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiFeatureStoreOnlineServingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onlineStorageTtlDays: (() { final guardedValue = map['onlineStorageTtlDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
