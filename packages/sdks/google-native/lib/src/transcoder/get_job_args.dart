// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transcoder_v1_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_transcoder_v1_get_job_args_doc}
class GetJobArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobArgs].
  /// [jobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetJobArgs({
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

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

