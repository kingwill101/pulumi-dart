// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_exclude_objects_mysql_database.dart';

class StreamSourceConfigMysqlSourceConfigExcludeObjects {
  /// MySQL databases on the server
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase>
  >
  mysqlDatabases;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigExcludeObjects].
  /// [mysqlDatabases] MySQL databases on the server
  StreamSourceConfigMysqlSourceConfigExcludeObjects({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases':
          pulumi.Input.mapInputValue<
            List<
              StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase
            >,
            List<Map<String, dynamic>>
          >(
            mysqlDatabases,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StreamSourceConfigMysqlSourceConfigExcludeObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMysqlSourceConfigExcludeObjects(
      mysqlDatabases: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase
        >(
          map['mysqlDatabases']!,
          (value) =>
              StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
