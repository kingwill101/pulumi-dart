// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_oracle_excluded_objects_oracle_schema.dart';

class StreamBackfillAllOracleExcludedObjects {
  /// Oracle schemas/databases in the database server
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllOracleExcludedObjectsOracleSchema>> oracleSchemas;

  /// Creates a new [StreamBackfillAllOracleExcludedObjects].
  /// [oracleSchemas] Oracle schemas/databases in the database server
  StreamBackfillAllOracleExcludedObjects({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleSchemas': pulumi.Input.mapInputValue<List<StreamBackfillAllOracleExcludedObjectsOracleSchema>, List<Map<String, dynamic>>>(oracleSchemas, (value) => pulumi.Input.encodeList<StreamBackfillAllOracleExcludedObjectsOracleSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllOracleExcludedObjects.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllOracleExcludedObjects(
      oracleSchemas: (pulumi.Input.decodeList<StreamBackfillAllOracleExcludedObjectsOracleSchema>(map['oracleSchemas'], (value) => StreamBackfillAllOracleExcludedObjectsOracleSchema.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

