// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1beta1_get_organization_replay_policysimulator_v1beta1_args_doc}
/// Arguments for getOrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1beta1_get_organization_replay_policysimulator_v1beta1_args_doc}
class GetOrganizationReplayPolicysimulatorV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetOrganizationReplayPolicysimulatorV1beta1Args].
  /// [location] Required.
  /// [organizationId] Required.
  /// [replayId] Required.
  const GetOrganizationReplayPolicysimulatorV1beta1Args({
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

  factory GetOrganizationReplayPolicysimulatorV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayPolicysimulatorV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      replayId: pulumi.Input.fromValue(map['replayId'] as String),
    );
  }
}

