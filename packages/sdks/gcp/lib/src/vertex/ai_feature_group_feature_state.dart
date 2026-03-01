// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiFeatureGroupFeature resources.
class AiFeatureGroupFeatureState {
  /// The timestamp of when the FeatureGroup was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// The description of the FeatureGroup.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The name of the Feature Group.
  final pulumi.Input<String>? featureGroup;
  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name of the Feature Group Feature.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region for the resource. It should be the same as the feature group's region.
  final pulumi.Input<String>? region;
  /// The timestamp of when the FeatureGroup was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;
  /// The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  final pulumi.Input<String>? versionColumnName;

  /// Creates a new [AiFeatureGroupFeatureState].
  /// [createTime] The timestamp of when the FeatureGroup was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [description] The description of the FeatureGroup.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [featureGroup] The name of the Feature Group.
  /// [labels] The labels with user-defined metadata to organize your FeatureGroup.
  /// [name] The resource name of the Feature Group Feature.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region for the resource. It should be the same as the feature group's region.
  /// [updateTime] The timestamp of when the FeatureGroup was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [versionColumnName] The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  AiFeatureGroupFeatureState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? featureGroup,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? versionColumnName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      featureGroup = pulumi.Input.asOptionalInput<String>(featureGroup),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      versionColumnName = pulumi.Input.asOptionalInput<String>(versionColumnName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'featureGroup': ?featureGroup,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
      'versionColumnName': ?versionColumnName,
    };
  }

  factory AiFeatureGroupFeatureState.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupFeatureState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      featureGroup: map['featureGroup'] == null ? null : pulumi.Output.create<String>(map['featureGroup'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      versionColumnName: map['versionColumnName'] == null ? null : pulumi.Output.create<String>(map['versionColumnName'] as String),
    );
  }
}

