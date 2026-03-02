// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_sql_server_excluded_objects_schema_table.dart';

class StreamBackfillAllSqlServerExcludedObjectsSchema {
  /// Schema name.
  final pulumi.Input<String> schema;
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllSqlServerExcludedObjectsSchemaTable>>? tables;

  /// Creates a new [StreamBackfillAllSqlServerExcludedObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamBackfillAllSqlServerExcludedObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllSqlServerExcludedObjectsSchemaTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<StreamBackfillAllSqlServerExcludedObjectsSchemaTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllSqlServerExcludedObjectsSchema.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllSqlServerExcludedObjectsSchema(
      schema: (map['schema'] as String).input(),
      tables: map['tables'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllSqlServerExcludedObjectsSchemaTable>(map['tables']!, (value) => StreamBackfillAllSqlServerExcludedObjectsSchemaTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

