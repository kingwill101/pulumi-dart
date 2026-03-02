// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gameservices_v1beta_get_game_server_deployment_iam_policy_gameservices_v1beta_args_doc}
/// Arguments for getGameServerDeploymentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gameservices_v1beta_get_game_server_deployment_iam_policy_gameservices_v1beta_args_doc}
class GetGameServerDeploymentIamPolicyGameservicesV1betaArgs {
  final pulumi.Input<String> gameServerDeploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGameServerDeploymentIamPolicyGameservicesV1betaArgs].
  /// [gameServerDeploymentId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetGameServerDeploymentIamPolicyGameservicesV1betaArgs({
    required this.gameServerDeploymentId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gameServerDeploymentId': gameServerDeploymentId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetGameServerDeploymentIamPolicyGameservicesV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetGameServerDeploymentIamPolicyGameservicesV1betaArgs(
      gameServerDeploymentId: (map['gameServerDeploymentId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

