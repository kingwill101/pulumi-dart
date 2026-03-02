// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_field_schema.dart';

class TableSchema {
  /// Describes the fields in a table.
  final pulumi.Input<List<TableFieldSchema>>? fields;

  /// Creates a new [TableSchema].
  /// [fields] Describes the fields in a table.
  TableSchema({
    this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<TableFieldSchema>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<TableFieldSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TableSchema.fromMap(Map<String, dynamic> map) {
    return TableSchema(
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<TableFieldSchema>(map['fields']!, (value) => TableFieldSchema.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

