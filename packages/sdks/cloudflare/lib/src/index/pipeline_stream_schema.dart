// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stream_schema_field.dart';

class PipelineStreamSchema {
  final pulumi.Input<List<PipelineStreamSchemaField>?>? fields;
  final pulumi.Input<bool?>? inferred;

  /// Creates a new [PipelineStreamSchema].
  /// [fields] Optional.
  /// [inferred] Optional.
  const PipelineStreamSchema({
    this.fields,
    this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<PipelineStreamSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PipelineStreamSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inferred': ?inferred,
    };
  }

  factory PipelineStreamSchema.fromMap(Map<String, dynamic> map) {
    return PipelineStreamSchema(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineStreamSchemaField>(guardedValue, (value) => PipelineStreamSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inferred: (() { final guardedValue = map['inferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
