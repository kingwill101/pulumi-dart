// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta1_replay_policysimulator_v1beta1_args_doc}
/// The set of arguments for Replay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_replay_policysimulator_v1beta1_args_doc}
class ReplayPolicysimulatorV1beta1Args {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [ReplayPolicysimulatorV1beta1Args].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [project] Optional.
  ReplayPolicysimulatorV1beta1Args({
    required this.config,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1beta1ReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
    };
  }

  factory ReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ReplayPolicysimulatorV1beta1Args(
      config: pulumi.Input.fromValue(
        GoogleCloudPolicysimulatorV1beta1ReplayConfig.fromMap(
          (map['config']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
