// ignore_for_file: unused_element, unnecessary_cast


/// Key value tuple.
class KeyValueItemResponse {
  /// Key of tuple.
  final String key;
  /// Value of tuple.
  final String value;

  /// Creates a new [KeyValueItemResponse].
  /// [key] Key of tuple.
  /// [value] Value of tuple.
  KeyValueItemResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KeyValueItemResponse.fromMap(Map<String, dynamic> map) {
    return KeyValueItemResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

