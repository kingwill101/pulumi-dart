// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1beta1_get_replay_policysimulator_v1beta1_args_doc}
/// Arguments for getReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_get_replay_policysimulator_v1beta1_args_doc}
class GetReplayPolicysimulatorV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetReplayPolicysimulatorV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [replayId] Required.
  const GetReplayPolicysimulatorV1beta1Args({
    required this.location,
    this.project,
    required this.replayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'replayId': replayId,
    };
  }

  factory GetReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetReplayPolicysimulatorV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replayId: pulumi.Input.fromValue(map['replayId'] as String),
    );
  }
}
