// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mongodb_excluded_objects_database_collection.dart';

class StreamBackfillAllMongodbExcludedObjectsDatabase {
  /// Collections in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection>>? collections;
  /// Database name.
  final pulumi.Input<String> database;

  /// Creates a new [StreamBackfillAllMongodbExcludedObjectsDatabase].
  /// [collections] Collections in the database.
  /// [database] Database name.
  StreamBackfillAllMongodbExcludedObjectsDatabase({
    this.collections,
    required this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection>, List<Map<String, dynamic>>>(collections, (value) => pulumi.Input.encodeList<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': database,
    };
  }

  factory StreamBackfillAllMongodbExcludedObjectsDatabase.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMongodbExcludedObjectsDatabase(
      collections: (() { final guardedValue = map['collections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection>(guardedValue, (value) => StreamBackfillAllMongodbExcludedObjectsDatabaseCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: pulumi.Input.fromValue(map['database'] as String),
    );
  }
}

