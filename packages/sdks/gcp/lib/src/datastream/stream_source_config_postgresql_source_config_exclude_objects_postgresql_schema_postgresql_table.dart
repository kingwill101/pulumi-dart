// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table_postgresql_column.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>?>? postgresqlColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable({
    this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>, List<Map<String, dynamic>>>(postgresqlColumns, (value) => pulumi.Input.encodeList<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable(
      postgresqlColumns: (() { final guardedValue = map['postgresqlColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>(guardedValue, (value) => StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
