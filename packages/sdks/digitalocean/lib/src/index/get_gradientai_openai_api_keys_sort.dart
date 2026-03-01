// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiOpenaiApiKeysSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGradientaiOpenaiApiKeysSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGradientaiOpenaiApiKeysSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGradientaiOpenaiApiKeysSort.fromMap(Map<String, dynamic> map) {
    return GetGradientaiOpenaiApiKeysSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

