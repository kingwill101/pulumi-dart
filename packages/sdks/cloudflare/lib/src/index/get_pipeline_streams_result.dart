// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_streams_result_format.dart';
import 'get_pipeline_streams_result_http.dart';
import 'get_pipeline_streams_result_schema.dart';
import 'get_pipeline_streams_result_worker_binding.dart';

class GetPipelineStreamsResult {
  final pulumi.Input<String> createdAt;
  /// Indicates the endpoint URL of this stream.
  final pulumi.Input<String> endpoint;
  final pulumi.Input<GetPipelineStreamsResultFormat> format;
  final pulumi.Input<GetPipelineStreamsResultHttp> http;
  /// Indicates a unique identifier for this stream.
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedAt;
  /// Indicates the name of the Stream.
  final pulumi.Input<String> name;
  final pulumi.Input<GetPipelineStreamsResultSchema> schema;
  /// Indicates the current version of this stream.
  final pulumi.Input<int> version;
  final pulumi.Input<GetPipelineStreamsResultWorkerBinding> workerBinding;

  /// Creates a new [GetPipelineStreamsResult].
  /// [createdAt] Required.
  /// [endpoint] Indicates the endpoint URL of this stream.
  /// [format] Required.
  /// [http] Required.
  /// [id] Indicates a unique identifier for this stream.
  /// [modifiedAt] Required.
  /// [name] Indicates the name of the Stream.
  /// [schema] Required.
  /// [version] Indicates the current version of this stream.
  /// [workerBinding] Required.
  const GetPipelineStreamsResult({
    required this.createdAt,
    required this.endpoint,
    required this.format,
    required this.http,
    required this.id,
    required this.modifiedAt,
    required this.name,
    required this.schema,
    required this.version,
    required this.workerBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'endpoint': endpoint,
      'format': pulumi.Input.mapInputValue<GetPipelineStreamsResultFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'http': pulumi.Input.mapInputValue<GetPipelineStreamsResultHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'id': id,
      'modifiedAt': modifiedAt,
      'name': name,
      'schema': pulumi.Input.mapInputValue<GetPipelineStreamsResultSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'version': version,
      'workerBinding': pulumi.Input.mapInputValue<GetPipelineStreamsResultWorkerBinding, Map<String, dynamic>>(workerBinding, (value) => value.toMap()),
    };
  }

  factory GetPipelineStreamsResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      format: pulumi.Input.fromValue(GetPipelineStreamsResultFormat.fromMap((map['format']! as Map).cast<String, dynamic>())),
      http: pulumi.Input.fromValue(GetPipelineStreamsResultHttp.fromMap((map['http']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: pulumi.Input.fromValue(GetPipelineStreamsResultSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
      workerBinding: pulumi.Input.fromValue(GetPipelineStreamsResultWorkerBinding.fromMap((map['workerBinding']! as Map).cast<String, dynamic>())),
    );
  }
}
