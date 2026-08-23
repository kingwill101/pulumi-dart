// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policysimulator_v1_get_organization_replay_args_doc}
/// Arguments for getOrganizationReplay.
/// {@endtemplate}
/// {@macro pulumi_policysimulator_v1_get_organization_replay_args_doc}
class GetOrganizationReplayArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> replayId;

  /// Creates a new [GetOrganizationReplayArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [replayId] Required.
  const GetOrganizationReplayArgs({
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

  factory GetOrganizationReplayArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      replayId: pulumi.Input.fromValue(map['replayId'] as String),
    );
  }
}
