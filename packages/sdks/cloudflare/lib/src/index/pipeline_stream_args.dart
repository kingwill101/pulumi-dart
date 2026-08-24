// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stream_format.dart';
import 'pipeline_stream_http.dart';
import 'pipeline_stream_schema.dart';
import 'pipeline_stream_worker_binding.dart';

/// {@template pulumi_index_pipeline_stream_pipeline_stream_args_doc}
/// The set of arguments for PipelineStream.
/// {@endtemplate}
/// {@macro pulumi_index_pipeline_stream_pipeline_stream_args_doc}
class PipelineStreamArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String> accountId;
  final pulumi.Input<PipelineStreamFormat?>? format;
  final pulumi.Input<PipelineStreamHttp?>? http;
  /// Specifies the name of the Stream.
  final pulumi.Input<String> name;
  final pulumi.Input<PipelineStreamSchema?>? schema;
  final pulumi.Input<PipelineStreamWorkerBinding?>? workerBinding;

  /// Creates a new [PipelineStreamArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [format] Optional.
  /// [http] Optional.
  /// [name] Specifies the name of the Stream.
  /// [schema] Optional.
  /// [workerBinding] Optional.
  const PipelineStreamArgs({
    required this.accountId,
    this.format,
    this.http,
    required this.name,
    this.schema,
    this.workerBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'format': ?pulumi.Input.mapOptionalInputValue<PipelineStreamFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<PipelineStreamHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'name': name,
      'schema': ?pulumi.Input.mapOptionalInputValue<PipelineStreamSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'workerBinding': ?pulumi.Input.mapOptionalInputValue<PipelineStreamWorkerBinding, Map<String, dynamic>>(workerBinding, (value) => value.toMap()),
    };
  }

  factory PipelineStreamArgs.fromMap(Map<String, dynamic> map) {
    return PipelineStreamArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerBinding: (() { final guardedValue = map['workerBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamWorkerBinding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
