// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_include_objects_mysql_database_mysql_table.dart';

class StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase {
  /// Database name.
  final pulumi.Input<String> database;

  /// Tables in the database.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable
    >
  >?
  mysqlTables;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase].
  /// [database] Database name.
  /// [mysqlTables] Tables in the database.
  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase({
    required this.database,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'mysqlTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable
            >,
            List<Map<String, dynamic>>
          >(
            mysqlTables,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase(
      database: pulumi.Input.fromValue(map['database'] as String),
      mysqlTables: (() {
        final guardedValue = map['mysqlTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable
          >(
            guardedValue,
            (value) =>
                StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
