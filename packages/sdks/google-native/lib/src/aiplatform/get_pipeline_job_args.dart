// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_pipeline_job_args_doc}
/// Arguments for getPipelineJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_pipeline_job_args_doc}
class GetPipelineJobArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPipelineJobArgs].
  /// [location] Required.
  /// [pipelineJobId] Required.
  /// [project] Optional.
  GetPipelineJobArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> pipelineJobId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      pipelineJobId = pulumi.Input.asInput<String>(pipelineJobId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'pipelineJobId': pipelineJobId,
      'project': ?project,
    };
  }

  factory GetPipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      pipelineJobId: pulumi.Output.create<String>(map['pipelineJobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

