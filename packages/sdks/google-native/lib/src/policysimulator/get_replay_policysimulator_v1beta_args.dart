// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1beta_get_replay_policysimulator_v1beta_args_doc}
/// Arguments for getReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_get_replay_policysimulator_v1beta_args_doc}
class GetReplayPolicysimulatorV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetReplayPolicysimulatorV1betaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [replayId] Required.
  GetReplayPolicysimulatorV1betaArgs({
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

  factory GetReplayPolicysimulatorV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetReplayPolicysimulatorV1betaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replayId: pulumi.Input.fromValue(map['replayId'] as String),
    );
  }
}
