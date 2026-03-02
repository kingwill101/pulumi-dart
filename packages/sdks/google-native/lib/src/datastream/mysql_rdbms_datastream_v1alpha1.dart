// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_database_datastream_v1alpha1.dart';

/// MySQL database structure
class MysqlRdbmsDatastreamV1alpha1 {
  /// Mysql databases on the server
  final pulumi.Input<List<MysqlDatabaseDatastreamV1alpha1>>? mysqlDatabases;

  /// Creates a new [MysqlRdbmsDatastreamV1alpha1].
  /// [mysqlDatabases] Mysql databases on the server
  MysqlRdbmsDatastreamV1alpha1({
    this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlDatabases': ?pulumi.Input.mapOptionalInputValue<List<MysqlDatabaseDatastreamV1alpha1>, List<Map<String, dynamic>>>(mysqlDatabases, (value) => pulumi.Input.encodeList<MysqlDatabaseDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MysqlRdbmsDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlRdbmsDatastreamV1alpha1(
      mysqlDatabases: map['mysqlDatabases'] == null ? null : (pulumi.Input.decodeList<MysqlDatabaseDatastreamV1alpha1>(map['mysqlDatabases'], (value) => MysqlDatabaseDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

