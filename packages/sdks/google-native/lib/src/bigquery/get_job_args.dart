// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_v2_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_get_job_args_doc}
class GetJobArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobArgs].
  /// [jobId] Required.
  /// [location] Optional.
  /// [project] Optional.
  GetJobArgs({
    required this.jobId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobId: (map['jobId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

