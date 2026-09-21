// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_sink_schema_field.dart';

class PipelineSinkSchema {
  final pulumi.Input<List<PipelineSinkSchemaField>?>? fields;
  final pulumi.Input<bool?>? inferred;

  /// Creates a new [PipelineSinkSchema].
  /// [fields] Optional.
  /// [inferred] Optional.
  const PipelineSinkSchema({
    this.fields,
    this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<PipelineSinkSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PipelineSinkSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inferred': ?inferred,
    };
  }

  factory PipelineSinkSchema.fromMap(Map<String, dynamic> map) {
    return PipelineSinkSchema(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineSinkSchemaField>(guardedValue, (value) => PipelineSinkSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inferred: (() { final guardedValue = map['inferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
