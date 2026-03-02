// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_postgresql_excluded_objects_postgresql_schema.dart';

class StreamBackfillAllPostgresqlExcludedObjects {
  /// PostgreSQL schemas on the server
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema>> postgresqlSchemas;

  /// Creates a new [StreamBackfillAllPostgresqlExcludedObjects].
  /// [postgresqlSchemas] PostgreSQL schemas on the server
  StreamBackfillAllPostgresqlExcludedObjects({
    required this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postgresqlSchemas': pulumi.Input.mapInputValue<List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema>, List<Map<String, dynamic>>>(postgresqlSchemas, (value) => pulumi.Input.encodeList<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllPostgresqlExcludedObjects.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllPostgresqlExcludedObjects(
      postgresqlSchemas: (pulumi.Input.decodeList<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema>(map['postgresqlSchemas'], (value) => StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

