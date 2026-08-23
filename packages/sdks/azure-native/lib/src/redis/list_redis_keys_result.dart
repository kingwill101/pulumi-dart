// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listRedisKeys.
class ListRedisKeysResult {
  /// The current primary key that clients can use to authenticate with Redis cache.
  final String primaryKey;
  /// The current secondary key that clients can use to authenticate with Redis cache.
  final String secondaryKey;

  /// Creates a new [ListRedisKeysResult].
  /// [primaryKey] The current primary key that clients can use to authenticate with Redis cache.
  /// [secondaryKey] The current secondary key that clients can use to authenticate with Redis cache.
  const ListRedisKeysResult({
    required this.primaryKey,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': primaryKey,
      'secondaryKey': secondaryKey,
    };
  }

  factory ListRedisKeysResult.fromMap(Map<String, dynamic> map) {
    return ListRedisKeysResult(
      primaryKey: map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}
