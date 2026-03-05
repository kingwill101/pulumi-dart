// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_column_response.dart';

/// MySQL table.
class MysqlTableResponse {
  /// MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  final pulumi.Input<List<MysqlColumnResponse>> mysqlColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [MysqlTableResponse].
  /// [mysqlColumns] MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  MysqlTableResponse({
    required this.mysqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns': pulumi.Input.mapInputValue<List<MysqlColumnResponse>, List<Map<String, dynamic>>>(mysqlColumns, (value) => pulumi.Input.encodeList<MysqlColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory MysqlTableResponse.fromMap(Map<String, dynamic> map) {
    return MysqlTableResponse(
      mysqlColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<MysqlColumnResponse>(map['mysqlColumns']!, (value) => MysqlColumnResponse.fromMap((value as Map).cast<String, dynamic>()))),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}

