// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_column_datastream_v1alpha1.dart';

/// MySQL table.
class MysqlTableDatastreamV1alpha1 {
  /// MySQL columns in the database. When unspecified as part of include/exclude lists, includes/excludes everything.
  final pulumi.Input<List<MysqlColumnDatastreamV1alpha1>>? mysqlColumns;
  /// Table name.
  final pulumi.Input<String>? tableName;

  /// Creates a new [MysqlTableDatastreamV1alpha1].
  /// [mysqlColumns] MySQL columns in the database. When unspecified as part of include/exclude lists, includes/excludes everything.
  /// [tableName] Table name.
  MysqlTableDatastreamV1alpha1({
    this.mysqlColumns,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns': ?pulumi.Input.mapOptionalInputValue<List<MysqlColumnDatastreamV1alpha1>, List<Map<String, dynamic>>>(mysqlColumns, (value) => pulumi.Input.encodeList<MysqlColumnDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': ?tableName,
    };
  }

  factory MysqlTableDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlTableDatastreamV1alpha1(
      mysqlColumns: map['mysqlColumns'] == null ? null : (pulumi.Input.decodeList<MysqlColumnDatastreamV1alpha1>(map['mysqlColumns'], (value) => MysqlColumnDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tableName: map['tableName'] == null ? null : (map['tableName'] as String).input(),
    );
  }
}

