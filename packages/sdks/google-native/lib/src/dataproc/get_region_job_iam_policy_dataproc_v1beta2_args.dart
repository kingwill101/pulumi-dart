// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_job_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_job_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionJobIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionJobIamPolicyDataprocV1beta2Args].
  /// [jobId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  const GetRegionJobIamPolicyDataprocV1beta2Args({
    required this.jobId,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionJobIamPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetRegionJobIamPolicyDataprocV1beta2Args(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
