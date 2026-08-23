// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_include_objects_database_collection.dart';

class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase {
  /// Collections in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection>>? collections;
  /// Database name.
  final pulumi.Input<String>? database;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase].
  /// [collections] Collections in the database.
  /// [database] Database name.
  const StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase({
    this.collections,
    this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection>, List<Map<String, dynamic>>>(collections, (value) => pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': ?database,
    };
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase(
      collections: (() { final guardedValue = map['collections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection>(guardedValue, (value) => StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
