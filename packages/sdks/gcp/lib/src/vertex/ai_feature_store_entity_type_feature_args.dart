// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_feature_store_entity_type_feature_ai_feature_store_entity_type_feature_args_doc}
/// The set of arguments for AiFeatureStoreEntityTypeFeature.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_store_entity_type_feature_ai_feature_store_entity_type_feature_args_doc}
class AiFeatureStoreEntityTypeFeatureArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the feature.
  final pulumi.Input<String?>? description;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  final pulumi.Input<String> entitytype;
  /// A set of key/value label pairs to assign to the feature.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final pulumi.Input<String?>? name;
  /// Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  final pulumi.Input<String> valueType;

  /// Creates a new [AiFeatureStoreEntityTypeFeatureArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the feature.
  /// [entitytype] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  /// [labels] A set of key/value label pairs to assign to the feature.
  /// [name] The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  /// [valueType] Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  const AiFeatureStoreEntityTypeFeatureArgs({
    this.deletionPolicy,
    this.description,
    required this.entitytype,
    this.labels,
    this.name,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'entitytype': entitytype,
      'labels': ?labels,
      'name': ?name,
      'valueType': valueType,
    };
  }

  factory AiFeatureStoreEntityTypeFeatureArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeFeatureArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entitytype: pulumi.Input.fromValue(map['entitytype'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}
