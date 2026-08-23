// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_schema_datastream_v1alpha1.dart';

/// Oracle database structure.
class OracleRdbmsDatastreamV1alpha1 {
  /// Oracle schemas/databases in the database server.
  final pulumi.Input<List<OracleSchemaDatastreamV1alpha1>>? oracleSchemas;

  /// Creates a new [OracleRdbmsDatastreamV1alpha1].
  /// [oracleSchemas] Oracle schemas/databases in the database server.
  const OracleRdbmsDatastreamV1alpha1({
    this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleSchemas': ?pulumi.Input.mapOptionalInputValue<List<OracleSchemaDatastreamV1alpha1>, List<Map<String, dynamic>>>(oracleSchemas, (value) => pulumi.Input.encodeList<OracleSchemaDatastreamV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OracleRdbmsDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleRdbmsDatastreamV1alpha1(
      oracleSchemas: (() { final guardedValue = map['oracleSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OracleSchemaDatastreamV1alpha1>(guardedValue, (value) => OracleSchemaDatastreamV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
