// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_genomics_v1alpha2_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_genomics_v1alpha2_get_pipeline_args_doc}
class GetPipelineArgs {
  final pulumi.Input<String> pipelineId;

  /// Creates a new [GetPipelineArgs].
  /// [pipelineId] Required.
  const GetPipelineArgs({
    required this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineId': pipelineId,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      pipelineId: pulumi.Input.fromValue(map['pipelineId'] as String),
    );
  }
}

