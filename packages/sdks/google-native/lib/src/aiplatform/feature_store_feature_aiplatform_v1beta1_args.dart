// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_store_feature_value_type_aiplatform_v1beta1.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config.dart';

/// {@template pulumi_aiplatform_v1beta1_feature_store_feature_aiplatform_v1beta1_args_doc}
/// The set of arguments for FeatureStoreFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_feature_store_feature_aiplatform_v1beta1_args_doc}
class FeatureStoreFeatureAiplatformV1beta1Args {
  /// Description of the Feature.
  final pulumi.Input<String>? description;
  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  final pulumi.Input<bool>? disableMonitoring;
  final pulumi.Input<String> entityTypeId;
  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> featurestoreId;
  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig>? monitoringConfig;
  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  final pulumi.Input<FeatureStoreFeatureValueTypeAiplatformV1beta1>? valueType;
  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  final pulumi.Input<String>? versionColumnName;

  /// Creates a new [FeatureStoreFeatureAiplatformV1beta1Args].
  /// [description] Description of the Feature.
  /// [disableMonitoring] Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  /// [entityTypeId] Required.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureId] Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  /// [featurestoreId] Required.
  /// [labels] Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [monitoringConfig] Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  /// [name] Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  /// [project] Optional.
  /// [valueType] Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  /// [versionColumnName] Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  FeatureStoreFeatureAiplatformV1beta1Args({
    this.description,
    this.disableMonitoring,
    required this.entityTypeId,
    this.etag,
    required this.featureId,
    required this.featurestoreId,
    this.labels,
    this.location,
    this.monitoringConfig,
    this.name,
    this.project,
    this.valueType,
    this.versionColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableMonitoring': ?disableMonitoring,
      'entityTypeId': entityTypeId,
      'etag': ?etag,
      'featureId': featureId,
      'featurestoreId': featurestoreId,
      'labels': ?labels,
      'location': ?location,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'valueType': ?pulumi.Input.mapOptionalInputValue<FeatureStoreFeatureValueTypeAiplatformV1beta1, String>(valueType, (value) => value.value),
      'versionColumnName': ?versionColumnName,
    };
  }

  factory FeatureStoreFeatureAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeatureStoreFeatureAiplatformV1beta1Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableMonitoring: map['disableMonitoring'] == null ? null : (map['disableMonitoring']! as bool).input(),
      entityTypeId: (map['entityTypeId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      featureId: (map['featureId'] as String).input(),
      featurestoreId: (map['featurestoreId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      monitoringConfig: map['monitoringConfig'] == null ? null : (GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig.fromMap((map['monitoringConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      valueType: map['valueType'] == null ? null : (FeatureStoreFeatureValueTypeAiplatformV1beta1.fromValue(map['valueType']! as String)).input(),
      versionColumnName: map['versionColumnName'] == null ? null : (map['versionColumnName']! as String).input(),
    );
  }
}

