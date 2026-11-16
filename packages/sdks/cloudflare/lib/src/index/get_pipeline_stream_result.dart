// ignore_for_file: unused_element, unnecessary_cast

import 'get_pipeline_stream_filter.dart';
import 'get_pipeline_stream_format.dart';
import 'get_pipeline_stream_http.dart';
import 'get_pipeline_stream_schema.dart';
import 'get_pipeline_stream_worker_binding.dart';

/// Result data returned by getPipelineStream.
class GetPipelineStreamResult {
  /// Specifies the public ID of the account.
  final String? accountId;
  final String? createdAt;
  /// Indicates the endpoint URL of this stream.
  final String? endpoint;
  final GetPipelineStreamFilter? filter;
  /// Defines the data format of the events.
  final GetPipelineStreamFormat? format;
  final GetPipelineStreamHttp? http;
  /// Specifies the public ID of the stream.
  final String? id;
  final String? modifiedAt;
  /// Indicates the name of the Stream.
  final String? name;
  /// Defines the schema of the events in the data stream.
  final GetPipelineStreamSchema? schema;
  /// Specifies the public ID of the stream.
  final String? streamId;
  /// Indicates the current version of this stream.
  final int? version;
  final GetPipelineStreamWorkerBinding? workerBinding;

  /// Creates a new [GetPipelineStreamResult].
  /// [accountId] Specifies the public ID of the account.
  /// [createdAt] Optional.
  /// [endpoint] Indicates the endpoint URL of this stream.
  /// [filter] Optional.
  /// [format] Defines the data format of the events.
  /// [http] Optional.
  /// [id] Specifies the public ID of the stream.
  /// [modifiedAt] Optional.
  /// [name] Indicates the name of the Stream.
  /// [schema] Defines the schema of the events in the data stream.
  /// [streamId] Specifies the public ID of the stream.
  /// [version] Indicates the current version of this stream.
  /// [workerBinding] Optional.
  const GetPipelineStreamResult({
    this.accountId,
    this.createdAt,
    this.endpoint,
    this.filter,
    this.format,
    this.http,
    this.id,
    this.modifiedAt,
    this.name,
    this.schema,
    this.streamId,
    this.version,
    this.workerBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'endpoint': ?endpoint,
      'filter': ?filter?.toMap(),
      'format': ?format?.toMap(),
      'http': ?http?.toMap(),
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'schema': ?schema?.toMap(),
      'streamId': ?streamId,
      'version': ?version,
      'workerBinding': ?workerBinding?.toMap(),
    };
  }

  factory GetPipelineStreamResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetPipelineStreamFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return GetPipelineStreamFormat.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return GetPipelineStreamHttp.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return GetPipelineStreamSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      workerBinding: (() { final guardedValue = map['workerBinding']; if (guardedValue == null) return null; return GetPipelineStreamWorkerBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
