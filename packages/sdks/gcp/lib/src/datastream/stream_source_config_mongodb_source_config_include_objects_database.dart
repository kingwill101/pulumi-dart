// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_include_objects_database_collection.dart';

class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase {
  /// Collections in the database.
  /// Structure is documented below.
  final List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection>? collections;
  /// Database name.
  final String? database;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase].
  /// [collections] Collections in the database.
  /// [database] Database name.
  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase({
    this.collections,
    this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': ?collections == null ? null : pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection, Map<String, dynamic>>(collections!, (value) => value.toMap()),
      'database': ?database,
    };
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase(
      collections: map['collections'] == null ? null : pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection>(map['collections'], (value) => StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection.fromMap((value as Map).cast<String, dynamic>())),
      database: map['database'] == null ? null : map['database'] as String,
    );
  }
}

