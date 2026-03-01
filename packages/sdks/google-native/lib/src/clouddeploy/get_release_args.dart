// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_release_args_doc}
/// Arguments for getRelease.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_release_args_doc}
class GetReleaseArgs {
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;

  /// Creates a new [GetReleaseArgs].
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [releaseId] Required.
  GetReleaseArgs({
    required pulumi.Output<String> deliveryPipelineId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> releaseId,
  }) :
      deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseId = pulumi.Input.asInput<String>(releaseId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryPipelineId': deliveryPipelineId,
      'location': location,
      'project': ?project,
      'releaseId': releaseId,
    };
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      deliveryPipelineId: pulumi.Output.create<String>(map['deliveryPipelineId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseId: pulumi.Output.create<String>(map['releaseId'] as String),
    );
  }
}

