// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_value_type.dart';

/// {@template pulumi_aiplatform_v1_feature_group_feature_args_doc}
/// The set of arguments for FeatureGroupFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_feature_group_feature_args_doc}
class FeatureGroupFeatureArgs {
  /// Description of the Feature.
  final pulumi.Input<String>? description;
  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  final pulumi.Input<bool>? disableMonitoring;
  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> featureGroupId;
  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  final pulumi.Input<String> featureId;
  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  final pulumi.Input<FeatureGroupFeatureValueType>? valueType;
  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  final pulumi.Input<String>? versionColumnName;

  /// Creates a new [FeatureGroupFeatureArgs].
  /// [description] Description of the Feature.
  /// [disableMonitoring] Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureGroupId] Required.
  /// [featureId] Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  /// [labels] Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [name] Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  /// [project] Optional.
  /// [valueType] Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  /// [versionColumnName] Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  FeatureGroupFeatureArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableMonitoring,
    pulumi.Output<String>? etag,
    required pulumi.Output<String> featureGroupId,
    required pulumi.Output<String> featureId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<FeatureGroupFeatureValueType>? valueType,
    pulumi.Output<String>? versionColumnName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      disableMonitoring = pulumi.Input.asOptionalInput<bool>(disableMonitoring),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      featureGroupId = pulumi.Input.asInput<String>(featureGroupId),
      featureId = pulumi.Input.asInput<String>(featureId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      valueType = pulumi.Input.asOptionalInput<FeatureGroupFeatureValueType>(valueType),
      versionColumnName = pulumi.Input.asOptionalInput<String>(versionColumnName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableMonitoring': ?disableMonitoring,
      'etag': ?etag,
      'featureGroupId': featureGroupId,
      'featureId': featureId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'valueType': ?pulumi.Input.mapOptionalInputValue<FeatureGroupFeatureValueType, String>(valueType, (value) => value.value),
      'versionColumnName': ?versionColumnName,
    };
  }

  factory FeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableMonitoring: map['disableMonitoring'] == null ? null : pulumi.Output.create<bool>(map['disableMonitoring'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      featureGroupId: pulumi.Output.create<String>(map['featureGroupId'] as String),
      featureId: pulumi.Output.create<String>(map['featureId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      valueType: map['valueType'] == null ? null : pulumi.Output.create<FeatureGroupFeatureValueType>(FeatureGroupFeatureValueType.fromValue(map['valueType'] as String)),
      versionColumnName: map['versionColumnName'] == null ? null : pulumi.Output.create<String>(map['versionColumnName'] as String),
    );
  }
}

