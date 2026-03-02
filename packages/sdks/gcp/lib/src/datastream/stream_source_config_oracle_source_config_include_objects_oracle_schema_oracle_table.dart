// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_include_objects_oracle_schema_oracle_table_oracle_column.dart';

class StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumn>>? oracleColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable({
    this.oracleColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumn>, List<Map<String, dynamic>>>(oracleColumns, (value) => pulumi.Input.encodeList<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTable(
      oracleColumns: map['oracleColumns'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumn>(map['oracleColumns']!, (value) => StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchemaOracleTableOracleColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      table: (map['table'] as String).input(),
    );
  }
}

