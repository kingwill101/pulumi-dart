// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_image_iam_policy_compute_v1_args_doc}
/// Arguments for getImageIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_image_iam_policy_compute_v1_args_doc}
class GetImageIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetImageIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetImageIamPolicyComputeV1Args({
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

  factory GetImageIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetImageIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
