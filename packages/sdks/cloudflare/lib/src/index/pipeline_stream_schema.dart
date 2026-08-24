// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stream_schema_field.dart';
import 'pipeline_stream_schema_format.dart';

class PipelineStreamSchema {
  final pulumi.Input<List<PipelineStreamSchemaField>?>? fields;
  final pulumi.Input<PipelineStreamSchemaFormat?>? format;
  final pulumi.Input<bool?>? inferred;

  /// Creates a new [PipelineStreamSchema].
  /// [fields] Optional.
  /// [format] Optional.
  /// [inferred] Optional.
  const PipelineStreamSchema({
    this.fields,
    this.format,
    this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<PipelineStreamSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PipelineStreamSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'format': ?pulumi.Input.mapOptionalInputValue<PipelineStreamSchemaFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'inferred': ?inferred,
    };
  }

  factory PipelineStreamSchema.fromMap(Map<String, dynamic> map) {
    return PipelineStreamSchema(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineStreamSchemaField>(guardedValue, (value) => PipelineStreamSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStreamSchemaFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inferred: (() { final guardedValue = map['inferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
