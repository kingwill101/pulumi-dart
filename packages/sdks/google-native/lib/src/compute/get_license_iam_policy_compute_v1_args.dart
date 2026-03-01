// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_license_iam_policy_compute_v1_args_doc}
/// Arguments for getLicenseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_license_iam_policy_compute_v1_args_doc}
class GetLicenseIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetLicenseIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetLicenseIamPolicyComputeV1Args({
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

  factory GetLicenseIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetLicenseIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
    );
  }
}

