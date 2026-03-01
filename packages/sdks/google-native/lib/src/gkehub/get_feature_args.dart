// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_feature_args_doc}
/// Arguments for getFeature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_feature_args_doc}
class GetFeatureArgs {
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureArgs].
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureArgs({
    required pulumi.Output<String> featureId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      featureId = pulumi.Input.asInput<String>(featureId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureId': featureId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureArgs(
      featureId: pulumi.Output.create<String>(map['featureId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

