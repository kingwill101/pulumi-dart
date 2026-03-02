// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_oracle_excluded_objects_oracle_schema_oracle_table.dart';

class StreamBackfillAllOracleExcludedObjectsOracleSchema {
  /// Tables in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable>>? oracleTables;
  /// Schema name.
  final pulumi.Input<String> schema;

  /// Creates a new [StreamBackfillAllOracleExcludedObjectsOracleSchema].
  /// [oracleTables] Tables in the database.
  /// [schema] Schema name.
  StreamBackfillAllOracleExcludedObjectsOracleSchema({
    this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable>, List<Map<String, dynamic>>>(oracleTables, (value) => pulumi.Input.encodeList<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': schema,
    };
  }

  factory StreamBackfillAllOracleExcludedObjectsOracleSchema.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllOracleExcludedObjectsOracleSchema(
      oracleTables: map['oracleTables'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable>(map['oracleTables'], (value) => StreamBackfillAllOracleExcludedObjectsOracleSchemaOracleTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: (map['schema'] as String).input(),
    );
  }
}

