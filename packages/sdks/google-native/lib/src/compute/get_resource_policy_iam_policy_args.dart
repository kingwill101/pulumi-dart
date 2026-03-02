// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_resource_policy_iam_policy_args_doc}
/// Arguments for getResourcePolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_resource_policy_iam_policy_args_doc}
class GetResourcePolicyIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetResourcePolicyIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetResourcePolicyIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.region,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'region': region,
      'resource': resource,
    };
  }

  factory GetResourcePolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

