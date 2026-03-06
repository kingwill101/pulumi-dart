// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_postgresql_source_config_include_objects_postgresql_schema_postgresql_table.dart';

class StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable>>? postgresqlTables;
  /// Database name.
  final pulumi.Input<String> schema;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Database name.
  const StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlTables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable>, List<Map<String, dynamic>>>(postgresqlTables, (value) => pulumi.Input.encodeList<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': schema,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchema(
      postgresqlTables: (() { final guardedValue = map['postgresqlTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable>(guardedValue, (value) => StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}

