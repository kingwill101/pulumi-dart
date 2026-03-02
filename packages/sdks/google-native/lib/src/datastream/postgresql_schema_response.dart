// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_table_response.dart';

/// PostgreSQL schema.
class PostgresqlSchemaResponse {
  /// Tables in the schema.
  final pulumi.Input<List<PostgresqlTableResponse>> postgresqlTables;
  /// Schema name.
  final pulumi.Input<String> schema;

  /// Creates a new [PostgresqlSchemaResponse].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Schema name.
  PostgresqlSchemaResponse({
    required this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlTables': pulumi.Input.mapInputValue<List<PostgresqlTableResponse>, List<Map<String, dynamic>>>(postgresqlTables, (value) => pulumi.Input.encodeList<PostgresqlTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': schema,
    };
  }

  factory PostgresqlSchemaResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlSchemaResponse(
      postgresqlTables: (pulumi.Input.decodeList<PostgresqlTableResponse>(map['postgresqlTables'], (value) => PostgresqlTableResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: (map['schema'] as String).input(),
    );
  }
}

