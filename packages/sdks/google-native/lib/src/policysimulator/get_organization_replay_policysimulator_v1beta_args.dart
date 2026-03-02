// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1beta_get_organization_replay_policysimulator_v1beta_args_doc}
/// Arguments for getOrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta_get_organization_replay_policysimulator_v1beta_args_doc}
class GetOrganizationReplayPolicysimulatorV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetOrganizationReplayPolicysimulatorV1betaArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [replayId] Required.
  GetOrganizationReplayPolicysimulatorV1betaArgs({
    required this.location,
    required this.organizationId,
    required this.replayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'replayId': replayId,
    };
  }

  factory GetOrganizationReplayPolicysimulatorV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayPolicysimulatorV1betaArgs(
      location: (map['location'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      replayId: (map['replayId'] as String).input(),
    );
  }
}

