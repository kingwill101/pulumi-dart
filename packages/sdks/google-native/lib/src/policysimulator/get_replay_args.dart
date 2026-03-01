// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1_get_replay_args_doc}
/// Arguments for getReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_get_replay_args_doc}
class GetReplayArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetReplayArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [replayId] Required.
  GetReplayArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> replayId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      replayId = pulumi.Input.asInput<String>(replayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'replayId': replayId,
    };
  }

  factory GetReplayArgs.fromMap(Map<String, dynamic> map) {
    return GetReplayArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      replayId: pulumi.Output.create<String>(map['replayId'] as String),
    );
  }
}

