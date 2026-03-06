// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v1_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_run_v1_get_job_args_doc}
class GetJobArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetJobArgs].
  /// [jobId] Required.
  /// [namespaceId] Required.
  const GetJobArgs({
    required this.jobId,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'namespaceId': namespaceId,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

