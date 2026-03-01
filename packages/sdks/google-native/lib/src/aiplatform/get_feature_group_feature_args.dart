// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_group_feature_args_doc}
/// Arguments for getFeatureGroupFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_group_feature_args_doc}
class GetFeatureGroupFeatureArgs {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupFeatureArgs].
  /// [featureGroupId] Required.
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupFeatureArgs({
    required pulumi.Output<String> featureGroupId,
    required pulumi.Output<String> featureId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      featureGroupId = pulumi.Input.asInput<String>(featureGroupId),
      featureId = pulumi.Input.asInput<String>(featureId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'featureId': featureId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupFeatureArgs(
      featureGroupId: pulumi.Output.create<String>(map['featureGroupId'] as String),
      featureId: pulumi.Output.create<String>(map['featureId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

