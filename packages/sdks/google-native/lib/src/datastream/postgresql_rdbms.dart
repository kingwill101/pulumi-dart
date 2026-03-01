// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_schema.dart';

/// PostgreSQL database structure.
class PostgresqlRdbms {
  /// PostgreSQL schemas in the database server.
  final List<PostgresqlSchema>? postgresqlSchemas;

  /// Creates a new [PostgresqlRdbms].
  /// [postgresqlSchemas] PostgreSQL schemas in the database server.
  PostgresqlRdbms({
    this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlSchemas': ?postgresqlSchemas == null ? null : pulumi.Input.encodeList<PostgresqlSchema, Map<String, dynamic>>(postgresqlSchemas!, (value) => value.toMap()),
    };
  }

  factory PostgresqlRdbms.fromMap(Map<String, dynamic> map) {
    return PostgresqlRdbms(
      postgresqlSchemas: map['postgresqlSchemas'] == null ? null : pulumi.Input.decodeList<PostgresqlSchema>(map['postgresqlSchemas'], (value) => PostgresqlSchema.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

