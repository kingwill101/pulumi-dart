// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_sink_schema_field.dart';
import 'pipeline_sink_schema_format.dart';

class PipelineSinkSchema {
  final pulumi.Input<List<PipelineSinkSchemaField>?>? fields;
  final pulumi.Input<PipelineSinkSchemaFormat?>? format;
  final pulumi.Input<bool?>? inferred;

  /// Creates a new [PipelineSinkSchema].
  /// [fields] Optional.
  /// [format] Optional.
  /// [inferred] Optional.
  const PipelineSinkSchema({
    this.fields,
    this.format,
    this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<PipelineSinkSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PipelineSinkSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'format': ?pulumi.Input.mapOptionalInputValue<PipelineSinkSchemaFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'inferred': ?inferred,
    };
  }

  factory PipelineSinkSchema.fromMap(Map<String, dynamic> map) {
    return PipelineSinkSchema(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineSinkSchemaField>(guardedValue, (value) => PipelineSinkSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkSchemaFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inferred: (() { final guardedValue = map['inferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
