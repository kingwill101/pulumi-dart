// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_pipeline_job_aiplatform_v1beta1_args_doc}
/// Arguments for getPipelineJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_pipeline_job_aiplatform_v1beta1_args_doc}
class GetPipelineJobAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPipelineJobAiplatformV1beta1Args].
  /// [location] Required.
  /// [pipelineJobId] Required.
  /// [project] Optional.
  GetPipelineJobAiplatformV1beta1Args({
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

  factory GetPipelineJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPipelineJobAiplatformV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      pipelineJobId: pulumi.Input.fromValue(map['pipelineJobId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

