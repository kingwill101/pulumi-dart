// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1alpha_get_organization_replay_policysimulator_v1alpha_args_doc}
/// Arguments for getOrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1alpha_get_organization_replay_policysimulator_v1alpha_args_doc}
class GetOrganizationReplayPolicysimulatorV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetOrganizationReplayPolicysimulatorV1alphaArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [replayId] Required.
  GetOrganizationReplayPolicysimulatorV1alphaArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> replayId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      replayId = pulumi.Input.asInput<String>(replayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'replayId': replayId,
    };
  }

  factory GetOrganizationReplayPolicysimulatorV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayPolicysimulatorV1alphaArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      replayId: pulumi.Output.create<String>(map['replayId'] as String),
    );
  }
}

