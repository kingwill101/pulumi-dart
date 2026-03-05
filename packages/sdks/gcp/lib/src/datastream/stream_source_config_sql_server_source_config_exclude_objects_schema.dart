// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_exclude_objects_schema_table.dart';

class StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema {
  /// Schema name.
  final pulumi.Input<String> schema;
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable>>? tables;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema(
      schema: pulumi.Input.fromValue(map['schema'] as String),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable>(guardedValue, (value) => StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

