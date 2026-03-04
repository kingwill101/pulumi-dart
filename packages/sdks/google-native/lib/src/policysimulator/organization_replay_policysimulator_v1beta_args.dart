// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta_organization_replay_policysimulator_v1beta_args_doc}
/// The set of arguments for OrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_organization_replay_policysimulator_v1beta_args_doc}
class OrganizationReplayPolicysimulatorV1betaArgs {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1betaReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationReplayPolicysimulatorV1betaArgs].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [organizationId] Required.
  OrganizationReplayPolicysimulatorV1betaArgs({
    required this.config,
    this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            GoogleCloudPolicysimulatorV1betaReplayConfig,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'location': ?location,
      'organizationId': organizationId,
    };
  }

  factory OrganizationReplayPolicysimulatorV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationReplayPolicysimulatorV1betaArgs(
      config: pulumi.Input.fromValue(
        GoogleCloudPolicysimulatorV1betaReplayConfig.fromMap(
          (map['config']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
