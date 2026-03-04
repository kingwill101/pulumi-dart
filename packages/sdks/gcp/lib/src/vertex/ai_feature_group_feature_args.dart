// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_ai_feature_group_feature_ai_feature_group_feature_args_doc}
/// The set of arguments for AiFeatureGroupFeature.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_group_feature_ai_feature_group_feature_args_doc}
class AiFeatureGroupFeatureArgs {
  /// The description of the FeatureGroup.
  final pulumi.Input<String>? description;

  /// The name of the Feature Group.
  final pulumi.Input<String> featureGroup;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The resource name of the Feature Group Feature.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region for the resource. It should be the same as the feature group's region.
  final pulumi.Input<String> region;

  /// The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  final pulumi.Input<String>? versionColumnName;

  /// Creates a new [AiFeatureGroupFeatureArgs].
  /// [description] The description of the FeatureGroup.
  /// [featureGroup] The name of the Feature Group.
  /// [labels] The labels with user-defined metadata to organize your FeatureGroup.
  /// [name] The resource name of the Feature Group Feature.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region for the resource. It should be the same as the feature group's region.
  /// [versionColumnName] The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  AiFeatureGroupFeatureArgs({
    this.description,
    required this.featureGroup,
    this.labels,
    this.name,
    this.project,
    required this.region,
    this.versionColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'featureGroup': featureGroup,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'region': region,
      'versionColumnName': ?versionColumnName,
    };
  }

  factory AiFeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupFeatureArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      featureGroup: pulumi.Input.fromValue(map['featureGroup'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      versionColumnName: (() {
        final guardedValue = map['versionColumnName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
