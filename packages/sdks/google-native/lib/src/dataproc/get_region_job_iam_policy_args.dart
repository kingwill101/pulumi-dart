// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_job_iam_policy_args_doc}
/// Arguments for getRegionJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_job_iam_policy_args_doc}
class GetRegionJobIamPolicyArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionJobIamPolicyArgs].
  /// [jobId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetRegionJobIamPolicyArgs({
    required this.jobId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetRegionJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionJobIamPolicyArgs(
      jobId: (map['jobId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

