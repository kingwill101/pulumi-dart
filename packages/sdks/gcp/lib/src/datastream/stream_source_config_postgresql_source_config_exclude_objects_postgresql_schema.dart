// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema_postgresql_table.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>>? postgresqlTables;
  /// Database name.
  final pulumi.Input<String> schema;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Database name.
  const StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlTables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>, List<Map<String, dynamic>>>(postgresqlTables, (value) => pulumi.Input.encodeList<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': schema,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema(
      postgresqlTables: (() { final guardedValue = map['postgresqlTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable>(guardedValue, (value) => StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchemaPostgresqlTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
