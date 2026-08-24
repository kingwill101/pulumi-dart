// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sinks_result_config.dart';
import 'get_pipeline_sinks_result_format.dart';
import 'get_pipeline_sinks_result_schema.dart';

class GetPipelineSinksResult {
  /// Defines the configuration of the R2 Sink.
  final pulumi.Input<GetPipelineSinksResultConfig> config;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<GetPipelineSinksResultFormat> format;
  /// Indicates a unique identifier for this sink.
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedAt;
  /// Defines the name of the Sink.
  final pulumi.Input<String> name;
  final pulumi.Input<GetPipelineSinksResultSchema> schema;
  /// Specifies the type of sink.
  /// Available values: "r2", "r2*data*catalog".
  final pulumi.Input<String> type;

  /// Creates a new [GetPipelineSinksResult].
  /// [config] Defines the configuration of the R2 Sink.
  /// [createdAt] Required.
  /// [format] Required.
  /// [id] Indicates a unique identifier for this sink.
  /// [modifiedAt] Required.
  /// [name] Defines the name of the Sink.
  /// [schema] Required.
  /// [type] Specifies the type of sink.
  const GetPipelineSinksResult({
    required this.config,
    required this.createdAt,
    required this.format,
    required this.id,
    required this.modifiedAt,
    required this.name,
    required this.schema,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetPipelineSinksResultConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createdAt': createdAt,
      'format': pulumi.Input.mapInputValue<GetPipelineSinksResultFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'id': id,
      'modifiedAt': modifiedAt,
      'name': name,
      'schema': pulumi.Input.mapInputValue<GetPipelineSinksResultSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPipelineSinksResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResult(
      config: pulumi.Input.fromValue(GetPipelineSinksResultConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      format: pulumi.Input.fromValue(GetPipelineSinksResultFormat.fromMap((map['format']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: pulumi.Input.fromValue(GetPipelineSinksResultSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
