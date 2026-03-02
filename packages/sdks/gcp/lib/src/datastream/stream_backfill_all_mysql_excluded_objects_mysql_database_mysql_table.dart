// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mysql_excluded_objects_mysql_database_mysql_table_mysql_column.dart';

class StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable {
  /// MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn>>? mysqlColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable].
  /// [mysqlColumns] MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable({
    this.mysqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn>, List<Map<String, dynamic>>>(mysqlColumns, (value) => pulumi.Input.encodeList<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable(
      mysqlColumns: map['mysqlColumns'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn>(map['mysqlColumns']!, (value) => StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      table: (map['table'] as String).input(),
    );
  }
}

