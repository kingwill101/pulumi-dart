// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mongodb_excluded_objects_database_collection_field.dart';

class StreamBackfillAllMongodbExcludedObjectsDatabaseCollection {
  /// Collection name.
  final pulumi.Input<String> collection;

  /// Fields in the collection.
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField>
  >?
  fields;

  /// Creates a new [StreamBackfillAllMongodbExcludedObjectsDatabaseCollection].
  /// [collection] Collection name.
  /// [fields] Fields in the collection.
  StreamBackfillAllMongodbExcludedObjectsDatabaseCollection({
    required this.collection,
    this.fields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'fields':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField
            >,
            List<Map<String, dynamic>>
          >(
            fields,
            (value) =>
                pulumi.Input.encodeList<
                  StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StreamBackfillAllMongodbExcludedObjectsDatabaseCollection.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamBackfillAllMongodbExcludedObjectsDatabaseCollection(
      collection: pulumi.Input.fromValue(map['collection'] as String),
      fields: (() {
        final guardedValue = map['fields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField
          >(
            guardedValue,
            (value) =>
                StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
