// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_spanner_excluded_objects_schema.dart';

class StreamBackfillAllSpannerExcludedObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllSpannerExcludedObjectsSchema>> schemas;

  /// Creates a new [StreamBackfillAllSpannerExcludedObjects].
  /// [schemas] Spanner schemas in the database
  StreamBackfillAllSpannerExcludedObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemas': pulumi.Input.mapInputValue<List<StreamBackfillAllSpannerExcludedObjectsSchema>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<StreamBackfillAllSpannerExcludedObjectsSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllSpannerExcludedObjects.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjects(
      schemas: pulumi.Input.fromValue(pulumi.Input.decodeList<StreamBackfillAllSpannerExcludedObjectsSchema>(map['schemas']!, (value) => StreamBackfillAllSpannerExcludedObjectsSchema.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

