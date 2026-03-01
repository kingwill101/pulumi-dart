// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ml_v1_get_job_iam_policy_args_doc}
/// Arguments for getJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_get_job_iam_policy_args_doc}
class GetJobIamPolicyArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobIamPolicyArgs].
  /// [jobId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetJobIamPolicyArgs({
    required pulumi.Output<String> jobId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetJobIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyArgs(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

