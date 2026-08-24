// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stream_format.dart';
import 'pipeline_stream_http.dart';
import 'pipeline_stream_schema.dart';
import 'pipeline_stream_worker_binding.dart';

/// Input properties used for looking up and filtering PipelineStream resources.
class PipelineStreamState {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Indicates the endpoint URL of this stream.
  final pulumi.Input<String?>? endpoint;
  final pulumi.Input<PipelineStreamFormat?>? format;
  final pulumi.Input<PipelineStreamHttp?>? http;
  final pulumi.Input<String?>? modifiedAt;
  /// Specifies the name of the Stream.
  final pulumi.Input<String?>? name;
  final pulumi.Input<PipelineStreamSchema?>? schema;
  /// Indicates the current version of this stream.
  final pulumi.Input<int?>? version;
  final pulumi.Input<PipelineStreamWorkerBinding?>? workerBinding;

  /// Creates a new [PipelineStreamState].
  /// [accountId] Specifies the public ID of the account.
  /// [createdAt] Optional.
  /// [endpoint] Indicates the endpoint URL of this stream.
  /// [format] Optional.
  /// [http] Optional.
  /// [modifiedAt] Optional.
  /// [name] Specifies the name of the Stream.
  /// [schema] Optional.
  /// [version] Indicates the current version of this stream.
  /// [workerBinding] Optional.
  const PipelineStreamState({
    this.accountId,
    this.createdAt,
    this.endpoint,
    this.format,
    this.http,
    this.modifiedAt,
    this.name,
    this.schema,
    this.version,
    this.workerBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'endpoint': ?endpoint,
      'format': ?pulumi.Input.mapOptionalInputValue<PipelineStreamFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<PipelineStreamHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<PipelineStreamSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'version': ?version,
      'workerBinding': ?pulumi.Input.mapOptionalInputValue<PipelineStreamWorkerBinding, Map<String, dynamic>>(workerBinding, (value) => value.toMap()),
    };
  }

  factory PipelineStreamState.fromMap(Map<String, dynamic> map) {
    return PipelineStreamState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      workerBinding: (() { final guardedValue = map['workerBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamWorkerBinding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
