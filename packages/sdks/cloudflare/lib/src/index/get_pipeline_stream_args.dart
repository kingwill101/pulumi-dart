// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_stream_filter.dart';

/// {@template pulumi_index_get_pipeline_stream_get_pipeline_stream_args_doc}
/// Arguments for getPipelineStream.
/// {@endtemplate}
/// {@macro pulumi_index_get_pipeline_stream_get_pipeline_stream_args_doc}
class GetPipelineStreamArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetPipelineStreamFilter?>? filter;
  /// Specifies the public ID of the stream.
  final pulumi.Input<String?>? streamId;

  /// Creates a new [GetPipelineStreamArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [filter] Optional.
  /// [streamId] Specifies the public ID of the stream.
  const GetPipelineStreamArgs({
    this.accountId,
    this.filter,
    this.streamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetPipelineStreamFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'streamId': ?streamId,
    };
  }

  factory GetPipelineStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetPipelineStreamFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
