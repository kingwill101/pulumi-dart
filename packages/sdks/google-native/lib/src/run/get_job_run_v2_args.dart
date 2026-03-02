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
    required this.jobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetJobRunV2Args.fromMap(Map<String, dynamic> map) {
    return GetJobRunV2Args(
      jobId: (map['jobId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

