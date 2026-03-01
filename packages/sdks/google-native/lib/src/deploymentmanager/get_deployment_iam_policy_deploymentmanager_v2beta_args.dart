// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_v2beta_get_deployment_iam_policy_deploymentmanager_v2beta_args_doc}
/// Arguments for getDeploymentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2beta_get_deployment_iam_policy_deploymentmanager_v2beta_args_doc}
class GetDeploymentIamPolicyDeploymentmanagerV2betaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetDeploymentIamPolicyDeploymentmanagerV2betaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetDeploymentIamPolicyDeploymentmanagerV2betaArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> resource,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'resource': resource,
    };
  }

  factory GetDeploymentIamPolicyDeploymentmanagerV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentIamPolicyDeploymentmanagerV2betaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
    );
  }
}

