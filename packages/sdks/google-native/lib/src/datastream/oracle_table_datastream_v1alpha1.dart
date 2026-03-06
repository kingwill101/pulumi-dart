// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column_datastream_v1alpha1.dart';

/// Oracle table.
class OracleTableDatastreamV1alpha1 {
  /// Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  final pulumi.Input<List<OracleColumnDatastreamV1alpha1>>? oracleColumns;
  /// Table name.
  final pulumi.Input<String>? tableName;

  /// Creates a new [OracleTableDatastreamV1alpha1].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  /// [tableName] Table name.
  const OracleTableDatastreamV1alpha1({
    this.oracleColumns,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': ?pulumi.Input.mapOptionalInputValue<List<OracleColumnDatastreamV1alpha1>, List<Map<String, dynamic>>>(oracleColumns, (value) => pulumi.Input.encodeList<OracleColumnDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': ?tableName,
    };
  }

  factory OracleTableDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleTableDatastreamV1alpha1(
      oracleColumns: (() { final guardedValue = map['oracleColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OracleColumnDatastreamV1alpha1>(guardedValue, (value) => OracleColumnDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

