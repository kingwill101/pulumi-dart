// ignore_for_file: unused_element, unnecessary_cast


/// Redis cache access keys.
class RedisAccessKeysResponse {
  /// The current primary key that clients can use to authenticate with Redis cache.
  final String primaryKey;
  /// The current secondary key that clients can use to authenticate with Redis cache.
  final String secondaryKey;

  /// Creates a new [RedisAccessKeysResponse].
  /// [primaryKey] The current primary key that clients can use to authenticate with Redis cache.
  /// [secondaryKey] The current secondary key that clients can use to authenticate with Redis cache.
  RedisAccessKeysResponse({
    required this.primaryKey,
    required this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': primaryKey,
      'secondaryKey': secondaryKey,
    };
  }

  factory RedisAccessKeysResponse.fromMap(Map<String, dynamic> map) {
    return RedisAccessKeysResponse(
      primaryKey: map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] as String,
    );
  }
}

