// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_backend_service_iam_policy_args_doc}
/// Arguments for getRegionBackendServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_backend_service_iam_policy_args_doc}
class GetRegionBackendServiceIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetRegionBackendServiceIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetRegionBackendServiceIamPolicyArgs({
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

  factory GetRegionBackendServiceIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionBackendServiceIamPolicyArgs(
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
      region: pulumi.Input.fromValue(map['region'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
