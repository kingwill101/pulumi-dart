// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_rollout_args_doc}
/// Arguments for getRollout.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_rollout_args_doc}
class GetRolloutArgs {
  final pulumi.Input<String> deliveryPipelineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;
  final pulumi.Input<String> rolloutId;

  /// Creates a new [GetRolloutArgs].
  /// [deliveryPipelineId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [releaseId] Required.
  /// [rolloutId] Required.
  GetRolloutArgs({
    required pulumi.Output<String> deliveryPipelineId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> releaseId,
    required pulumi.Output<String> rolloutId,
  }) :
      deliveryPipelineId = pulumi.Input.asInput<String>(deliveryPipelineId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseId = pulumi.Input.asInput<String>(releaseId),
      rolloutId = pulumi.Input.asInput<String>(rolloutId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryPipelineId': deliveryPipelineId,
      'location': location,
      'project': ?project,
      'releaseId': releaseId,
      'rolloutId': rolloutId,
    };
  }

  factory GetRolloutArgs.fromMap(Map<String, dynamic> map) {
    return GetRolloutArgs(
      deliveryPipelineId: pulumi.Output.create<String>(map['deliveryPipelineId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseId: pulumi.Output.create<String>(map['releaseId'] as String),
      rolloutId: pulumi.Output.create<String>(map['rolloutId'] as String),
    );
  }
}

