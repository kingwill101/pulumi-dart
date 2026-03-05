// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPool.
class GetPoolResult {
  /// Full path to the pool.
  final String fullPath;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String partition;

  /// Creates a new [GetPoolResult].
  /// [fullPath] Full path to the pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [partition] Required.
  GetPoolResult({
    required this.fullPath,
    required this.id,
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullPath': fullPath,
      'id': id,
      'name': name,
      'partition': partition,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      fullPath: map['fullPath'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      partition: map['partition'] as String,
    );
  }
}
