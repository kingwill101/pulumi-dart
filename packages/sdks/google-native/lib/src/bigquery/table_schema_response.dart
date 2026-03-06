// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_field_schema_response.dart';

class TableSchemaResponse {
  /// Describes the fields in a table.
  final pulumi.Input<List<TableFieldSchemaResponse>> fields;

  /// Creates a new [TableSchemaResponse].
  /// [fields] Describes the fields in a table.
  const TableSchemaResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<TableFieldSchemaResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TableFieldSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TableSchemaResponse.fromMap(Map<String, dynamic> map) {
    return TableSchemaResponse(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<TableFieldSchemaResponse>(map['fields']!, (value) => TableFieldSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

