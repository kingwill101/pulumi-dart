// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_sink_config.dart';
import 'pipeline_sink_format.dart';
import 'pipeline_sink_schema.dart';

/// Input properties used for looking up and filtering PipelineSink resources.
class PipelineSinkState {
  /// Specifies the public ID of the account.
  final pulumi.Input<String?>? accountId;
  /// Defines the configuration of the R2 Sink.
  final pulumi.Input<PipelineSinkConfig?>? config;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<PipelineSinkFormat?>? format;
  final pulumi.Input<String?>? modifiedAt;
  /// Defines the name of the Sink.
  final pulumi.Input<String?>? name;
  final pulumi.Input<PipelineSinkSchema?>? schema;
  /// Specifies the type of sink.
  /// Available values: "r2", "r2*data*catalog".
  final pulumi.Input<String?>? type;

  /// Creates a new [PipelineSinkState].
  /// [accountId] Specifies the public ID of the account.
  /// [config] Defines the configuration of the R2 Sink.
  /// [createdAt] Optional.
  /// [format] Optional.
  /// [modifiedAt] Optional.
  /// [name] Defines the name of the Sink.
  /// [schema] Optional.
  /// [type] Specifies the type of sink.
  const PipelineSinkState({
    this.accountId,
    this.config,
    this.createdAt,
    this.format,
    this.modifiedAt,
    this.name,
    this.schema,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<PipelineSinkConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'format': ?pulumi.Input.mapOptionalInputValue<PipelineSinkFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'schema': ?pulumi.Input.mapOptionalInputValue<PipelineSinkSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PipelineSinkState.fromMap(Map<String, dynamic> map) {
    return PipelineSinkState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
