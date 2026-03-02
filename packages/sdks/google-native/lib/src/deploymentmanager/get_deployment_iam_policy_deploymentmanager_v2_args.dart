// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_v2_get_deployment_iam_policy_deploymentmanager_v2_args_doc}
/// Arguments for getDeploymentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2_get_deployment_iam_policy_deploymentmanager_v2_args_doc}
class GetDeploymentIamPolicyDeploymentmanagerV2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetDeploymentIamPolicyDeploymentmanagerV2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetDeploymentIamPolicyDeploymentmanagerV2Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'resource': resource,
    };
  }

  factory GetDeploymentIamPolicyDeploymentmanagerV2Args.fromMap(Map<String, dynamic> map) {
    return GetDeploymentIamPolicyDeploymentmanagerV2Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

