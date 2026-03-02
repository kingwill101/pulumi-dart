// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoCollectionSystemIndex {
  /// The list of system keys which are not settable for each Cosmos DB Mongo Collection.
  final pulumi.Input<List<String>>? keys;
  /// Identifies whether the table contains no duplicate values.
  final pulumi.Input<bool>? unique;

  /// Creates a new [MongoCollectionSystemIndex].
  /// [keys] The list of system keys which are not settable for each Cosmos DB Mongo Collection.
  /// [unique] Identifies whether the table contains no duplicate values.
  MongoCollectionSystemIndex({
    this.keys,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
      'unique': ?unique,
    };
  }

  factory MongoCollectionSystemIndex.fromMap(Map<String, dynamic> map) {
    return MongoCollectionSystemIndex(
      keys: map['keys'] == null ? null : ((map['keys']! as List).cast<String>()).input(),
      unique: map['unique'] == null ? null : (map['unique']! as bool).input(),
    );
  }
}

