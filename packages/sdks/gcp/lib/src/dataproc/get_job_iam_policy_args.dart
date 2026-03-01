// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_get_job_iam_policy_get_job_iam_policy_args_doc}
/// Arguments for getJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_get_job_iam_policy_get_job_iam_policy_args_doc}
class GetJobIamPolicyArgs {
  /// The name or relative resource id of the job to manage IAM policies for.
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  /// Creates a new [GetJobIamPolicyArgs].
  /// [jobId] The name or relative resource id of the job to manage IAM policies for.
  /// [project] Optional.
  /// [region] Optional.
  GetJobIamPolicyArgs({
    required pulumi.Output<String> jobId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyArgs(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

