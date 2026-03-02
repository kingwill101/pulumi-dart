// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_spanner_excluded_objects_schema_table.dart';

class StreamBackfillAllSpannerExcludedObjectsSchema {
  /// Schema name.
  final pulumi.Input<String> schema;
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllSpannerExcludedObjectsSchemaTable>>? tables;

  /// Creates a new [StreamBackfillAllSpannerExcludedObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamBackfillAllSpannerExcludedObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllSpannerExcludedObjectsSchemaTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<StreamBackfillAllSpannerExcludedObjectsSchemaTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllSpannerExcludedObjectsSchema.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjectsSchema(
      schema: (map['schema'] as String).input(),
      tables: map['tables'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllSpannerExcludedObjectsSchemaTable>(map['tables']!, (value) => StreamBackfillAllSpannerExcludedObjectsSchemaTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

