// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_schema_response.dart';

/// Oracle database structure.
class OracleRdbmsResponse {
  /// Oracle schemas/databases in the database server.
  final pulumi.Input<List<OracleSchemaResponse>> oracleSchemas;

  /// Creates a new [OracleRdbmsResponse].
  /// [oracleSchemas] Oracle schemas/databases in the database server.
  OracleRdbmsResponse({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleSchemas': pulumi.Input.mapInputValue<List<OracleSchemaResponse>, List<Map<String, dynamic>>>(oracleSchemas, (value) => pulumi.Input.encodeList<OracleSchemaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OracleRdbmsResponse.fromMap(Map<String, dynamic> map) {
    return OracleRdbmsResponse(
      oracleSchemas: pulumi.Input.fromValue(pulumi.Input.decodeList<OracleSchemaResponse>(map['oracleSchemas']!, (value) => OracleSchemaResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

