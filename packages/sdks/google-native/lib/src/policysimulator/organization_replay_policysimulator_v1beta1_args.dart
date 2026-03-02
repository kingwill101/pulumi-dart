// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta1_replay_config.dart';

/// {@template pulumi_policysimulator_v1beta1_organization_replay_policysimulator_v1beta1_args_doc}
/// The set of arguments for OrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_organization_replay_policysimulator_v1beta1_args_doc}
class OrganizationReplayPolicysimulatorV1beta1Args {
  /// The configuration used for the `Replay`.
  final pulumi.Input<GoogleCloudPolicysimulatorV1beta1ReplayConfig> config;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationReplayPolicysimulatorV1beta1Args].
  /// [config] The configuration used for the `Replay`.
  /// [location] Optional.
  /// [organizationId] Required.
  OrganizationReplayPolicysimulatorV1beta1Args({
    required this.config,
    this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GoogleCloudPolicysimulatorV1beta1ReplayConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'location': ?location,
      'organizationId': organizationId,
    };
  }

  factory OrganizationReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return OrganizationReplayPolicysimulatorV1beta1Args(
      config: (GoogleCloudPolicysimulatorV1beta1ReplayConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

