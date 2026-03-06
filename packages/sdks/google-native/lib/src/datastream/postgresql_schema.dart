// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'postgresql_table.dart';

/// PostgreSQL schema.
class PostgresqlSchema {
  /// Tables in the schema.
  final pulumi.Input<List<PostgresqlTable>>? postgresqlTables;
  /// Schema name.
  final pulumi.Input<String>? schema;

  /// Creates a new [PostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Schema name.
  const PostgresqlSchema({
    this.postgresqlTables,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlTables': ?pulumi.Input.mapOptionalInputValue<List<PostgresqlTable>, List<Map<String, dynamic>>>(postgresqlTables, (value) => pulumi.Input.encodeList<PostgresqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': ?schema,
    };
  }

  factory PostgresqlSchema.fromMap(Map<String, dynamic> map) {
    return PostgresqlSchema(
      postgresqlTables: (() { final guardedValue = map['postgresqlTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PostgresqlTable>(guardedValue, (value) => PostgresqlTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

