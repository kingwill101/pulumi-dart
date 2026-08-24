// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_sink_config.dart';
import 'pipeline_sink_format.dart';
import 'pipeline_sink_schema.dart';

/// {@template pulumi_index_pipeline_sink_pipeline_sink_args_doc}
/// The set of arguments for PipelineSink.
/// {@endtemplate}
/// {@macro pulumi_index_pipeline_sink_pipeline_sink_args_doc}
class PipelineSinkArgs {
  /// Specifies the public ID of the account.
  final pulumi.Input<String> accountId;
  /// Defines the configuration of the R2 Sink.
  final pulumi.Input<PipelineSinkConfig?>? config;
  final pulumi.Input<PipelineSinkFormat?>? format;
  /// Defines the name of the Sink.
  final pulumi.Input<String> name;
  final pulumi.Input<PipelineSinkSchema?>? schema;
  /// Specifies the type of sink.
  /// Available values: "r2", "r2*data*catalog".
  final pulumi.Input<String> type;

  /// Creates a new [PipelineSinkArgs].
  /// [accountId] Specifies the public ID of the account.
  /// [config] Defines the configuration of the R2 Sink.
  /// [format] Optional.
  /// [name] Defines the name of the Sink.
  /// [schema] Optional.
  /// [type] Specifies the type of sink.
  const PipelineSinkArgs({
    required this.accountId,
    this.config,
    this.format,
    required this.name,
    this.schema,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<PipelineSinkConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<PipelineSinkFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'name': name,
      'schema': ?pulumi.Input.mapOptionalInputValue<PipelineSinkSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PipelineSinkArgs.fromMap(Map<String, dynamic> map) {
    return PipelineSinkArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
