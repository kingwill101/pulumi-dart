// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table_response.dart';

/// Oracle schema.
class OracleSchemaResponse {
  /// Tables in the schema.
  final pulumi.Input<List<OracleTableResponse>> oracleTables;

  /// Schema name.
  final pulumi.Input<String> schema;

  /// Creates a new [OracleSchemaResponse].
  /// [oracleTables] Tables in the schema.
  /// [schema] Schema name.
  OracleSchemaResponse({required this.oracleTables, required this.schema});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables':
          pulumi.Input.mapInputValue<
            List<OracleTableResponse>,
            List<Map<String, dynamic>>
          >(
            oracleTables,
            (value) =>
                pulumi.Input.encodeList<
                  OracleTableResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schema': schema,
    };
  }

  factory OracleSchemaResponse.fromMap(Map<String, dynamic> map) {
    return OracleSchemaResponse(
      oracleTables: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OracleTableResponse>(
          map['oracleTables']!,
          (value) => OracleTableResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
