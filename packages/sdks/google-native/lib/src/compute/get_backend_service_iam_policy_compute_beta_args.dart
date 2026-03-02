// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_backend_service_iam_policy_compute_beta_args_doc}
/// Arguments for getBackendServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_backend_service_iam_policy_compute_beta_args_doc}
class GetBackendServiceIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetBackendServiceIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetBackendServiceIamPolicyComputeBetaArgs({
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

  factory GetBackendServiceIamPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

