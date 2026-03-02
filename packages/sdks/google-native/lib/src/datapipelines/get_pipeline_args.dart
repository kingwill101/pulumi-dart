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
  GetPipelineArgs({
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
      location: (map['location'] as String).input(),
      pipelineId: (map['pipelineId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

