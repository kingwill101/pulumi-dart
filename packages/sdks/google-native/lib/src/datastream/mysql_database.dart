// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_table.dart';

/// MySQL database.
class MysqlDatabase {
  /// Database name.
  final pulumi.Input<String>? database;
  /// Tables in the database.
  final pulumi.Input<List<MysqlTable>>? mysqlTables;

  /// Creates a new [MysqlDatabase].
  /// [database] Database name.
  /// [mysqlTables] Tables in the database.
  MysqlDatabase({
    this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'mysqlTables': ?pulumi.Input.mapOptionalInputValue<List<MysqlTable>, List<Map<String, dynamic>>>(mysqlTables, (value) => pulumi.Input.encodeList<MysqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MysqlDatabase.fromMap(Map<String, dynamic> map) {
    return MysqlDatabase(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysqlTables: (() { final guardedValue = map['mysqlTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MysqlTable>(guardedValue, (value) => MysqlTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

