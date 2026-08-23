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
  const StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection({
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
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField>(guardedValue, (value) => StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
