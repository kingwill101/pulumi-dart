// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiFeatureStoreEntityTypeFeature resources.
class AiFeatureStoreEntityTypeFeatureState {
  /// The timestamp of when the entity type was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// Description of the feature.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  final pulumi.Input<String>? entitytype;
  /// Used to perform consistent read-modify-write updates.
  final pulumi.Input<String>? etag;
  /// A set of key/value label pairs to assign to the feature.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final pulumi.Input<String>? name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the feature
  final pulumi.Input<String>? region;
  /// The timestamp when the entity type was most recently updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;
  /// Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  final pulumi.Input<String>? valueType;

  /// Creates a new [AiFeatureStoreEntityTypeFeatureState].
  /// [createTime] The timestamp of when the entity type was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] Description of the feature.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitytype] The name of the Featurestore to use, in the format projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entitytype}.
  /// [etag] Used to perform consistent read-modify-write updates.
  /// [labels] A set of key/value label pairs to assign to the feature.
  /// [name] The name of the feature. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the feature
  /// [updateTime] The timestamp when the entity type was most recently updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [valueType] Type of Feature value. Immutable. https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores.entityTypes.features#ValueType
  AiFeatureStoreEntityTypeFeatureState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entitytype,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? valueType,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entitytype = pulumi.Input.asOptionalInput<String>(entitytype),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      valueType = pulumi.Input.asOptionalInput<String>(valueType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'entitytype': ?entitytype,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
      'valueType': ?valueType,
    };
  }

  factory AiFeatureStoreEntityTypeFeatureState.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeFeatureState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entitytype: map['entitytype'] == null ? null : pulumi.Output.create<String>(map['entitytype'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      valueType: map['valueType'] == null ? null : pulumi.Output.create<String>(map['valueType'] as String),
    );
  }
}

