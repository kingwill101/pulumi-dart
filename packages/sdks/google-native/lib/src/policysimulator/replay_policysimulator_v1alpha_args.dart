// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1alpha_replay_config.dart';

/// {@template pulumi_policysimulator_v1alpha_replay_policysimulator_v1alpha_args_doc}
/// The set of arguments for Replay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_replay_policysimulator_v1alpha_args_doc}
class ReplayPolicysimulatorV1alphaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1alphaReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ReplayPolicysimulatorV1alphaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [project] Optional.
  ReplayPolicysimulatorV1alphaArgs({
    required pulumi.Output<GoogleCloudPolicysimulatorV1alphaReplayConfig> config,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      config = pulumi.Input.asInput<GoogleCloudPolicysimulatorV1alphaReplayConfig>(config),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudPolicysimulatorV1alphaReplayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
    };
  }

  factory ReplayPolicysimulatorV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ReplayPolicysimulatorV1alphaArgs(
      config: pulumi.Output.create<GoogleCloudPolicysimulatorV1alphaReplayConfig>(GoogleCloudPolicysimulatorV1alphaReplayConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

