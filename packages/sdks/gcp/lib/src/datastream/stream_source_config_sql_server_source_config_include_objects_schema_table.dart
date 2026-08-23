// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_include_objects_schema_table_column.dart';

class StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn>>? columns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn>(guardedValue, (value) => StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTableColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
