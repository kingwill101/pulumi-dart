// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v2_get_job_run_v2_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_run_v2_get_job_run_v2_args_doc}
class GetJobRunV2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobRunV2Args].
  /// [jobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetJobRunV2Args({
    required pulumi.Output<String> jobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetJobRunV2Args.fromMap(Map<String, dynamic> map) {
    return GetJobRunV2Args(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

