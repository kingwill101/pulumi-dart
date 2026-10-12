// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_streams_result_schema_field.dart';

class GetPipelineStreamsResultSchema {
  final pulumi.Input<List<GetPipelineStreamsResultSchemaField>> fields;
  final pulumi.Input<bool> inferred;

  /// Creates a new [GetPipelineStreamsResultSchema].
  /// [fields] Required.
  /// [inferred] Required.
  const GetPipelineStreamsResultSchema({
    required this.fields,
    required this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<GetPipelineStreamsResultSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GetPipelineStreamsResultSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inferred': inferred,
    };
  }

  factory GetPipelineStreamsResultSchema.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsResultSchema(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPipelineStreamsResultSchemaField>(map['fields']!, (value) => GetPipelineStreamsResultSchemaField.fromMap((value as Map).cast<String, dynamic>()))),
      inferred: pulumi.Input.fromValue(map['inferred'] as bool),
    );
  }
}
