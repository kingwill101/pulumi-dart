// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sinks_result_schema_field.dart';
import 'get_pipeline_sinks_result_schema_format.dart';

class GetPipelineSinksResultSchema {
  final pulumi.Input<List<GetPipelineSinksResultSchemaField>> fields;
  final pulumi.Input<GetPipelineSinksResultSchemaFormat> format;
  final pulumi.Input<bool> inferred;

  /// Creates a new [GetPipelineSinksResultSchema].
  /// [fields] Required.
  /// [format] Required.
  /// [inferred] Required.
  const GetPipelineSinksResultSchema({
    required this.fields,
    required this.format,
    required this.inferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<GetPipelineSinksResultSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GetPipelineSinksResultSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'format': pulumi.Input.mapInputValue<GetPipelineSinksResultSchemaFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'inferred': inferred,
    };
  }

  factory GetPipelineSinksResultSchema.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResultSchema(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPipelineSinksResultSchemaField>(map['fields']!, (value) => GetPipelineSinksResultSchemaField.fromMap((value as Map).cast<String, dynamic>()))),
      format: pulumi.Input.fromValue(GetPipelineSinksResultSchemaFormat.fromMap((map['format']! as Map).cast<String, dynamic>())),
      inferred: pulumi.Input.fromValue(map['inferred'] as bool),
    );
  }
}
