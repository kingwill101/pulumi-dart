// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mongodb_excluded_objects_database_collection.dart';

class StreamBackfillAllMongodbExcludedObjectsDatabase {
  /// Collections in the database.
  /// Structure is documented below.
  final List<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection>? collections;
  /// Database name.
  final String database;

  /// Creates a new [StreamBackfillAllMongodbExcludedObjectsDatabase].
  /// [collections] Collections in the database.
  /// [database] Database name.
  StreamBackfillAllMongodbExcludedObjectsDatabase({
    this.collections,
    required this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': ?collections == null ? null : pulumi.Input.encodeList<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection, Map<String, dynamic>>(collections!, (value) => value.toMap()),
      'database': database,
    };
  }

  factory StreamBackfillAllMongodbExcludedObjectsDatabase.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMongodbExcludedObjectsDatabase(
      collections: map['collections'] == null ? null : pulumi.Input.decodeList<StreamBackfillAllMongodbExcludedObjectsDatabaseCollection>(map['collections'], (value) => StreamBackfillAllMongodbExcludedObjectsDatabaseCollection.fromMap((value as Map).cast<String, dynamic>())),
      database: map['database'] as String,
    );
  }
}

