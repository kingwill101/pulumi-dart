// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_exclude_objects_database_collection.dart';

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase {
  /// Collections in the database.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection>>? collections;
  /// Database name.
  final pulumi.Input<String>? database;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase].
  /// [collections] Collections in the database.
  /// [database] Database name.
  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase({
    this.collections,
    this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection>, List<Map<String, dynamic>>>(collections, (value) => pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': ?database,
    };
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase(
      collections: (() { final guardedValue = map['collections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection>(guardedValue, (value) => StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

