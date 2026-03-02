// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_disk_iam_policy_compute_v1_args_doc}
/// Arguments for getRegionDiskIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_disk_iam_policy_compute_v1_args_doc}
class GetRegionDiskIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> resource;

  /// Creates a new [GetRegionDiskIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [region] Required.
  /// [resource] Required.
  GetRegionDiskIamPolicyComputeV1Args({
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

  factory GetRegionDiskIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

