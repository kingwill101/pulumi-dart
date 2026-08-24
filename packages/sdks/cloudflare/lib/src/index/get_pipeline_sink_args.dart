// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sink_filter.dart';

/// {@template pulumi_index_get_pipeline_sink_get_pipeline_sink_args_doc}
/// Arguments for getPipelineSink.
/// {@endtemplate}
/// {@macro pulumi_index_get_pipeline_sink_get_pipeline_sink_args_doc}
class GetPipelineSinkArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetPipelineSinkFilter?>? filter;
  /// Specifies the publid ID of the sink.
  final pulumi.Input<String?>? sinkId;

  /// Creates a new [GetPipelineSinkArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [filter] Optional.
  /// [sinkId] Specifies the publid ID of the sink.
  const GetPipelineSinkArgs({
    this.accountId,
    this.filter,
    this.sinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetPipelineSinkFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'sinkId': ?sinkId,
    };
  }

  factory GetPipelineSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetPipelineSinkFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sinkId: (() { final guardedValue = map['sinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
