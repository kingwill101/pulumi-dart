// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_job_dataproc_v1beta2_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_job_dataproc_v1beta2_args_doc}
class GetJobDataprocV1beta2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetJobDataprocV1beta2Args].
  /// [jobId] Required.
  /// [project] Optional.
  /// [region] Required.
  GetJobDataprocV1beta2Args({
    required pulumi.Output<String> jobId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': ?project,
      'region': region,
    };
  }

  factory GetJobDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetJobDataprocV1beta2Args(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

