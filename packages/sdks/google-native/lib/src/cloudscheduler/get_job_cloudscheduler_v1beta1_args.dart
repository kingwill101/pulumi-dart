// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudscheduler_v1beta1_get_job_cloudscheduler_v1beta1_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_cloudscheduler_v1beta1_get_job_cloudscheduler_v1beta1_args_doc}
class GetJobCloudschedulerV1beta1Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobCloudschedulerV1beta1Args].
  /// [jobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetJobCloudschedulerV1beta1Args({
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

  factory GetJobCloudschedulerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetJobCloudschedulerV1beta1Args(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
