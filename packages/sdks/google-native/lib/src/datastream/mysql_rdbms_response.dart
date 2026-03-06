// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database_response.dart';

/// MySQL database structure
class MysqlRdbmsResponse {
  /// Mysql databases on the server
  final pulumi.Input<List<MysqlDatabaseResponse>> mysqlDatabases;

  /// Creates a new [MysqlRdbmsResponse].
  /// [mysqlDatabases] Mysql databases on the server
  const MysqlRdbmsResponse({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases': pulumi.Input.mapInputValue<List<MysqlDatabaseResponse>, List<Map<String, dynamic>>>(mysqlDatabases, (value) => pulumi.Input.encodeList<MysqlDatabaseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MysqlRdbmsResponse.fromMap(Map<String, dynamic> map) {
    return MysqlRdbmsResponse(
      mysqlDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MysqlDatabaseResponse>(map['mysqlDatabases']!, (value) => MysqlDatabaseResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

