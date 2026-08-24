// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pipeline_streams_get_pipeline_streams_args_doc}
/// Arguments for getPipelineStreams.
/// {@endtemplate}
/// {@macro pulumi_index_get_pipeline_streams_get_pipeline_streams_args_doc}
class GetPipelineStreamsArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filters streams by name (case-insensitive substring).
  final pulumi.Input<String?>? name;
  /// Specifies the public ID of the pipeline.
  final pulumi.Input<String?>? pipelineId;

  /// Creates a new [GetPipelineStreamsArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filters streams by name (case-insensitive substring).
  /// [pipelineId] Specifies the public ID of the pipeline.
  const GetPipelineStreamsArgs({
    this.accountId,
    this.maxItems,
    this.name,
    this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'pipelineId': ?pipelineId,
    };
  }

  factory GetPipelineStreamsArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
