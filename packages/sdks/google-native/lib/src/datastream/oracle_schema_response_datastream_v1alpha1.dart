// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table_response_datastream_v1alpha1.dart';

/// Oracle schema.
class OracleSchemaResponseDatastreamV1alpha1 {
  /// Tables in the schema.
  final pulumi.Input<List<OracleTableResponseDatastreamV1alpha1>> oracleTables;
  /// Schema name.
  final pulumi.Input<String> schemaName;

  /// Creates a new [OracleSchemaResponseDatastreamV1alpha1].
  /// [oracleTables] Tables in the schema.
  /// [schemaName] Schema name.
  const OracleSchemaResponseDatastreamV1alpha1({
    required this.oracleTables,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables': pulumi.Input.mapInputValue<List<OracleTableResponseDatastreamV1alpha1>, List<Map<String, dynamic>>>(oracleTables, (value) => pulumi.Input.encodeList<OracleTableResponseDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schemaName': schemaName,
    };
  }

  factory OracleSchemaResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleSchemaResponseDatastreamV1alpha1(
      oracleTables: pulumi.Input.fromValue(pulumi.Input.decodeList<OracleTableResponseDatastreamV1alpha1>(map['oracleTables']!, (value) => OracleTableResponseDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
    );
  }
}
