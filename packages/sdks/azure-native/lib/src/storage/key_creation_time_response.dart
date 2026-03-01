// ignore_for_file: unused_element, unnecessary_cast


/// Storage account keys creation time.
class KeyCreationTimeResponse {
  final String? key1;
  final String? key2;

  /// Creates a new [KeyCreationTimeResponse].
  /// [key1] Optional.
  /// [key2] Optional.
  KeyCreationTimeResponse({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory KeyCreationTimeResponse.fromMap(Map<String, dynamic> map) {
    return KeyCreationTimeResponse(
      key1: map['key1'] == null ? null : map['key1'] as String,
      key2: map['key2'] == null ? null : map['key2'] as String,
    );
  }
}

