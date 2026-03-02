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
      deliveryPipelineId: (map['deliveryPipelineId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      releaseId: (map['releaseId'] as String).input(),
      rolloutId: (map['rolloutId'] as String).input(),
    );
  }
}

