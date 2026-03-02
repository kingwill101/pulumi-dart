// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mysql_excluded_objects_mysql_database_mysql_table.dart';

class StreamBackfillAllMysqlExcludedObjectsMysqlDatabase {
  /// Database name.
  final pulumi.Input<String> database;
  /// Tables in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable>>? mysqlTables;

  /// Creates a new [StreamBackfillAllMysqlExcludedObjectsMysqlDatabase].
  /// [database] Database name.
  /// [mysqlTables] Tables in the database.
  StreamBackfillAllMysqlExcludedObjectsMysqlDatabase({
    required this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'mysqlTables': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable>, List<Map<String, dynamic>>>(mysqlTables, (value) => pulumi.Input.encodeList<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllMysqlExcludedObjectsMysqlDatabase.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMysqlExcludedObjectsMysqlDatabase(
      database: (map['database'] as String).input(),
      mysqlTables: map['mysqlTables'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable>(map['mysqlTables'], (value) => StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

