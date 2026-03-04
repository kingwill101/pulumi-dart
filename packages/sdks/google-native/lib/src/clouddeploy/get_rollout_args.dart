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
    required this.deliveryPipelineId,
    required this.location,
    this.project,
    required this.releaseId,
    required this.rolloutId,
  });

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
      deliveryPipelineId: pulumi.Input.fromValue(
        map['deliveryPipelineId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseId: pulumi.Input.fromValue(map['releaseId'] as String),
      rolloutId: pulumi.Input.fromValue(map['rolloutId'] as String),
    );
  }
}
