// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_stage.dart';

/// {@template pulumi_gkehub_rollout_sequence_rollout_sequence_args_doc}
/// The set of arguments for RolloutSequence.
/// {@endtemplate}
/// {@macro pulumi_gkehub_rollout_sequence_rollout_sequence_args_doc}
class RolloutSequenceArgs {
  /// Human readable display name of the Rollout Sequence.
  final pulumi.Input<String>? displayName;
  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user-provided identifier of the RolloutSequence.
  final pulumi.Input<String> rolloutSequenceId;
  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutSequenceStage>> stages;

  /// Creates a new [RolloutSequenceArgs].
  /// [displayName] Human readable display name of the Rollout Sequence.
  /// [labels] Labels for this Rollout Sequence.
  /// [project] The ID of the project in which the resource belongs.
  /// [rolloutSequenceId] The user-provided identifier of the RolloutSequence.
  /// [stages] Ordered list of stages that constitute this Rollout Sequence.
  RolloutSequenceArgs({
    this.displayName,
    this.labels,
    this.project,
    required this.rolloutSequenceId,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'labels': ?labels,
      'project': ?project,
      'rolloutSequenceId': rolloutSequenceId,
      'stages': pulumi.Input.mapInputValue<List<RolloutSequenceStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<RolloutSequenceStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RolloutSequenceArgs.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceArgs(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rolloutSequenceId: (map['rolloutSequenceId'] as String).input(),
      stages: (pulumi.Input.decodeList<RolloutSequenceStage>(map['stages'], (value) => RolloutSequenceStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

