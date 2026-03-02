// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_postgresql_excluded_objects_postgresql_schema_postgresql_table.dart';

class StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable>>? postgresqlTables;
  /// Database name.
  final pulumi.Input<String> schema;

  /// Creates a new [StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Database name.
  StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlTables': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable>, List<Map<String, dynamic>>>(postgresqlTables, (value) => pulumi.Input.encodeList<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': schema,
    };
  }

  factory StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema(
      postgresqlTables: map['postgresqlTables'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable>(map['postgresqlTables']!, (value) => StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: (map['schema'] as String).input(),
    );
  }
}

