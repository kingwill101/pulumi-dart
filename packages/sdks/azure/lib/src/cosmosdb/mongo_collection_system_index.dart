// ignore_for_file: unused_element, unnecessary_cast


class MongoCollectionSystemIndex {
  /// The list of system keys which are not settable for each Cosmos DB Mongo Collection.
  final List<String>? keys;
  /// Identifies whether the table contains no duplicate values.
  final bool? unique;

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
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
      unique: map['unique'] == null ? null : map['unique'] as bool,
    );
  }
}

