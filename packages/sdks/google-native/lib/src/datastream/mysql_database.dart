// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_table.dart';

/// MySQL database.
class MysqlDatabase {
  /// Database name.
  final String? database;
  /// Tables in the database.
  final List<MysqlTable>? mysqlTables;

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
      'mysqlTables': ?mysqlTables == null ? null : pulumi.Input.encodeList<MysqlTable, Map<String, dynamic>>(mysqlTables!, (value) => value.toMap()),
    };
  }

  factory MysqlDatabase.fromMap(Map<String, dynamic> map) {
    return MysqlDatabase(
      database: map['database'] == null ? null : map['database'] as String,
      mysqlTables: map['mysqlTables'] == null ? null : pulumi.Input.decodeList<MysqlTable>(map['mysqlTables'], (value) => MysqlTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

