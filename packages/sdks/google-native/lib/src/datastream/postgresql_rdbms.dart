// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_schema.dart';

/// PostgreSQL database structure.
class PostgresqlRdbms {
  /// PostgreSQL schemas in the database server.
  final pulumi.Input<List<PostgresqlSchema>>? postgresqlSchemas;

  /// Creates a new [PostgresqlRdbms].
  /// [postgresqlSchemas] PostgreSQL schemas in the database server.
  const PostgresqlRdbms({
    this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlSchemas': ?pulumi.Input.mapOptionalInputValue<List<PostgresqlSchema>, List<Map<String, dynamic>>>(postgresqlSchemas, (value) => pulumi.Input.encodeList<PostgresqlSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PostgresqlRdbms.fromMap(Map<String, dynamic> map) {
    return PostgresqlRdbms(
      postgresqlSchemas: (() { final guardedValue = map['postgresqlSchemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PostgresqlSchema>(guardedValue, (value) => PostgresqlSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

