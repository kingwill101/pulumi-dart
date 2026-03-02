// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_include_objects_schema_table.dart';

class StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema {
  /// Schema name.
  final pulumi.Input<String> schema;
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable>>? tables;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema(
      schema: (map['schema'] as String).input(),
      tables: map['tables'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable>(map['tables'], (value) => StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchemaTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

