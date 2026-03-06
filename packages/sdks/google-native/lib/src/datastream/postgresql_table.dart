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
  const PostgresqlTable({
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
      postgresqlColumns: (() { final guardedValue = map['postgresqlColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PostgresqlColumn>(guardedValue, (value) => PostgresqlColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

