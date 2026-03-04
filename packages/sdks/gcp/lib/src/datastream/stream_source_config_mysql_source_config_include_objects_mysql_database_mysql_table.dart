// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_include_objects_mysql_database_mysql_table_mysql_column.dart';

class StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable {
  /// MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn
    >
  >?
  mysqlColumns;

  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable].
  /// [mysqlColumns] MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable({
    this.mysqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn
            >,
            List<Map<String, dynamic>>
          >(
            mysqlColumns,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'table': table,
    };
  }

  factory StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable(
      mysqlColumns: (() {
        final guardedValue = map['mysqlColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn
          >(
            guardedValue,
            (value) =>
                StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
