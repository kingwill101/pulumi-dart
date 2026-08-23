// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_exclude_objects_mysql_database_mysql_table.dart';

class StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase {
  /// Database name.
  final pulumi.Input<String> database;
  /// Tables in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable>>? mysqlTables;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase].
  /// [database] Database name.
  /// [mysqlTables] Tables in the database.
  const StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase({
    required this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'mysqlTables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable>, List<Map<String, dynamic>>>(mysqlTables, (value) => pulumi.Input.encodeList<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase(
      database: pulumi.Input.fromValue(map['database'] as String),
      mysqlTables: (() { final guardedValue = map['mysqlTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable>(guardedValue, (value) => StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
