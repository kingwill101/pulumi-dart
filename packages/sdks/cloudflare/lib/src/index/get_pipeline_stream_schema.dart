// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_stream_schema_field.dart';
import 'get_pipeline_stream_schema_format.dart';

class GetPipelineStreamSchema {
  final pulumi.Input<List<GetPipelineStreamSchemaField>> fields;
  final pulumi.Input<GetPipelineStreamSchemaFormat> format;
  final pulumi.Input<bool> inferred;

  /// Creates a new [GetPipelineStreamSchema].
  /// [fields] Required.
  /// [format] Required.
  /// [inferred] Required.
  const GetPipelineStreamSchema({
    required this.fields,
    required this.format,
    required this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<GetPipelineStreamSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GetPipelineStreamSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'format': pulumi.Input.mapInputValue<GetPipelineStreamSchemaFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'inferred': inferred,
    };
  }

  factory GetPipelineStreamSchema.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamSchema(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPipelineStreamSchemaField>(map['fields']!, (value) => GetPipelineStreamSchemaField.fromMap((value as Map).cast<String, dynamic>()))),
      format: pulumi.Input.fromValue(GetPipelineStreamSchemaFormat.fromMap((map['format']! as Map).cast<String, dynamic>())),
      inferred: pulumi.Input.fromValue(map['inferred'] as bool),
    );
  }
}
