// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_include_objects_postgresql_schema_postgresql_table_postgresql_column.dart';

class StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>?>? postgresqlColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable({
    this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>, List<Map<String, dynamic>>>(postgresqlColumns, (value) => pulumi.Input.encodeList<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable(
      postgresqlColumns: (() { final guardedValue = map['postgresqlColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn>(guardedValue, (value) => StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
