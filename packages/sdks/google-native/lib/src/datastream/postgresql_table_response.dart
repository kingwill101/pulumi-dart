// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_column_response.dart';

/// PostgreSQL table.
class PostgresqlTableResponse {
  /// PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  final pulumi.Input<List<PostgresqlColumnResponse>> postgresqlColumns;

  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [PostgresqlTableResponse].
  /// [postgresqlColumns] PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  PostgresqlTableResponse({
    required this.postgresqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlColumns':
          pulumi.Input.mapInputValue<
            List<PostgresqlColumnResponse>,
            List<Map<String, dynamic>>
          >(
            postgresqlColumns,
            (value) =>
                pulumi.Input.encodeList<
                  PostgresqlColumnResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'table': table,
    };
  }

  factory PostgresqlTableResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlTableResponse(
      postgresqlColumns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PostgresqlColumnResponse>(
          map['postgresqlColumns']!,
          (value) => PostgresqlColumnResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
