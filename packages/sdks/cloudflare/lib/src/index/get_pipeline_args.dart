// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pipeline_get_pipeline_args_doc}
/// Arguments for getPipeline.
/// {@endtemplate}
/// {@macro pulumi_index_get_pipeline_get_pipeline_args_doc}
class GetPipelineArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  /// Specifies the public ID of the pipeline.
  final pulumi.Input<String> pipelineId;

  /// Creates a new [GetPipelineArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [pipelineId] Specifies the public ID of the pipeline.
  const GetPipelineArgs({
    this.accountId,
    required this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'pipelineId': pipelineId,
    };
  }

  factory GetPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: pulumi.Input.fromValue(map['pipelineId'] as String),
    );
  }
}
