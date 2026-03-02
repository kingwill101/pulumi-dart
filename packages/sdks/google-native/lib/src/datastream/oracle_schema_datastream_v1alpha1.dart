// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table_datastream_v1alpha1.dart';

/// Oracle schema.
class OracleSchemaDatastreamV1alpha1 {
  /// Tables in the schema.
  final pulumi.Input<List<OracleTableDatastreamV1alpha1>>? oracleTables;
  /// Schema name.
  final pulumi.Input<String>? schemaName;

  /// Creates a new [OracleSchemaDatastreamV1alpha1].
  /// [oracleTables] Tables in the schema.
  /// [schemaName] Schema name.
  OracleSchemaDatastreamV1alpha1({
    this.oracleTables,
    this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables': ?pulumi.Input.mapOptionalInputValue<List<OracleTableDatastreamV1alpha1>, List<Map<String, dynamic>>>(oracleTables, (value) => pulumi.Input.encodeList<OracleTableDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaName': ?schemaName,
    };
  }

  factory OracleSchemaDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleSchemaDatastreamV1alpha1(
      oracleTables: map['oracleTables'] == null ? null : (pulumi.Input.decodeList<OracleTableDatastreamV1alpha1>(map['oracleTables']!, (value) => OracleTableDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schemaName: map['schemaName'] == null ? null : (map['schemaName']! as String).input(),
    );
  }
}

