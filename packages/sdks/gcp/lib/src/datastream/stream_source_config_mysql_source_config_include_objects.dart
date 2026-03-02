// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_include_objects_mysql_database.dart';

class StreamSourceConfigMysqlSourceConfigIncludeObjects {
  /// MySQL databases on the server
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase>> mysqlDatabases;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigIncludeObjects].
  /// [mysqlDatabases] MySQL databases on the server
  StreamSourceConfigMysqlSourceConfigIncludeObjects({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases': pulumi.Input.mapInputValue<List<StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase>, List<Map<String, dynamic>>>(mysqlDatabases, (value) => pulumi.Input.encodeList<StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigMysqlSourceConfigIncludeObjects.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigIncludeObjects(
      mysqlDatabases: (pulumi.Input.decodeList<StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase>(map['mysqlDatabases'], (value) => StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

