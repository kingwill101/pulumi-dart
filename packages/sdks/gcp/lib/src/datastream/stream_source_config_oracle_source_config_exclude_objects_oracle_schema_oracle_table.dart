// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table_oracle_column.dart';

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn>>? oracleColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable({
    this.oracleColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn>, List<Map<String, dynamic>>>(oracleColumns, (value) => pulumi.Input.encodeList<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable(
      oracleColumns: map['oracleColumns'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn>(map['oracleColumns'], (value) => StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      table: (map['table'] as String).input(),
    );
  }
}

