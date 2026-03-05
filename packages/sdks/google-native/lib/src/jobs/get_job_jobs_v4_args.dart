// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_jobs_v4_get_job_jobs_v4_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_jobs_v4_get_job_jobs_v4_args_doc}
class GetJobJobsV4Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetJobJobsV4Args].
  /// [jobId] Required.
  /// [project] Optional.
  /// [tenantId] Required.
  GetJobJobsV4Args({
    required this.jobId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetJobJobsV4Args.fromMap(Map<String, dynamic> map) {
    return GetJobJobsV4Args(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

