// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_template_iam_policy_compute_beta_args_doc}
/// Arguments for getInstanceTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_template_iam_policy_compute_beta_args_doc}
class GetInstanceTemplateIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetInstanceTemplateIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  const GetInstanceTemplateIamPolicyComputeBetaArgs({
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

  factory GetInstanceTemplateIamPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
