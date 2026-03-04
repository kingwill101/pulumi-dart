// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table.dart';

/// Oracle schema.
class OracleSchema {
  /// Tables in the schema.
  final pulumi.Input<List<OracleTable>>? oracleTables;

  /// Schema name.
  final pulumi.Input<String>? schema;

  /// Creates a new [OracleSchema].
  /// [oracleTables] Tables in the schema.
  /// [schema] Schema name.
  OracleSchema({this.oracleTables, this.schema});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<OracleTable>,
            List<Map<String, dynamic>>
          >(
            oracleTables,
            (value) =>
                pulumi.Input.encodeList<OracleTable, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'schema': ?schema,
    };
  }

  factory OracleSchema.fromMap(Map<String, dynamic> map) {
    return OracleSchema(
      oracleTables: (() {
        final guardedValue = map['oracleTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OracleTable>(
            guardedValue,
            (value) =>
                OracleTable.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
