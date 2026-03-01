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
    required pulumi.Output<String> gameServerDeploymentId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      gameServerDeploymentId = pulumi.Input.asInput<String>(gameServerDeploymentId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      gameServerDeploymentId: pulumi.Output.create<String>(map['gameServerDeploymentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

