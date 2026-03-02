// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_include_objects_database_collection_field.dart';

class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection {
  /// Collection name.
  final pulumi.Input<String>? collection;
  /// Fields in the collection.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField>>? fields;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection].
  /// [collection] Collection name.
  /// [fields] Fields in the collection.
  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection({
    this.collection,
    this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection(
      collection: map['collection'] == null ? null : (map['collection']! as String).input(),
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField>(map['fields']!, (value) => StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

