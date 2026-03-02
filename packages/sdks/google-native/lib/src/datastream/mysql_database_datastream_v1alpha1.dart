// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_table_datastream_v1alpha1.dart';

/// MySQL database.
class MysqlDatabaseDatastreamV1alpha1 {
  /// Database name.
  final pulumi.Input<String>? databaseName;
  /// Tables in the database.
  final pulumi.Input<List<MysqlTableDatastreamV1alpha1>>? mysqlTables;

  /// Creates a new [MysqlDatabaseDatastreamV1alpha1].
  /// [databaseName] Database name.
  /// [mysqlTables] Tables in the database.
  MysqlDatabaseDatastreamV1alpha1({
    this.databaseName,
    this.mysqlTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'mysqlTables': ?pulumi.Input.mapOptionalInputValue<List<MysqlTableDatastreamV1alpha1>, List<Map<String, dynamic>>>(mysqlTables, (value) => pulumi.Input.encodeList<MysqlTableDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MysqlDatabaseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlDatabaseDatastreamV1alpha1(
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      mysqlTables: map['mysqlTables'] == null ? null : (pulumi.Input.decodeList<MysqlTableDatastreamV1alpha1>(map['mysqlTables'], (value) => MysqlTableDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

