// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiOpenaiApiKeysSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGenaiOpenaiApiKeysSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGenaiOpenaiApiKeysSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGenaiOpenaiApiKeysSort.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeysSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

