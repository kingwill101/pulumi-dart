// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column_response.dart';

/// Oracle table.
class OracleTableResponse {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final pulumi.Input<List<OracleColumnResponse>> oracleColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [OracleTableResponse].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  OracleTableResponse({
    required this.oracleColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': pulumi.Input.mapInputValue<List<OracleColumnResponse>, List<Map<String, dynamic>>>(oracleColumns, (value) => pulumi.Input.encodeList<OracleColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory OracleTableResponse.fromMap(Map<String, dynamic> map) {
    return OracleTableResponse(
      oracleColumns: pulumi.Input.fromValue(pulumi.Input.decodeList<OracleColumnResponse>(map['oracleColumns']!, (value) => OracleColumnResponse.fromMap((value as Map).cast<String, dynamic>()))),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}

