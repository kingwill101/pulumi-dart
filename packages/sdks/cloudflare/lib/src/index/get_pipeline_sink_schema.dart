// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sink_schema_field.dart';
import 'get_pipeline_sink_schema_format.dart';

class GetPipelineSinkSchema {
  final pulumi.Input<List<GetPipelineSinkSchemaField>> fields;
  final pulumi.Input<GetPipelineSinkSchemaFormat> format;
  final pulumi.Input<bool> inferred;

  /// Creates a new [GetPipelineSinkSchema].
  /// [fields] Required.
  /// [format] Required.
  /// [inferred] Required.
  const GetPipelineSinkSchema({
    required this.fields,
    required this.format,
    required this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<GetPipelineSinkSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GetPipelineSinkSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'format': pulumi.Input.mapInputValue<GetPipelineSinkSchemaFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'inferred': inferred,
    };
  }

  factory GetPipelineSinkSchema.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkSchema(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPipelineSinkSchemaField>(map['fields']!, (value) => GetPipelineSinkSchemaField.fromMap((value as Map).cast<String, dynamic>()))),
      format: pulumi.Input.fromValue(GetPipelineSinkSchemaFormat.fromMap((map['format']! as Map).cast<String, dynamic>())),
      inferred: pulumi.Input.fromValue(map['inferred'] as bool),
    );
  }
}
