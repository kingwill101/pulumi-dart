// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_job_iam_policy_get_job_iam_policy_args_doc}
/// Arguments for getJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_job_iam_policy_get_job_iam_policy_args_doc}
class GetJobIamPolicyArgs {
  /// The name or relative resource id of the job to manage IAM policies for.
  final pulumi.Input<String> jobId;
  /// The project in which the job belongs. If it
  /// is not provided, Terraform will use the provider default.
  final pulumi.Input<String?>? project;
  /// The region in which the job belongs. If it
  /// is not provided, Terraform will use the provider default.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetJobIamPolicyArgs].
  /// [jobId] The name or relative resource id of the job to manage IAM policies for.
  /// [project] The project in which the job belongs. If it
  /// [region] The region in which the job belongs. If it
  const GetJobIamPolicyArgs({
    required this.jobId,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyArgs(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
