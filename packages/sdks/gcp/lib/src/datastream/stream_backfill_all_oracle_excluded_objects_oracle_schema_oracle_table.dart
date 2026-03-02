// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_oracle_excluded_objects_oracle_schema_oracle_table_oracle_column.dart';

class StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable {
  /// Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumn>>? oracleColumns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable({
    this.oracleColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumn>, List<Map<String, dynamic>>>(oracleColumns, (value) => pulumi.Input.encodeList<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable(
      oracleColumns: map['oracleColumns'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumn>(map['oracleColumns'], (value) => StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTableOracleColumn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      table: (map['table'] as String).input(),
    );
  }
}

