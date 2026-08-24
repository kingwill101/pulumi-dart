// ignore_for_file: unused_element, unnecessary_cast

import 'get_pipeline_sink_config.dart';
import 'get_pipeline_sink_filter.dart';
import 'get_pipeline_sink_format.dart';
import 'get_pipeline_sink_schema.dart';

/// Result data returned by getPipelineSink.
class GetPipelineSinkResult {
  /// Specifies the public ID of the account.
  final String? accountId;
  /// Defines the configuration of the R2 Sink.
  final GetPipelineSinkConfig? config;
  final String? createdAt;
  final GetPipelineSinkFilter? filter;
  final GetPipelineSinkFormat? format;
  /// Specifies the publid ID of the sink.
  final String? id;
  final String? modifiedAt;
  /// Defines the name of the Sink.
  final String? name;
  final GetPipelineSinkSchema? schema;
  /// Specifies the publid ID of the sink.
  final String? sinkId;
  /// Specifies the type of sink.
  /// Available values: "r2", "r2*data*catalog".
  final String? type;

  /// Creates a new [GetPipelineSinkResult].
  /// [accountId] Specifies the public ID of the account.
  /// [config] Defines the configuration of the R2 Sink.
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [format] Optional.
  /// [id] Specifies the publid ID of the sink.
  /// [modifiedAt] Optional.
  /// [name] Defines the name of the Sink.
  /// [schema] Optional.
  /// [sinkId] Specifies the publid ID of the sink.
  /// [type] Specifies the type of sink.
  const GetPipelineSinkResult({
    this.accountId,
    this.config,
    this.createdAt,
    this.filter,
    this.format,
    this.id,
    this.modifiedAt,
    this.name,
    this.schema,
    this.sinkId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'createdAt': ?createdAt,
      'filter': ?filter?.toMap(),
      'format': ?format?.toMap(),
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'schema': ?schema?.toMap(),
      'sinkId': ?sinkId,
      'type': ?type,
    };
  }

  factory GetPipelineSinkResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetPipelineSinkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetPipelineSinkFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return GetPipelineSinkFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return GetPipelineSinkSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sinkId: (() { final guardedValue = map['sinkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
