// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datapipelines_v1_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_datapipelines_v1_get_pipeline_args_doc}
class GetPipelineArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> pipelineId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPipelineArgs].
  /// [location] Required.
  /// [pipelineId] Required.
  /// [project] Optional.
  const GetPipelineArgs({
    required this.location,
    required this.pipelineId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'pipelineId': pipelineId,
      'project': ?project,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      pipelineId: pulumi.Input.fromValue(map['pipelineId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
