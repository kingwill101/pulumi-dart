// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database.dart';

/// MySQL database structure
class MysqlRdbms {
  /// Mysql databases on the server
  final pulumi.Input<List<MysqlDatabase>>? mysqlDatabases;

  /// Creates a new [MysqlRdbms].
  /// [mysqlDatabases] Mysql databases on the server
  const MysqlRdbms({
    this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases': ?pulumi.Input.mapOptionalInputValue<List<MysqlDatabase>, List<Map<String, dynamic>>>(mysqlDatabases, (value) => pulumi.Input.encodeList<MysqlDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MysqlRdbms.fromMap(Map<String, dynamic> map) {
    return MysqlRdbms(
      mysqlDatabases: (() { final guardedValue = map['mysqlDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MysqlDatabase>(guardedValue, (value) => MysqlDatabase.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
