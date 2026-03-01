// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyRing.
class GetKeyRingResult {
  /// The time at which this KeyRing was created.
  final String createTime;
  /// The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`.
  final String name;

  /// Creates a new [GetKeyRingResult].
  /// [createTime] The time at which this KeyRing was created.
  /// [name] The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`.
  GetKeyRingResult({
    required this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
    };
  }

  factory GetKeyRingResult.fromMap(Map<String, dynamic> map) {
    return GetKeyRingResult(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
    );
  }
}

