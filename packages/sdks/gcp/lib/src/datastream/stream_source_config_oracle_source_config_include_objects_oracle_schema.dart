// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_include_objects_oracle_schema_oracle_table.dart';

class StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema {
  /// Tables in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable>>? oracleTables;
  /// Schema name.
  final pulumi.Input<String> schema;

  /// Creates a new [StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema].
  /// [oracleTables] Tables in the database.
  /// [schema] Schema name.
  StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema({
    this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable>, List<Map<String, dynamic>>>(oracleTables, (value) => pulumi.Input.encodeList<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': schema,
    };
  }

  factory StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema(
      oracleTables: map['oracleTables'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable>(map['oracleTables']!, (value) => StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: (map['schema'] as String).input(),
    );
  }
}

