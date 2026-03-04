// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_exclude_objects_schema_table_column.dart';

class StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn>
  >?
  columns;

  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn
            >,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'table': table,
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable(
      columns: (() {
        final guardedValue = map['columns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn
          >(
            guardedValue,
            (value) =>
                StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
