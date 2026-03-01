// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_field_schema_response.dart';

class TableSchemaResponse {
  /// Describes the fields in a table.
  final List<TableFieldSchemaResponse> fields;

  /// Creates a new [TableSchemaResponse].
  /// [fields] Describes the fields in a table.
  TableSchemaResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.encodeList<TableFieldSchemaResponse, Map<String, dynamic>>(fields, (value) => value.toMap()),
    };
  }

  factory TableSchemaResponse.fromMap(Map<String, dynamic> map) {
    return TableSchemaResponse(
      fields: pulumi.Input.decodeList<TableFieldSchemaResponse>(map['fields'], (value) => TableFieldSchemaResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

