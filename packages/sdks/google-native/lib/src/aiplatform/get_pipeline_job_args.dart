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
    required this.location,
    required this.pipelineJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'pipelineJobId': pipelineJobId,
      'project': ?project,
    };
  }

  factory GetPipelineJobArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobArgs(
      location: (map['location'] as String).input(),
      pipelineJobId: (map['pipelineJobId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

