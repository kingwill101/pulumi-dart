// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_storage_pool_iam_policy_args_doc}
/// Arguments for getStoragePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_storage_pool_iam_policy_args_doc}
class GetStoragePoolIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> zone;

  /// Creates a new [GetStoragePoolIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  /// [zone] Required.
  GetStoragePoolIamPolicyArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> resource,
    required pulumi.Output<String> zone,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      resource = pulumi.Input.asInput<String>(resource),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'resource': resource,
      'zone': zone,
    };
  }

  factory GetStoragePoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

