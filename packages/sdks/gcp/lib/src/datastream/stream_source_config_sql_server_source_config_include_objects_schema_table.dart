// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_include_objects_schema_table_column.dart';

class StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn>? columns;
  /// Table name.
  final String table;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null ? null : pulumi.Input.encodeList<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn, Map<String, dynamic>>(columns!, (value) => value.toMap()),
      'table': table,
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable(
      columns: map['columns'] == null ? null : pulumi.Input.decodeList<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn>(map['columns'], (value) => StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn.fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}

