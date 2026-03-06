// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_postgresql_excluded_objects_postgresql_schema_postgresql_table_postgresql_column.dart';

class StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>>? postgresqlColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable({
    this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>, List<Map<String, dynamic>>>(postgresqlColumns, (value) => pulumi.Input.encodeList<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable(
      postgresqlColumns: (() { final guardedValue = map['postgresqlColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>(guardedValue, (value) => StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}

