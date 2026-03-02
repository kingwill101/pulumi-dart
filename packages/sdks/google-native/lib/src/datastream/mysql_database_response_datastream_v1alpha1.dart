// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_table_response_datastream_v1alpha1.dart';

/// MySQL database.
class MysqlDatabaseResponseDatastreamV1alpha1 {
  /// Database name.
  final pulumi.Input<String> databaseName;
  /// Tables in the database.
  final pulumi.Input<List<MysqlTableResponseDatastreamV1alpha1>> mysqlTables;

  /// Creates a new [MysqlDatabaseResponseDatastreamV1alpha1].
  /// [databaseName] Database name.
  /// [mysqlTables] Tables in the database.
  MysqlDatabaseResponseDatastreamV1alpha1({
    required this.databaseName,
    required this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'mysqlTables': pulumi.Input.mapInputValue<List<MysqlTableResponseDatastreamV1alpha1>, List<Map<String, dynamic>>>(mysqlTables, (value) => pulumi.Input.encodeList<MysqlTableResponseDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MysqlDatabaseResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlDatabaseResponseDatastreamV1alpha1(
      databaseName: (map['databaseName'] as String).input(),
      mysqlTables: (pulumi.Input.decodeList<MysqlTableResponseDatastreamV1alpha1>(map['mysqlTables'], (value) => MysqlTableResponseDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

