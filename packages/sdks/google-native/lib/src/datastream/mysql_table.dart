// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_column.dart';

/// MySQL table.
class MysqlTable {
  /// MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  final pulumi.Input<List<MysqlColumn>>? mysqlColumns;
  /// Table name.
  final pulumi.Input<String>? table;

  /// Creates a new [MysqlTable].
  /// [mysqlColumns] MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const MysqlTable({
    this.mysqlColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns': ?pulumi.Input.mapOptionalInputValue<List<MysqlColumn>, List<Map<String, dynamic>>>(mysqlColumns, (value) => pulumi.Input.encodeList<MysqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': ?table,
    };
  }

  factory MysqlTable.fromMap(Map<String, dynamic> map) {
    return MysqlTable(
      mysqlColumns: (() { final guardedValue = map['mysqlColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MysqlColumn>(guardedValue, (value) => MysqlColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
