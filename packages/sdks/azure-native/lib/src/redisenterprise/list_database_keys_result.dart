// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDatabaseKeys.
class ListDatabaseKeysResult {
  /// The current primary key that clients can use to authenticate
  final String primaryKey;
  /// The current secondary key that clients can use to authenticate
  final String secondaryKey;

  /// Creates a new [ListDatabaseKeysResult].
  /// [primaryKey] The current primary key that clients can use to authenticate
  /// [secondaryKey] The current secondary key that clients can use to authenticate
  const ListDatabaseKeysResult({
    required this.primaryKey,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': primaryKey,
      'secondaryKey': secondaryKey,
    };
  }

  factory ListDatabaseKeysResult.fromMap(Map<String, dynamic> map) {
    return ListDatabaseKeysResult(
      primaryKey: map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}

