// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_deployment_iam_policy_args_doc}
/// Arguments for getApiDeploymentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_deployment_iam_policy_args_doc}
class GetApiDeploymentIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiDeploymentIamPolicyArgs].
  /// [apiId] Required.
  /// [deploymentId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetApiDeploymentIamPolicyArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> deploymentId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      deploymentId = pulumi.Input.asInput<String>(deploymentId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'deploymentId': deploymentId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApiDeploymentIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiDeploymentIamPolicyArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      deploymentId: pulumi.Output.create<String>(map['deploymentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

