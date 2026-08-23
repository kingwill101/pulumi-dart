// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mongodb_excluded_objects_database.dart';

class StreamBackfillAllMongodbExcludedObjects {
  /// MongoDB databases in the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllMongodbExcludedObjectsDatabase>> databases;

  /// Creates a new [StreamBackfillAllMongodbExcludedObjects].
  /// [databases] MongoDB databases in the cluster.
  const StreamBackfillAllMongodbExcludedObjects({
    required this.databases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.mapInputValue<List<StreamBackfillAllMongodbExcludedObjectsDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<StreamBackfillAllMongodbExcludedObjectsDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamBackfillAllMongodbExcludedObjects.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMongodbExcludedObjects(
      databases: pulumi.Input.fromValue(pulumi.Input.decodeList<StreamBackfillAllMongodbExcludedObjectsDatabase>(map['databases']!, (value) => StreamBackfillAllMongodbExcludedObjectsDatabase.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
