// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoCollectionIndex {
  /// Specifies the list of user settable keys for each Cosmos DB Mongo Collection.
  final pulumi.Input<List<String>> keys;
  /// Is the index unique or not? Defaults to `false`.
  ///
  /// &gt; **Note:** An index with an "_id" key must be specified.
  final pulumi.Input<bool>? unique;

  /// Creates a new [MongoCollectionIndex].
  /// [keys] Specifies the list of user settable keys for each Cosmos DB Mongo Collection.
  /// [unique] Is the index unique or not? Defaults to `false`.
  MongoCollectionIndex({
    required this.keys,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': keys,
      'unique': ?unique,
    };
  }

  factory MongoCollectionIndex.fromMap(Map<String, dynamic> map) {
    return MongoCollectionIndex(
      keys: pulumi.Input.fromValue((map['keys'] as List).cast<String>()),
      unique: (() { final guardedValue = map['unique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

