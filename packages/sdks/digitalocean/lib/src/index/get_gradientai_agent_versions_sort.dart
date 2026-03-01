// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentVersionsSort {
  final String? direction;
  final String key;

  /// Creates a new [GetGradientaiAgentVersionsSort].
  /// [direction] Optional.
  /// [key] Required.
  GetGradientaiAgentVersionsSort({
    this.direction,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'key': key,
    };
  }

  factory GetGradientaiAgentVersionsSort.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsSort(
      direction: map['direction'] == null ? null : map['direction'] as String,
      key: map['key'] as String,
    );
  }
}

