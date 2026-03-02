// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_exclude_objects_database_collection_field.dart';

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection {
  /// Collection name.
  final pulumi.Input<String>? collection;
  /// Fields in the collection.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField>>? fields;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection].
  /// [collection] Collection name.
  /// [fields] Fields in the collection.
  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection({
    this.collection,
    this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection(
      collection: map['collection'] == null ? null : (map['collection']! as String).input(),
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField>(map['fields']!, (value) => StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

