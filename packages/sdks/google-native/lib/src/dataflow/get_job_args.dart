// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataflow_v1b3_get_job_args_doc}
/// Arguments for getJob.
/// {@endtemplate}
/// {@macro pulumi_dataflow_v1b3_get_job_args_doc}
class GetJobArgs {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetJobArgs].
  /// [jobId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetJobArgs({
    required pulumi.Output<String> jobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      jobId = pulumi.Input.asInput<String>(jobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetJobArgs.fromMap(Map<String, dynamic> map) {
    return GetJobArgs(
      jobId: pulumi.Output.create<String>(map['jobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

