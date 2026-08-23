// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column.dart';

/// Oracle table.
class OracleTable {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final pulumi.Input<List<OracleColumn>>? oracleColumns;
  /// Table name.
  final pulumi.Input<String>? table;

  /// Creates a new [OracleTable].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const OracleTable({
    this.oracleColumns,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': ?pulumi.Input.mapOptionalInputValue<List<OracleColumn>, List<Map<String, dynamic>>>(oracleColumns, (value) => pulumi.Input.encodeList<OracleColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': ?table,
    };
  }

  factory OracleTable.fromMap(Map<String, dynamic> map) {
    return OracleTable(
      oracleColumns: (() { final guardedValue = map['oracleColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OracleColumn>(guardedValue, (value) => OracleColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
