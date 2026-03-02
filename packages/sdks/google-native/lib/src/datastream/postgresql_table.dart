// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_column.dart';

/// PostgreSQL table.
class PostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final pulumi.Input<List<PostgresqlColumn>>? postgresqlColumns;
  /// Table name.
  final pulumi.Input<String>? table;

  /// Creates a new [PostgresqlTable].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  PostgresqlTable({
    this.postgresqlColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlColumns': ?pulumi.Input.mapOptionalInputValue<List<PostgresqlColumn>, List<Map<String, dynamic>>>(postgresqlColumns, (value) => pulumi.Input.encodeList<PostgresqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': ?table,
    };
  }

  factory PostgresqlTable.fromMap(Map<String, dynamic> map) {
    return PostgresqlTable(
      postgresqlColumns: map['postgresqlColumns'] == null ? null : (pulumi.Input.decodeList<PostgresqlColumn>(map['postgresqlColumns']!, (value) => PostgresqlColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      table: map['table'] == null ? null : (map['table']! as String).input(),
    );
  }
}

