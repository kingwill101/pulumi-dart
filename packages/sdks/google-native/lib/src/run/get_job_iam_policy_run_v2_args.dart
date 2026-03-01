// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v2_get_job_iam_policy_run_v2_args_doc}
/// Arguments for getJobIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_run_v2_get_job_iam_policy_run_v2_args_doc}
class GetJobIamPolicyRunV2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobIamPolicyRunV2Args].
  /// [jobId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetJobIamPolicyRunV2Args({
    required pulumi.Output<String> jobId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetJobIamPolicyRunV2Args.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyRunV2Args(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

